; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_qm_init_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_qm_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_qm_info, i32, i32, i32 }
%struct.ecore_qm_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_link_state = type { i32 }
%struct.ecore_qm_iids = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ecore_mcp_link_state }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_qm_init_pf(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_qm_info*, align 8
  %8 = alloca %struct.ecore_mcp_link_state*, align 8
  %9 = alloca %struct.ecore_qm_iids, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 0
  store %struct.ecore_qm_info* %11, %struct.ecore_qm_info** %7, align 8
  %12 = call i32 @OSAL_MEM_ZERO(%struct.ecore_qm_iids* %9, i32 12)
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %14 = call i32 @ecore_cxt_qm_iids(%struct.ecore_hwfn* %13, %struct.ecore_qm_iids* %9)
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.TYPE_4__* @ECORE_LEADING_HWFN(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.ecore_mcp_link_state* %21, %struct.ecore_mcp_link_state** %8, align 8
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %23 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %28 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %7, align 8
  %31 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.ecore_qm_iids, %struct.ecore_qm_iids* %9, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ecore_qm_iids, %struct.ecore_qm_iids* %9, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ecore_qm_iids, %struct.ecore_qm_iids* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %7, align 8
  %41 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %7, align 8
  %44 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %7, align 8
  %47 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %7, align 8
  %51 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %7, align 8
  %54 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %7, align 8
  %57 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %7, align 8
  %60 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %7, align 8
  %63 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %8, align 8
  %66 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %69 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %73 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ecore_qm_pf_rt_init(%struct.ecore_hwfn* %22, %struct.ecore_ptt* %23, i32 %26, i32 %29, i32 %32, i32 %33, i32 %35, i32 %37, i32 %39, i32 %42, i64 %49, i64 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %71, i32 %75)
  ret void
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_qm_iids*, i32) #1

declare dso_local i32 @ecore_cxt_qm_iids(%struct.ecore_hwfn*, %struct.ecore_qm_iids*) #1

declare dso_local %struct.TYPE_4__* @ECORE_LEADING_HWFN(i32) #1

declare dso_local i32 @ecore_qm_pf_rt_init(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
