; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_probe_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_probe_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.bnxt_link_info }
%struct.bnxt_link_info = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Probe phy can't update link (rc: %x)\0A\00", align 1
@HWRM_PORT_PHY_QCFG_OUTPUT_AUTO_MODE_NONE = common dso_local global i64 0, align 8
@BNXT_AUTONEG_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_softc*)* @bnxt_probe_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_probe_phy(%struct.bnxt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.bnxt_link_info*, align 8
  %5 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  %6 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %6, i32 0, i32 1
  store %struct.bnxt_link_info* %7, %struct.bnxt_link_info** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %9 = call i32 @bnxt_update_link(%struct.bnxt_softc* %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %21 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_AUTO_MODE_NONE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %27 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %28 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %33 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %36 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %38 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %45 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %48 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  br label %55

49:                                               ; preds = %31
  %50 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %51 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %4, align 8
  %54 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @bnxt_update_link(%struct.bnxt_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
