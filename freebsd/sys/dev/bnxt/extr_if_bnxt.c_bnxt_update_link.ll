; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_update_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_update_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.bnxt_link_info }
%struct.bnxt_link_info = type { i32, i64 }

@HWRM_PORT_PHY_QCFG_OUTPUT_LINK_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_softc*, i32)* @bnxt_update_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_update_link(%struct.bnxt_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_link_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %8, i32 0, i32 0
  store %struct.bnxt_link_info* %9, %struct.bnxt_link_info** %5, align 8
  %10 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %11 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %14 = call i32 @bnxt_hwrm_port_phy_qcfg(%struct.bnxt_softc* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %47

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %23 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HWRM_PORT_PHY_QCFG_OUTPUT_LINK_LINK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %29 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %33

30:                                               ; preds = %21
  %31 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %32 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %36 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %41 = call i32 @bnxt_report_link(%struct.bnxt_softc* %40)
  br label %42

42:                                               ; preds = %39, %33
  br label %46

43:                                               ; preds = %18
  %44 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %45 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %42
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @bnxt_hwrm_port_phy_qcfg(%struct.bnxt_softc*) #1

declare dso_local i32 @bnxt_report_link(%struct.bnxt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
