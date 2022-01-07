; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_sanity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_sanity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@OSAL_PAGE_SIZE = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"DMAE sanity [%s]: failed to allocate memory\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [95 x i8] c"DMAE sanity [%s]: src_addr={phys 0x%llx, virt %p}, dst_addr={phys 0x%llx, virt %p}, size 0x%x\0A\00", align 1
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"DMAE sanity [%s]: ecore_dmae_host2host() failed. rc = %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"DMAE sanity [%s]: addr={phys 0x%llx, virt %p}, read_val 0x%08x, expected_val 0x%08x\0A\00", align 1
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dmae_sanity(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @OSAL_PAGE_SIZE, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 2, %20
  %22 = call i8* @OSAL_DMA_ALLOC_COHERENT(i32 %19, i32* %11, i32 %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (%struct.ecore_hwfn*, i32, i8*, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %26, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %29, i32* %4, align 4
  br label %153

30:                                               ; preds = %3
  %31 = load i8*, i8** %12, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %13, align 8
  br label %33

33:                                               ; preds = %47, %30
  %34 = load i32*, i32** %13, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = icmp ult i32* %34, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i32*, i32** %13, align 8
  %43 = ptrtoint i32* %42 to i64
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %13, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %13, align 8
  br label %33

50:                                               ; preds = %33
  %51 = load i8*, i8** %12, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @OSAL_MEM_ZERO(i32* %55, i32 %56)
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %59 = load i32, i32* @ECORE_MSG_SP, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = load i8*, i8** %12, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %58, i32 %59, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i8* %60, i64 %62, i8* %63, i64 %67, i32* %72, i32 %73)
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %76 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = sdiv i32 %81, 4
  %83 = load i32, i32* @OSAL_NULL, align 4
  %84 = call i32 @ecore_dmae_host2host(%struct.ecore_hwfn* %75, %struct.ecore_ptt* %76, i32 %77, i32 %80, i32 %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @ECORE_SUCCESS, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %50
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (%struct.ecore_hwfn*, i32, i8*, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %89, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %90, i32 %91)
  br label %143

93:                                               ; preds = %50
  %94 = load i8*, i8** %12, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32* %98, i32** %13, align 8
  br label %99

99:                                               ; preds = %139, %93
  %100 = load i32*, i32** %13, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %8, align 4
  %104 = mul nsw i32 2, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = icmp ult i32* %100, %106
  br i1 %107, label %108, label %142

108:                                              ; preds = %99
  %109 = load i32*, i32** %13, align 8
  %110 = ptrtoint i32* %109 to i64
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* %8, align 4
  %113 = sub nsw i32 %111, %112
  store i32 %113, i32* %9, align 4
  %114 = load i32*, i32** %13, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %138

118:                                              ; preds = %108
  %119 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32*, i32** %13, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = bitcast i8* %123 to i32*
  %125 = ptrtoint i32* %122 to i64
  %126 = ptrtoint i32* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = add nsw i32 %121, %129
  %131 = sext i32 %130 to i64
  %132 = load i32*, i32** %13, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 (%struct.ecore_hwfn*, i32, i8*, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %119, i32 0, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i8* %120, i64 %131, i32* %132, i32 %134, i32 %135)
  %137 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %137, i32* %10, align 4
  br label %143

138:                                              ; preds = %108
  br label %139

139:                                              ; preds = %138
  %140 = load i32*, i32** %13, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %13, align 8
  br label %99

142:                                              ; preds = %99
  br label %143

143:                                              ; preds = %142, %118, %88
  %144 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %145 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %12, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %8, align 4
  %150 = mul nsw i32 2, %149
  %151 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %146, i8* %147, i32 %148, i32 %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %143, %25
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i8* @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i8*, ...) #1

declare dso_local i32 @OSAL_MEM_ZERO(i32*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i8*, i64, i8*, i64, i32*, i32) #1

declare dso_local i32 @ecore_dmae_host2host(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
