; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32, %struct.ecore_llh_info* }
%struct.ecore_llh_info = type { i32*, i64, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@MAX_NUM_PPFID = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ppfid_array[%d] = %hhd\0A\00", align 1
@NIG_REG_LLH_FUNC_FILTER_EN_SIZE = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_dev*)* @ecore_llh_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_llh_alloc(%struct.ecore_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_dev*, align 8
  %4 = alloca %struct.ecore_llh_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %3, align 8
  %7 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @OSAL_ZALLOC(%struct.ecore_dev* %7, i32 %8, i32 24)
  %10 = bitcast i8* %9 to %struct.ecore_llh_info*
  store %struct.ecore_llh_info* %10, %struct.ecore_llh_info** %4, align 8
  %11 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %12 = icmp ne %struct.ecore_llh_info* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %14, i32* %2, align 4
  br label %113

15:                                               ; preds = %1
  %16 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %17 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %17, i32 0, i32 1
  store %struct.ecore_llh_info* %16, %struct.ecore_llh_info** %18, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %52, %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MAX_NUM_PPFID, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %25 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %52

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %35 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %38 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %33, i32* %40, align 4
  %41 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %42 = load i32, i32* @ECORE_MSG_SP, align 4
  %43 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %44 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @DP_VERBOSE(%struct.ecore_dev* %41, i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %46)
  %48 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %49 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %32, %31
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %57 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = mul i64 %58, 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i8* @OSAL_ZALLOC(%struct.ecore_dev* %61, i32 %62, i32 %63)
  %65 = bitcast i8* %64 to i8**
  %66 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %67 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %66, i32 0, i32 2
  store i8** %65, i8*** %67, align 8
  %68 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %69 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %68, i32 0, i32 2
  %70 = load i8**, i8*** %69, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %55
  %73 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %73, i32* %2, align 4
  br label %113

74:                                               ; preds = %55
  %75 = load i32, i32* @NIG_REG_LLH_FUNC_FILTER_EN_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 1
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %108, %74
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %83 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %79
  %87 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i8* @OSAL_ZALLOC(%struct.ecore_dev* %87, i32 %88, i32 %89)
  %91 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %92 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %91, i32 0, i32 2
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %90, i8** %96, align 8
  %97 = load %struct.ecore_llh_info*, %struct.ecore_llh_info** %4, align 8
  %98 = getelementptr inbounds %struct.ecore_llh_info, %struct.ecore_llh_info* %97, i32 0, i32 2
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %86
  %106 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %106, i32* %2, align 4
  br label %113

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %79

111:                                              ; preds = %79
  %112 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %105, %72, %13
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i8* @OSAL_ZALLOC(%struct.ecore_dev*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_dev*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
