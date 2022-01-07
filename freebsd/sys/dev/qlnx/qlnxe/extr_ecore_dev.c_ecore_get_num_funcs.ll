; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_get_num_funcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_get_num_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32, i8*, i8*, %struct.ecore_dev* }
%struct.ecore_dev = type { i32 }
%struct.ecore_ptt = type { i32 }

@MAX_NUM_PFS_K2 = common dso_local global i8* null, align 8
@MAX_NUM_PFS_BB = common dso_local global i8* null, align 8
@MISCS_REG_FUNCTION_HIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"FPGA: Limit number of PFs to 4 [would affect resource allocation, needed for IOV]\0A\00", align 1
@ECORE_MSG_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"PF [rel_id %d, abs_id %d] occupies index %d within the %d enabled functions on the engine\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_get_num_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_get_num_funcs(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_dev*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 4
  %17 = load %struct.ecore_dev*, %struct.ecore_dev** %16, align 8
  store %struct.ecore_dev* %17, %struct.ecore_dev** %11, align 8
  %18 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %19 = call i64 @ECORE_IS_AH(%struct.ecore_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** @MAX_NUM_PFS_K2, align 8
  br label %25

23:                                               ; preds = %2
  %24 = load i8*, i8** @MAX_NUM_PFS_BB, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i8* [ %22, %21 ], [ %24, %23 ]
  store i8* %26, i8** %5, align 8
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %28 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %29 = load i32, i32* @MISCS_REG_FUNCTION_HIDE, align 4
  %30 = call i32 @ecore_rd(%struct.ecore_hwfn* %27, %struct.ecore_ptt* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %93

34:                                               ; preds = %25
  %35 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %36 = call i64 @ECORE_IS_BB(%struct.ecore_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %40 = call i64 @ECORE_PATH_ID(%struct.ecore_hwfn* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %44 = call i32 @ECORE_IS_CMT(%struct.ecore_dev* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i8* null, i8** %5, align 8
  store i32 43690, i32* %9, align 4
  br label %48

47:                                               ; preds = %42, %38
  store i8* inttoptr (i64 1 to i8*), i8** %5, align 8
  store i32 21844, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %46
  br label %50

49:                                               ; preds = %34
  store i8* inttoptr (i64 1 to i8*), i8** %5, align 8
  store i32 65534, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, i32* %7, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %65, %50
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %55

68:                                               ; preds = %55
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %70 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 1, %71
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %89, %68
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i32, i32* %8, align 4
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %79

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %25
  %94 = load i8*, i8** %5, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %97 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %100 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.ecore_dev*, %struct.ecore_dev** %11, align 8
  %102 = call i64 @CHIP_REV_IS_FPGA(%struct.ecore_dev* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %106 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %105, i32 0, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %108 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %107, i32 0, i32 1
  store i32 4, i32* %108, align 4
  br label %109

109:                                              ; preds = %104, %93
  %110 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %111 = load i32, i32* @ECORE_MSG_PROBE, align 4
  %112 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %113 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %116 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %119 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %122 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %110, i32 %111, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i8* %114, i32 %117, i8* %120, i32 %123)
  ret void
}

declare dso_local i64 @ECORE_IS_AH(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i64 @ECORE_IS_BB(%struct.ecore_dev*) #1

declare dso_local i64 @ECORE_PATH_ID(%struct.ecore_hwfn*) #1

declare dso_local i32 @ECORE_IS_CMT(%struct.ecore_dev*) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(%struct.ecore_dev*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
