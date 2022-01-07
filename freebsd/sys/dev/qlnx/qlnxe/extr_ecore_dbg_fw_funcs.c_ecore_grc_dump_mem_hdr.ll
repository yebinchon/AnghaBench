; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_mem_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_mem_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"Unexpected GRC Dump error: dumped memory size must be non-zero\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"grc_mem\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"?STORM_\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"packed\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32*, i32, i8*, i32, i32, i32, i32, i8*, i32, i8)* @ecore_grc_dump_mem_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_dump_mem_hdr(%struct.ecore_hwfn* %0, i32* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9, i8 signext %10) #0 {
  %12 = alloca %struct.ecore_hwfn*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [64 x i8], align 16
  %26 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  store i8 %10, i8* %22, align 1
  store i32 3, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %11
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %31 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %30, i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %11
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %23, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %23, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %19, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %23, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %23, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %24, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %23, align 4
  %51 = call i32 @ecore_dump_section_hdr(i32* %48, i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %24, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %24, align 4
  %54 = load i8*, i8** %15, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %85

56:                                               ; preds = %44
  %57 = load i32, i32* %21, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %61 = call i32 @OSAL_STRCPY(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i8, i8* %22, align 1
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  store i8 %62, i8* %63, align 16
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %66 = call i32 @OSAL_STRLEN(i8* %65)
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8*, i8** %15, align 8
  %70 = call i32 @OSAL_STRCPY(i8* %68, i8* %69)
  br label %75

71:                                               ; preds = %56
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @OSAL_STRCPY(i8* %72, i8* %73)
  br label %75

75:                                               ; preds = %71, %59
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %24, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %14, align 4
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %82 = call i32 @ecore_dump_str_param(i32* %79, i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* %24, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %24, align 4
  br label %97

85:                                               ; preds = %44
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @DWORDS_TO_BYTES(i32 %86)
  store i32 %87, i32* %26, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %24, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %26, align 4
  %94 = call i32 @ecore_dump_num_param(i32* %91, i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %24, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %24, align 4
  br label %97

97:                                               ; preds = %85, %75
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %24, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @ecore_dump_num_param(i32* %101, i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %24, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %97
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %24, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @ecore_dump_num_param(i32* %113, i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %24, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %24, align 4
  br label %119

119:                                              ; preds = %109, %97
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %24, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @ecore_dump_num_param(i32* %126, i32 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %129 = load i32, i32* %24, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %24, align 4
  br label %131

131:                                              ; preds = %122, %119
  %132 = load i32, i32* %21, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %136 = call i32 @OSAL_STRCPY(i8* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i8, i8* %22, align 1
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  store i8 %137, i8* %138, align 16
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %141 = call i32 @OSAL_STRLEN(i8* %140)
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  %144 = load i8*, i8** %20, align 8
  %145 = call i32 @OSAL_STRCPY(i8* %143, i8* %144)
  br label %150

146:                                              ; preds = %131
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %148 = load i8*, i8** %20, align 8
  %149 = call i32 @OSAL_STRCPY(i8* %147, i8* %148)
  br label %150

150:                                              ; preds = %146, %134
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* %24, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %14, align 4
  %156 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %157 = call i32 @ecore_dump_str_param(i32* %154, i32 %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %156)
  %158 = load i32, i32* %24, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %24, align 4
  %160 = load i32, i32* %24, align 4
  ret i32 %160
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_dump_section_hdr(i32*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_STRCPY(i8*, i8*) #1

declare dso_local i32 @OSAL_STRLEN(i8*) #1

declare dso_local i32 @ecore_dump_str_param(i32*, i32, i8*, i8*) #1

declare dso_local i32 @DWORDS_TO_BYTES(i32) #1

declare dso_local i32 @ecore_dump_num_param(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
