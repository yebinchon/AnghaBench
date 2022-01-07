; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_gen_role_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_gen_role_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRLI_WD3_ENHANCED_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"EDisc\00", align 1
@PRLI_WD3_REC_SUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"REC\00", align 1
@PRLI_WD3_TASK_RETRY_IDENTIFICATION_REQUESTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"RetryID\00", align 1
@PRLI_WD3_RETRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Retry\00", align 1
@PRLI_WD3_CONFIRMED_COMPLETION_ALLOWED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"CNFRM\00", align 1
@PRLI_WD3_DATA_OVERLAY_ALLOWED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"DOver\00", align 1
@PRLI_WD3_INITIATOR_FUNCTION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"INI\00", align 1
@PRLI_WD3_TARGET_FUNCTION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"TGT\00", align 1
@PRLI_WD3_READ_FCP_XFER_RDY_DISABLED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"RdXfrDis\00", align 1
@PRLI_WD3_WRITE_FCP_XFER_RDY_DISABLED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"XfrDis\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_gen_role_str(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 40, i8* %9, align 1
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 0, i8* %11, align 1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PRLI_WD3_ENHANCED_DISCOVERY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @strlcat(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %16, %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PRLI_WD3_REC_SUPPORT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @strlcat(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @strlcat(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %35, %22
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PRLI_WD3_TASK_RETRY_IDENTIFICATION_REQUESTED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @strlcat(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @strlcat(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %52, %39
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @PRLI_WD3_RETRY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @strlcat(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @strlcat(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %69, %56
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @PRLI_WD3_CONFIRMED_COMPLETION_ALLOWED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = icmp ne i32 %79, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @strlcat(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i8*, i8** %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @strlcat(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %86, %73
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @PRLI_WD3_DATA_OVERLAY_ALLOWED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  %98 = icmp ne i32 %96, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8*, i8** %4, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @strlcat(i8* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i8*, i8** %4, align 8
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @strlcat(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %105)
  br label %107

107:                                              ; preds = %103, %90
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @PRLI_WD3_INITIATOR_FUNCTION, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  %115 = icmp ne i32 %113, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i8*, i8** %4, align 8
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @strlcat(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %116, %112
  %121 = load i8*, i8** %4, align 8
  %122 = load i64, i64* %5, align 8
  %123 = call i32 @strlcat(i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %120, %107
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @PRLI_WD3_TARGET_FUNCTION, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  %132 = icmp ne i32 %130, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i8*, i8** %4, align 8
  %135 = load i64, i64* %5, align 8
  %136 = call i32 @strlcat(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %135)
  br label %137

137:                                              ; preds = %133, %129
  %138 = load i8*, i8** %4, align 8
  %139 = load i64, i64* %5, align 8
  %140 = call i32 @strlcat(i8* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 %139)
  br label %141

141:                                              ; preds = %137, %124
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @PRLI_WD3_READ_FCP_XFER_RDY_DISABLED, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  %149 = icmp ne i32 %147, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i8*, i8** %4, align 8
  %152 = load i64, i64* %5, align 8
  %153 = call i32 @strlcat(i8* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %152)
  br label %154

154:                                              ; preds = %150, %146
  %155 = load i8*, i8** %4, align 8
  %156 = load i64, i64* %5, align 8
  %157 = call i32 @strlcat(i8* %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64 %156)
  br label %158

158:                                              ; preds = %154, %141
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @PRLI_WD3_WRITE_FCP_XFER_RDY_DISABLED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %158
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  %166 = icmp ne i32 %164, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i8*, i8** %4, align 8
  %169 = load i64, i64* %5, align 8
  %170 = call i32 @strlcat(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %169)
  br label %171

171:                                              ; preds = %167, %163
  %172 = load i8*, i8** %4, align 8
  %173 = load i64, i64* %5, align 8
  %174 = call i32 @strlcat(i8* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 %173)
  br label %175

175:                                              ; preds = %171, %158
  %176 = load i8*, i8** %4, align 8
  %177 = load i64, i64* %5, align 8
  %178 = call i32 @strlcat(i8* %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 %177)
  ret void
}

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
