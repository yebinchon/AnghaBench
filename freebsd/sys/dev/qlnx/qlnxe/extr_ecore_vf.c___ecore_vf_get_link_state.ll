; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c___ecore_vf_get_link_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c___ecore_vf_get_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_mcp_link_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_bulletin_content = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ecore_vf_get_link_state(%struct.ecore_mcp_link_state* %0, %struct.ecore_bulletin_content* %1) #0 {
  %3 = alloca %struct.ecore_mcp_link_state*, align 8
  %4 = alloca %struct.ecore_bulletin_content*, align 8
  store %struct.ecore_mcp_link_state* %0, %struct.ecore_mcp_link_state** %3, align 8
  store %struct.ecore_bulletin_content* %1, %struct.ecore_bulletin_content** %4, align 8
  %5 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %6 = call i32 @OSAL_MEMSET(%struct.ecore_mcp_link_state* %5, i32 0, i32 48)
  %7 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %8 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %11 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %10, i32 0, i32 11
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %16 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %18 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %21 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %23 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %26 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %28 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %31 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %33 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %36 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %38 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %41 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %43 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %46 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %48 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %51 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %53 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %56 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %58 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %61 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %4, align 8
  %63 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %3, align 8
  %66 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  ret void
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_mcp_link_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
