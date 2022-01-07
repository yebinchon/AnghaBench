; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_execute_vf_flr_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_execute_vf_flr_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"VF[%d] - Handling FLR\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed handle FLR of VF[%d]\0A\00", align 1
@GTT_BAR0_MAP_REG_USDM_RAM = common dso_local global i64 0, align 8
@VF_STOPPED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to re-enable VF[%d] acces\0A\00", align 1
@VF_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32*)* @ecore_iov_execute_vf_flr_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_execute_vf_flr_cleanup(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ecore_vf_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %14, i32 %15, i32 0)
  store %struct.ecore_vf_info* %16, %struct.ecore_vf_info** %10, align 8
  %17 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %18 = icmp ne %struct.ecore_vf_info* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %20, i32* %5, align 4
  br label %141

21:                                               ; preds = %4
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %27, 64
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = srem i32 %32, 64
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  %36 = and i64 %31, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %139

38:                                               ; preds = %21
  %39 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %40 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %43 = load i32, i32* @ECORE_MSG_IOV, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %42, i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %47 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %48 = call i32 @ecore_iov_vf_cleanup(%struct.ecore_hwfn* %46, %struct.ecore_vf_info* %47)
  %49 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %50 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  br label %98

54:                                               ; preds = %38
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %56 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %58 = call i32 @ecore_iov_vf_flr_poll(%struct.ecore_hwfn* %55, %struct.ecore_vf_info* %56, %struct.ecore_ptt* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @ECORE_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %98

63:                                               ; preds = %54
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %65 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @ecore_final_cleanup(%struct.ecore_hwfn* %64, %struct.ecore_ptt* %65, i32 %66, i32 1)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @DP_ERR(%struct.ecore_hwfn* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %141

75:                                               ; preds = %63
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %77 = load i64, i64* @GTT_BAR0_MAP_REG_USDM_RAM, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @USTORM_VF_PF_CHANNEL_READY_OFFSET(i32 %78)
  %80 = add nsw i64 %77, %79
  %81 = call i32 @REG_WR(%struct.ecore_hwfn* %76, i64 %80, i32 1)
  %82 = load i8*, i8** @VF_STOPPED, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %85 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %87 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %88 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %89 = call i32 @ecore_iov_enable_vf_access(%struct.ecore_hwfn* %86, %struct.ecore_ptt* %87, %struct.ecore_vf_info* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %75
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @DP_ERR(%struct.ecore_hwfn* %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %141

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97, %62, %53
  %99 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %100 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VF_RESET, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i8*, i8** @VF_STOPPED, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %108 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %104, %98
  %110 = load i32, i32* %12, align 4
  %111 = srem i32 %110, 32
  %112 = shl i32 1, %111
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sdiv i32 %114, 32
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %112
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %8, align 4
  %121 = srem i32 %120, 64
  %122 = zext i32 %121 to i64
  %123 = shl i64 1, %122
  %124 = xor i64 %123, -1
  %125 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %126 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sdiv i32 %130, 64
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = and i64 %134, %124
  store i64 %135, i64* %133, align 8
  %136 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %137 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %109, %21
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %92, %70, %19
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_iov_vf_cleanup(%struct.ecore_hwfn*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_flr_poll(%struct.ecore_hwfn*, %struct.ecore_vf_info*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_final_cleanup(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #1

declare dso_local i32 @REG_WR(%struct.ecore_hwfn*, i64, i32) #1

declare dso_local i64 @USTORM_VF_PF_CHANNEL_READY_OFFSET(i32) #1

declare dso_local i32 @ecore_iov_enable_vf_access(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
