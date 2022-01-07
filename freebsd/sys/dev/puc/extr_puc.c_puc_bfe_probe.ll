; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_puc.c_puc_bfe_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_puc.c_puc_bfe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puc_cfg = type { i64 }
%struct.puc_softc = type { %struct.puc_cfg*, i32 }

@PUC_PORT_1S = common dso_local global i64 0, align 8
@PUC_PORT_1P = common dso_local global i64 0, align 8
@EDOOFUS = common dso_local global i32 0, align 4
@PUC_CFG_GET_NPORTS = common dso_local global i32 0, align 4
@PUC_CFG_GET_DESC = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puc_bfe_probe(i32 %0, %struct.puc_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.puc_cfg*, align 8
  %6 = alloca %struct.puc_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.puc_cfg* %1, %struct.puc_cfg** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.puc_softc* @device_get_softc(i32 %9)
  store %struct.puc_softc* %10, %struct.puc_softc** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %13 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  %15 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %16 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %15, i32 0, i32 0
  store %struct.puc_cfg* %14, %struct.puc_cfg** %16, align 8
  %17 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  %18 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PUC_PORT_1S, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  %24 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PUC_PORT_1P, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @EDOOFUS, align 4
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %22
  %31 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %32 = load i32, i32* @PUC_CFG_GET_NPORTS, align 4
  %33 = call i32 @puc_config(%struct.puc_softc* %31, i32 %32, i32 0, i64* %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %30
  %39 = load %struct.puc_softc*, %struct.puc_softc** %6, align 8
  %40 = load i32, i32* @PUC_CFG_GET_DESC, align 4
  %41 = call i32 @puc_config(%struct.puc_softc* %39, i32 %40, i32 0, i64* %7)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %56

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = load i64, i64* %7, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @device_set_desc(i32 %50, i8* %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %44, %36, %28
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.puc_softc* @device_get_softc(i32) #1

declare dso_local i32 @puc_config(%struct.puc_softc*, i32, i32, i64*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
