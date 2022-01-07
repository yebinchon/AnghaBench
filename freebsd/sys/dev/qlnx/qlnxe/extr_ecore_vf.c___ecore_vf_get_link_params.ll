; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c___ecore_vf_get_link_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c___ecore_vf_get_link_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_mcp_link_params = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ecore_bulletin_content = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ecore_vf_get_link_params(%struct.ecore_mcp_link_params* %0, %struct.ecore_bulletin_content* %1) #0 {
  %3 = alloca %struct.ecore_mcp_link_params*, align 8
  %4 = alloca %struct.ecore_bulletin_content*, align 8
  store %struct.ecore_mcp_link_params* %0, %struct.ecore_mcp_link_params** %3, align 8
  store %struct.ecore_bulletin_content* %1, %struct.ecore_bulletin_content** %4, align 8
  %5 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %3, align 8
  %6 = call i32 @OSAL_MEMSET(%struct.ecore_mcp_link_params* %5, i32 0, i32 28)
  %7 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %8 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %3, align 8
  %11 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  %13 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %14 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %3, align 8
  %17 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %3, align 8
  %23 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %26 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %3, align 8
  %29 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %32 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %3, align 8
  %35 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %38 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %3, align 8
  %41 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %44 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %3, align 8
  %47 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_mcp_link_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
