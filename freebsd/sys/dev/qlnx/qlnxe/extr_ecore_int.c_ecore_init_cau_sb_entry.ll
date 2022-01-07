; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_init_cau_sb_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_init_cau_sb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_dev* }
%struct.ecore_dev = type { i64, i32, i32 }
%struct.cau_sb_entry = type { i32, i32 }

@CAU_SB_ENTRY_PF_NUMBER = common dso_local global i32 0, align 4
@CAU_SB_ENTRY_VF_NUMBER = common dso_local global i32 0, align 4
@CAU_SB_ENTRY_VF_VALID = common dso_local global i32 0, align 4
@CAU_SB_ENTRY_SB_TIMESET0 = common dso_local global i32 0, align 4
@CAU_SB_ENTRY_SB_TIMESET1 = common dso_local global i32 0, align 4
@CAU_HC_DISABLE_STATE = common dso_local global i32 0, align 4
@ECORE_COAL_MODE_ENABLE = common dso_local global i64 0, align 8
@CAU_HC_ENABLE_STATE = common dso_local global i32 0, align 4
@ECORE_CAU_DEF_RX_USECS = common dso_local global i32 0, align 4
@ECORE_CAU_DEF_TX_USECS = common dso_local global i32 0, align 4
@CAU_SB_ENTRY_TIMER_RES0 = common dso_local global i32 0, align 4
@CAU_SB_ENTRY_TIMER_RES1 = common dso_local global i32 0, align 4
@CAU_SB_ENTRY_STATE0 = common dso_local global i32 0, align 4
@CAU_SB_ENTRY_STATE1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_init_cau_sb_entry(%struct.ecore_hwfn* %0, %struct.cau_sb_entry* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.cau_sb_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.cau_sb_entry* %1, %struct.cau_sb_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = load %struct.ecore_dev*, %struct.ecore_dev** %15, align 8
  store %struct.ecore_dev* %16, %struct.ecore_dev** %11, align 8
  %17 = load %struct.cau_sb_entry*, %struct.cau_sb_entry** %7, align 8
  %18 = call i32 @OSAL_MEMSET(%struct.cau_sb_entry* %17, i32 0, i32 8)
  %19 = load %struct.cau_sb_entry*, %struct.cau_sb_entry** %7, align 8
  %20 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CAU_SB_ENTRY_PF_NUMBER, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @SET_FIELD(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.cau_sb_entry*, %struct.cau_sb_entry** %7, align 8
  %26 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CAU_SB_ENTRY_VF_NUMBER, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @SET_FIELD(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.cau_sb_entry*, %struct.cau_sb_entry** %7, align 8
  %32 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CAU_SB_ENTRY_VF_VALID, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @SET_FIELD(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.cau_sb_entry*, %struct.cau_sb_entry** %7, align 8
  %38 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CAU_SB_ENTRY_SB_TIMESET0, align 4
  %41 = call i32 @SET_FIELD(i32 %39, i32 %40, i32 127)
  %42 = load %struct.cau_sb_entry*, %struct.cau_sb_entry** %7, align 8
  %43 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CAU_SB_ENTRY_SB_TIMESET1, align 4
  %46 = call i32 @SET_FIELD(i32 %44, i32 %45, i32 127)
  %47 = load i32, i32* @CAU_HC_DISABLE_STATE, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %49 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ECORE_COAL_MODE_ENABLE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %5
  %54 = load i32, i32* @CAU_HC_ENABLE_STATE, align 4
  store i32 %54, i32* %12, align 4
  %55 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %56 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ECORE_CAU_DEF_RX_USECS, align 4
  %61 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %62 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %65 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ECORE_CAU_DEF_TX_USECS, align 4
  %70 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %71 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %5
  %74 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %75 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp sle i32 %76, 127
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  br label %87

79:                                               ; preds = %73
  %80 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %81 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp sle i32 %82, 255
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %13, align 4
  br label %86

85:                                               ; preds = %79
  store i32 2, i32* %13, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %78
  %88 = load %struct.cau_sb_entry*, %struct.cau_sb_entry** %7, align 8
  %89 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CAU_SB_ENTRY_TIMER_RES0, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @SET_FIELD(i32 %90, i32 %91, i32 %92)
  %94 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %95 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %96, 127
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  store i32 0, i32* %13, align 4
  br label %107

99:                                               ; preds = %87
  %100 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %101 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %102, 255
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 1, i32* %13, align 4
  br label %106

105:                                              ; preds = %99
  store i32 2, i32* %13, align 4
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106, %98
  %108 = load %struct.cau_sb_entry*, %struct.cau_sb_entry** %7, align 8
  %109 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CAU_SB_ENTRY_TIMER_RES1, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @SET_FIELD(i32 %110, i32 %111, i32 %112)
  %114 = load %struct.cau_sb_entry*, %struct.cau_sb_entry** %7, align 8
  %115 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CAU_SB_ENTRY_STATE0, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @SET_FIELD(i32 %116, i32 %117, i32 %118)
  %120 = load %struct.cau_sb_entry*, %struct.cau_sb_entry** %7, align 8
  %121 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CAU_SB_ENTRY_STATE1, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @SET_FIELD(i32 %122, i32 %123, i32 %124)
  ret void
}

declare dso_local i32 @OSAL_MEMSET(%struct.cau_sb_entry*, i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
