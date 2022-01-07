; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_fan_failure_det_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_fan_failure_det_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i64 }

@ELINK_EXT_PHY1 = common dso_local global i64 0, align 8
@ELINK_MAX_PHYS = common dso_local global i64 0, align 8
@ELINK_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"populate phy failed\0A\00", align 1
@ELINK_FLAGS_FAN_FAILURE_DET_REQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @elink_fan_failure_det_req(%struct.bxe_softc* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.elink_phy, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load i64, i64* @ELINK_EXT_PHY1, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %37, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @ELINK_MAX_PHYS, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @elink_populate_phy(%struct.bxe_softc* %19, i64 %20, i32 %21, i32 %22, i64 %23, %struct.elink_phy* %12)
  %25 = load i64, i64* @ELINK_STATUS_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %29 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %42

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ELINK_FLAGS_FAN_FAILURE_DET_REQ, align 8
  %34 = and i64 %32, %33
  %35 = load i64, i64* %11, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %10, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %10, align 8
  br label %14

40:                                               ; preds = %14
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %40, %27
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i64 @elink_populate_phy(%struct.bxe_softc*, i64, i32, i32, i64, %struct.elink_phy*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
