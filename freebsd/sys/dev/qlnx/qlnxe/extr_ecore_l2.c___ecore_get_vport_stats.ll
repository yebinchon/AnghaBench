; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c___ecore_get_vport_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c___ecore_get_vport_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64, i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_eth_stats = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ecore_get_vport_stats(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_eth_stats* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca %struct.ecore_eth_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store %struct.ecore_eth_stats* %2, %struct.ecore_eth_stats** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %12 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %13 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @__ecore_get_vport_mstats(%struct.ecore_hwfn* %11, %struct.ecore_ptt* %12, %struct.ecore_eth_stats* %13, i32 %14)
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %18 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @__ecore_get_vport_ustats(%struct.ecore_hwfn* %16, %struct.ecore_ptt* %17, %struct.ecore_eth_stats* %18, i32 %19)
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %22 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %23 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %8, align 8
  %24 = call i32 @__ecore_get_vport_tstats(%struct.ecore_hwfn* %21, %struct.ecore_ptt* %22, %struct.ecore_eth_stats* %23)
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %26 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %27 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @__ecore_get_vport_pstats(%struct.ecore_hwfn* %25, %struct.ecore_ptt* %26, %struct.ecore_eth_stats* %27, i32 %28)
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @CHIP_REV_IS_EMUL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  br label %49

36:                                               ; preds = %5
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %41 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %46 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %47 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %8, align 8
  %48 = call i32 @__ecore_get_vport_port_stats(%struct.ecore_hwfn* %45, %struct.ecore_ptt* %46, %struct.ecore_eth_stats* %47)
  br label %49

49:                                               ; preds = %35, %44, %39, %36
  ret void
}

declare dso_local i32 @__ecore_get_vport_mstats(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_eth_stats*, i32) #1

declare dso_local i32 @__ecore_get_vport_ustats(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_eth_stats*, i32) #1

declare dso_local i32 @__ecore_get_vport_tstats(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_eth_stats*) #1

declare dso_local i32 @__ecore_get_vport_pstats(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_eth_stats*, i32) #1

declare dso_local i64 @CHIP_REV_IS_EMUL(i32) #1

declare dso_local i32 @__ecore_get_vport_port_stats(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_eth_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
