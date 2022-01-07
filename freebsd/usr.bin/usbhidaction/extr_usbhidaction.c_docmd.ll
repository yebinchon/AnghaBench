; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/usbhidaction/extr_usbhidaction.c_docmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/usbhidaction/extr_usbhidaction.c_docmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i8*, i8* }

@SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"system '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"return code = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @docmd(%struct.command* %0, i32 %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %18 = load i32, i32* @SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.command*, %struct.command** %6, align 8
  %23 = getelementptr inbounds %struct.command, %struct.command* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  store i8* %21, i8** %14, align 8
  br label %25

25:                                               ; preds = %158, %5
  %26 = load i8*, i8** %13, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i8*, i8** %14, align 8
  %32 = load i32, i32* @SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %21, i64 %34
  %36 = icmp ult i8* %31, %35
  br label %37

37:                                               ; preds = %30, %25
  %38 = phi i1 [ false, %25 ], [ %36, %30 ]
  br i1 %38, label %39, label %159

39:                                               ; preds = %37
  %40 = load i8*, i8** %13, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 36
  br i1 %43, label %44, label %152

44:                                               ; preds = %39
  %45 = load i8*, i8** %13, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %13, align 8
  %47 = load i32, i32* @SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %21, i64 %49
  %51 = load i8*, i8** %14, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  store i64 %54, i64* %15, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @isdigit(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %44
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @strtol(i8* %60, i8** %13, i32 10)
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i8*, i8** %14, align 8
  %71 = load i8**, i8*** %10, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = call i32 @strncpy(i8* %70, i8* %75, i64 %76)
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = load i8*, i8** %14, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %14, align 8
  br label %83

83:                                               ; preds = %69, %65, %59
  br label %151

84:                                               ; preds = %44
  %85 = load i8*, i8** %13, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 86
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load i8*, i8** %13, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @snprintf(i8* %92, i64 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = load i8*, i8** %14, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %14, align 8
  br label %150

101:                                              ; preds = %84
  %102 = load i8*, i8** %13, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 78
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load i8*, i8** %13, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %13, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = load %struct.command*, %struct.command** %6, align 8
  %111 = getelementptr inbounds %struct.command, %struct.command* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* %15, align 8
  %114 = call i32 @strncpy(i8* %109, i8* %112, i64 %113)
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = load i8*, i8** %14, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %14, align 8
  br label %149

120:                                              ; preds = %101
  %121 = load i8*, i8** %13, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 72
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = load i8*, i8** %13, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %13, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = load i64, i64* %15, align 8
  %131 = call i32 @strncpy(i8* %128, i8* %129, i64 %130)
  %132 = load i8*, i8** %14, align 8
  %133 = call i32 @strlen(i8* %132)
  %134 = load i8*, i8** %14, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %14, align 8
  br label %148

137:                                              ; preds = %120
  %138 = load i8*, i8** %13, align 8
  %139 = load i8, i8* %138, align 1
  %140 = icmp ne i8 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i8*, i8** %13, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %13, align 8
  %144 = load i8, i8* %142, align 1
  %145 = load i8*, i8** %14, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %14, align 8
  store i8 %144, i8* %145, align 1
  br label %147

147:                                              ; preds = %141, %137
  br label %148

148:                                              ; preds = %147, %125
  br label %149

149:                                              ; preds = %148, %106
  br label %150

150:                                              ; preds = %149, %89
  br label %151

151:                                              ; preds = %150, %83
  br label %158

152:                                              ; preds = %39
  %153 = load i8*, i8** %13, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %13, align 8
  %155 = load i8, i8* %153, align 1
  %156 = load i8*, i8** %14, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %14, align 8
  store i8 %155, i8* %156, align 1
  br label %158

158:                                              ; preds = %152, %151
  br label %25

159:                                              ; preds = %37
  %160 = load i8*, i8** %14, align 8
  store i8 0, i8* %160, align 1
  %161 = load i32, i32* @verbose, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %165

165:                                              ; preds = %163, %159
  %166 = call i32 @system(i8* %21)
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* @verbose, align 4
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load i32, i32* %17, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %17, align 4
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %172, %169, %165
  %176 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %176)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @system(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
