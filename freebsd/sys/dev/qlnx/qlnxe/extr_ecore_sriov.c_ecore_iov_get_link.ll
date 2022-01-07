; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_get_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_mcp_link_params = type { i32 }
%struct.ecore_mcp_link_state = type { i32 }
%struct.ecore_mcp_link_capabilities = type { i32 }
%struct.ecore_vf_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ecore_bulletin_content* }
%struct.ecore_bulletin_content = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_iov_get_link(%struct.ecore_hwfn* %0, i32 %1, %struct.ecore_mcp_link_params* %2, %struct.ecore_mcp_link_state* %3, %struct.ecore_mcp_link_capabilities* %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_mcp_link_params*, align 8
  %9 = alloca %struct.ecore_mcp_link_state*, align 8
  %10 = alloca %struct.ecore_mcp_link_capabilities*, align 8
  %11 = alloca %struct.ecore_vf_info*, align 8
  %12 = alloca %struct.ecore_bulletin_content*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ecore_mcp_link_params* %2, %struct.ecore_mcp_link_params** %8, align 8
  store %struct.ecore_mcp_link_state* %3, %struct.ecore_mcp_link_state** %9, align 8
  store %struct.ecore_mcp_link_capabilities* %4, %struct.ecore_mcp_link_capabilities** %10, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %13, i32 %14, i32 0)
  store %struct.ecore_vf_info* %15, %struct.ecore_vf_info** %11, align 8
  %16 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %17 = icmp ne %struct.ecore_vf_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %44

19:                                               ; preds = %5
  %20 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %21 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %22, align 8
  store %struct.ecore_bulletin_content* %23, %struct.ecore_bulletin_content** %12, align 8
  %24 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %25 = icmp ne %struct.ecore_mcp_link_params* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %28 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %29 = call i32 @__ecore_vf_get_link_params(%struct.ecore_mcp_link_params* %27, %struct.ecore_bulletin_content* %28)
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %32 = icmp ne %struct.ecore_mcp_link_state* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %35 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %36 = call i32 @__ecore_vf_get_link_state(%struct.ecore_mcp_link_state* %34, %struct.ecore_bulletin_content* %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.ecore_mcp_link_capabilities*, %struct.ecore_mcp_link_capabilities** %10, align 8
  %39 = icmp ne %struct.ecore_mcp_link_capabilities* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.ecore_mcp_link_capabilities*, %struct.ecore_mcp_link_capabilities** %10, align 8
  %42 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %43 = call i32 @__ecore_vf_get_link_caps(%struct.ecore_mcp_link_capabilities* %41, %struct.ecore_bulletin_content* %42)
  br label %44

44:                                               ; preds = %18, %40, %37
  ret void
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @__ecore_vf_get_link_params(%struct.ecore_mcp_link_params*, %struct.ecore_bulletin_content*) #1

declare dso_local i32 @__ecore_vf_get_link_state(%struct.ecore_mcp_link_state*, %struct.ecore_bulletin_content*) #1

declare dso_local i32 @__ecore_vf_get_link_caps(%struct.ecore_mcp_link_capabilities*, %struct.ecore_bulletin_content*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
