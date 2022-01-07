; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_cnprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_cnprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_opal_softc = type { i32, i32 }
%struct.consdev = type { i32, %struct.uart_opal_softc* }

@uart_opal_cnprobe.sc = internal global %struct.uart_opal_softc zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"linux,stdout-path\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"uart_opal\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@MTX_QUIET = common dso_local global i32 0, align 4
@MTX_NOWITNESS = common dso_local global i32 0, align 4
@CN_NORMAL = common dso_local global i32 0, align 4
@console_sc = common dso_local global %struct.uart_opal_softc* null, align 8
@stdout_cp = common dso_local global %struct.consdev* null, align 8
@CN_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @uart_opal_cnprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_opal_cnprobe(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %6 = call i64 (...) @opal_check()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %44

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %16 = call i64 @OF_getprop(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 64)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %44

19:                                               ; preds = %13
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %21 = call i32 @OF_finddevice(i8* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %44

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.uart_opal_softc, %struct.uart_opal_softc* @uart_opal_cnprobe.sc, i32 0, i32 0), align 4
  %27 = call i64 @uart_opal_probe_node(%struct.uart_opal_softc* @uart_opal_cnprobe.sc)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %44

30:                                               ; preds = %25
  %31 = load i32, i32* @MTX_SPIN, align 4
  %32 = load i32, i32* @MTX_QUIET, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MTX_NOWITNESS, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.uart_opal_softc, %struct.uart_opal_softc* @uart_opal_cnprobe.sc, i32 0, i32 1), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %35)
  %37 = load i32, i32* @CN_NORMAL, align 4
  %38 = load %struct.consdev*, %struct.consdev** %2, align 8
  %39 = getelementptr inbounds %struct.consdev, %struct.consdev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store %struct.uart_opal_softc* @uart_opal_cnprobe.sc, %struct.uart_opal_softc** @console_sc, align 8
  %40 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** @console_sc, align 8
  %41 = load %struct.consdev*, %struct.consdev** %2, align 8
  %42 = getelementptr inbounds %struct.consdev, %struct.consdev* %41, i32 0, i32 1
  store %struct.uart_opal_softc* %40, %struct.uart_opal_softc** %42, align 8
  %43 = load %struct.consdev*, %struct.consdev** %2, align 8
  store %struct.consdev* %43, %struct.consdev** @stdout_cp, align 8
  br label %48

44:                                               ; preds = %29, %24, %18, %12, %8
  %45 = load i32, i32* @CN_DEAD, align 4
  %46 = load %struct.consdev*, %struct.consdev** %2, align 8
  %47 = getelementptr inbounds %struct.consdev, %struct.consdev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %30
  ret void
}

declare dso_local i64 @opal_check(...) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @uart_opal_probe_node(%struct.uart_opal_softc*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
