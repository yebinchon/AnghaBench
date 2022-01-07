; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_inform_vf_link_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_inform_vf_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ecore_mcp_link_capabilities = type { i32, i32 }
%struct.ecore_mcp_link_params = type { i32, i32 }
%struct.ecore_mcp_link_state = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"called\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"link [%d] = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.TYPE_8__*)* @qlnx_inform_vf_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_inform_vf_link_state(%struct.ecore_hwfn* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.ecore_mcp_link_capabilities, align 4
  %6 = alloca %struct.ecore_mcp_link_params, align 4
  %7 = alloca %struct.ecore_mcp_link_state, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %81

14:                                               ; preds = %2
  %15 = bitcast %struct.ecore_mcp_link_params* %6 to %struct.ecore_mcp_link_state*
  %16 = call i32 @memset(%struct.ecore_mcp_link_state* %15, i32 0, i32 8)
  %17 = call i32 @memset(%struct.ecore_mcp_link_state* %7, i32 0, i32 8)
  %18 = bitcast %struct.ecore_mcp_link_capabilities* %5 to %struct.ecore_mcp_link_state*
  %19 = call i32 @memset(%struct.ecore_mcp_link_state* %18, i32 0, i32 8)
  %20 = bitcast %struct.ecore_mcp_link_capabilities* %5 to %struct.ecore_mcp_link_state*
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %22 = call i32 @ecore_mcp_get_link_capabilities(%struct.ecore_hwfn* %21)
  %23 = call i32 @memcpy(%struct.ecore_mcp_link_state* %20, i32 %22, i32 8)
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %25 = call i32 @ecore_mcp_get_link_state(%struct.ecore_hwfn* %24)
  %26 = call i32 @memcpy(%struct.ecore_mcp_link_state* %7, i32 %25, i32 8)
  %27 = bitcast %struct.ecore_mcp_link_params* %6 to %struct.ecore_mcp_link_state*
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %29 = call i32 @ecore_mcp_get_link_params(%struct.ecore_hwfn* %28)
  %30 = call i32 @memcpy(%struct.ecore_mcp_link_state* %27, i32 %29, i32 8)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT2(%struct.TYPE_8__* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %75, %14
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %36 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %34, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %7, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %7, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %61

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  br label %61

61:                                               ; preds = %58, %57
  %62 = phi i32 [ 100000, %57 ], [ %60, %58 ]
  %63 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %7, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %43
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT2(%struct.TYPE_8__* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %68)
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = bitcast %struct.ecore_mcp_link_params* %6 to %struct.ecore_mcp_link_state*
  %73 = bitcast %struct.ecore_mcp_link_capabilities* %5 to %struct.ecore_mcp_link_state*
  %74 = call i32 @ecore_iov_set_link(%struct.ecore_hwfn* %70, i32 %71, %struct.ecore_mcp_link_state* %72, %struct.ecore_mcp_link_state* %7, %struct.ecore_mcp_link_state* %73)
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %33

78:                                               ; preds = %33
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %80 = call i32 @qlnx_vf_bulleting_update(%struct.ecore_hwfn* %79)
  br label %81

81:                                               ; preds = %78, %13
  ret void
}

declare dso_local i32 @memset(%struct.ecore_mcp_link_state*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ecore_mcp_link_state*, i32, i32) #1

declare dso_local i32 @ecore_mcp_get_link_capabilities(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_get_link_state(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_get_link_params(%struct.ecore_hwfn*) #1

declare dso_local i32 @QL_DPRINT2(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @ecore_iov_set_link(%struct.ecore_hwfn*, i32, %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state*) #1

declare dso_local i32 @qlnx_vf_bulleting_update(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
