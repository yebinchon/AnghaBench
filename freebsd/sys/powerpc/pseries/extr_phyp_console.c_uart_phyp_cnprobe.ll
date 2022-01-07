; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_console.c_uart_phyp_cnprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_console.c_uart_phyp_cnprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_phyp_softc = type { i32, i32 }
%struct.consdev = type { i32 }

@uart_phyp_cnprobe.sc = internal global %struct.uart_phyp_softc zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"uart_phyp\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@MTX_QUIET = common dso_local global i32 0, align 4
@MTX_NOWITNESS = common dso_local global i32 0, align 4
@CN_NORMAL = common dso_local global i32 0, align 4
@console_sc = common dso_local global %struct.uart_phyp_softc* null, align 8
@CN_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @uart_phyp_cnprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_phyp_cnprobe(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %7 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %6, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %51

10:                                               ; preds = %1
  store i32 -1, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @OF_getencprop(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %4, i32 8)
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @OF_instance_to_package(i64 %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %15, %10
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %51

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %28 = call i32 @OF_getprop(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %27, i32 64)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %51

31:                                               ; preds = %25
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %51

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.uart_phyp_softc, %struct.uart_phyp_softc* @uart_phyp_cnprobe.sc, i32 0, i32 0), align 4
  %38 = call i64 @uart_phyp_probe_node(%struct.uart_phyp_softc* @uart_phyp_cnprobe.sc)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %51

41:                                               ; preds = %36
  %42 = load i32, i32* @MTX_SPIN, align 4
  %43 = load i32, i32* @MTX_QUIET, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MTX_NOWITNESS, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.uart_phyp_softc, %struct.uart_phyp_softc* @uart_phyp_cnprobe.sc, i32 0, i32 1), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %46)
  %48 = load i32, i32* @CN_NORMAL, align 4
  %49 = load %struct.consdev*, %struct.consdev** %2, align 8
  %50 = getelementptr inbounds %struct.consdev, %struct.consdev* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store %struct.uart_phyp_softc* @uart_phyp_cnprobe.sc, %struct.uart_phyp_softc** @console_sc, align 8
  br label %55

51:                                               ; preds = %40, %35, %30, %24, %9
  %52 = load i32, i32* @CN_DEAD, align 4
  %53 = load %struct.consdev*, %struct.consdev** %2, align 8
  %54 = getelementptr inbounds %struct.consdev, %struct.consdev* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %41
  ret void
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @OF_instance_to_package(i64) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @uart_phyp_probe_node(%struct.uart_phyp_softc*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
