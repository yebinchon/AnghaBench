; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_bfe_quicc.c_scc_quicc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_bfe_quicc.c_scc_quicc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_softc = type { i32* }

@QUICC_IVAR_DEVTYPE = common dso_local global i32 0, align 4
@QUICC_DEVTYPE_SCC = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"QUICC quad channel SCC\00", align 1
@scc_quicc_class = common dso_local global i32 0, align 4
@QUICC_IVAR_BRGCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @scc_quicc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_quicc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.scc_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @QUICC_IVAR_DEVTYPE, align 4
  %14 = call i32 @BUS_READ_IVAR(i32 %11, i32 %12, i32 %13, i64* %6)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @QUICC_DEVTYPE_SCC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %42

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_set_desc(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %3, align 4
  %29 = call %struct.scc_softc* @device_get_softc(i32 %28)
  store %struct.scc_softc* %29, %struct.scc_softc** %5, align 8
  %30 = load %struct.scc_softc*, %struct.scc_softc** %5, align 8
  %31 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %30, i32 0, i32 0
  store i32* @scc_quicc_class, i32** %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @QUICC_IVAR_BRGCLK, align 4
  %35 = call i32 @BUS_READ_IVAR(i32 %32, i32 %33, i32 %34, i64* %7)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i32, i32* %3, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @scc_bfe_probe(i32 %39, i32 0, i64 %40, i32 0)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %23, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @BUS_READ_IVAR(i32, i32, i32, i64*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local %struct.scc_softc* @device_get_softc(i32) #1

declare dso_local i32 @scc_bfe_probe(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
