; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_set_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_mcp_link_params = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ecore_mcp_link_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_mcp_link_capabilities = type { i32 }
%struct.ecore_vf_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ecore_bulletin_content* }
%struct.ecore_bulletin_content = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_iov_set_link(%struct.ecore_hwfn* %0, i32 %1, %struct.ecore_mcp_link_params* %2, %struct.ecore_mcp_link_state* %3, %struct.ecore_mcp_link_capabilities* %4) #0 {
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
  br label %130

19:                                               ; preds = %5
  %20 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %21 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %22, align 8
  store %struct.ecore_bulletin_content* %23, %struct.ecore_bulletin_content** %12, align 8
  %24 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %25 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %29 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %28, i32 0, i32 19
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %31 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %35 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %34, i32 0, i32 18
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %37 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %41 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %40, i32 0, i32 17
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %43 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %47 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %46, i32 0, i32 16
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %49 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %53 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %52, i32 0, i32 15
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %55 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %59 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %58, i32 0, i32 14
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %61 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %64 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %66 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %69 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %68, i32 0, i32 12
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %71 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %74 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %73, i32 0, i32 11
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %76 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %79 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %81 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %84 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %86 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %89 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %91 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %94 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %96 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %99 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %101 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %104 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %106 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %109 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %111 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %114 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %116 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %119 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %9, align 8
  %121 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %124 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ecore_mcp_link_capabilities*, %struct.ecore_mcp_link_capabilities** %10, align 8
  %126 = getelementptr inbounds %struct.ecore_mcp_link_capabilities, %struct.ecore_mcp_link_capabilities* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %12, align 8
  %129 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %19, %18
  ret void
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
