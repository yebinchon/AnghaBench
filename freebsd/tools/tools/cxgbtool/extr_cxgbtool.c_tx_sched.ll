; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_tx_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_tx_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_hw_sched = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"missing value for mode\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"flow\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bad mode \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"flowipg\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"unknown scheduler parameter \22%s\22\00", align 1
@CHELSIO_SET_HW_SCHED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"pktsched\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @tx_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_sched(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ch_hw_sched, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load i8**, i8*** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8*, i8** %16, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @get_int_arg(i8* %21, i32* %11)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %174

25:                                               ; preds = %15
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 2
  store i32 -1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 1
  store i32 -1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 5
  store i32 -1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 4
  store i32 -1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 3
  store i32 -1, i32* %32, align 4
  br label %33

33:                                               ; preds = %163, %25
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %166

37:                                               ; preds = %33
  %38 = load i8**, i8*** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %84, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i8**, i8*** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %83

63:                                               ; preds = %52
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %82

74:                                               ; preds = %63
  %75 = load i8**, i8*** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %74, %72
  br label %83

83:                                               ; preds = %82, %61
  br label %163

84:                                               ; preds = %37
  %85 = load i8**, i8*** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %6, align 4
  %94 = load i8**, i8*** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @get_sched_param(i32 %93, i8** %94, i32 %95, i32* %12)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  %100 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  br label %162

101:                                              ; preds = %92, %84
  %102 = load i8**, i8*** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %6, align 4
  %111 = load i8**, i8*** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @get_sched_param(i32 %110, i8** %111, i32 %112, i32* %12)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %12, align 4
  %117 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 3
  store i32 %116, i32* %117, align 4
  br label %161

118:                                              ; preds = %109, %101
  %119 = load i8**, i8*** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %6, align 4
  %128 = load i8**, i8*** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @get_sched_param(i32 %127, i8** %128, i32 %129, i32* %12)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %12, align 4
  %134 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 4
  store i32 %133, i32* %134, align 4
  br label %160

135:                                              ; preds = %126, %118
  %136 = load i8**, i8*** %7, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %6, align 4
  %145 = load i8**, i8*** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @get_sched_param(i32 %144, i8** %145, i32 %146, i32* %12)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* %12, align 4
  %151 = getelementptr inbounds %struct.ch_hw_sched, %struct.ch_hw_sched* %10, i32 0, i32 5
  store i32 %150, i32* %151, align 4
  br label %159

152:                                              ; preds = %143, %135
  %153 = load i8**, i8*** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %152, %149
  br label %160

160:                                              ; preds = %159, %132
  br label %161

161:                                              ; preds = %160, %115
  br label %162

162:                                              ; preds = %161, %98
  br label %163

163:                                              ; preds = %162, %83
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 2
  store i32 %165, i32* %8, align 4
  br label %33

166:                                              ; preds = %33
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* @CHELSIO_SET_HW_SCHED, align 4
  %169 = call i64 @doit(i8* %167, i32 %168, %struct.ch_hw_sched* %10)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %166
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %173, %24
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i64 @get_int_arg(i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @get_sched_param(i32, i8**, i32, i32*) #1

declare dso_local i64 @doit(i8*, i32, %struct.ch_hw_sched*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
