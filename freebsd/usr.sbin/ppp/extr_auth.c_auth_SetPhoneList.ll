; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_SetPhoneList.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_SetPhoneList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINE_LEN = common dso_local global i32 0, align 4
@SECRETFILE = common dso_local global i32 0, align 4
@PARSE_REDUCE = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: %d: Invalid line\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_SetPhoneList(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8*], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @LINE_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @SECRETFILE, align 4
  %21 = call i32* @OpenSecret(i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %107

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %99, %24
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %88, %60, %38, %25
  %27 = trunc i64 %17 to i32
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @fgets(i8* %19, i32 %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %89

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = getelementptr inbounds i8, i8* %19, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %26

39:                                               ; preds = %31
  %40 = call i32 @strlen(i8* %19)
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %19, i64 %42
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 0
  %45 = call i32 @memset(i8** %44, i8 signext 0, i32 48)
  %46 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 0
  %47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 0
  %48 = call i32 @VECSIZE(i8** %47)
  %49 = load i32, i32* @PARSE_REDUCE, align 4
  %50 = call i32 @MakeArgs(i8* %19, i8** %46, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load i32, i32* @LogWARN, align 4
  %54 = load i32, i32* @SECRETFILE, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @log_Printf(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %39
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %26

61:                                               ; preds = %57
  %62 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 0
  %63 = load i8*, i8** %62, align 16
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @strcmp(i8* %63, i8* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %61
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @CloseSecret(i32* %68)
  %70 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 4
  %71 = load i8*, i8** %70, align 16
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %109

76:                                               ; preds = %67
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds [6 x i8*], [6 x i8*]* %11, i64 0, i64 4
  %79 = load i8*, i8** %78, align 16
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %80, 1
  %82 = call i32 @strncpy(i8* %77, i8* %79, i32 %81)
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8 0, i8* %87, align 1
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %109

88:                                               ; preds = %61
  br label %26

89:                                               ; preds = %26
  %90 = load i8*, i8** %5, align 8
  %91 = call i8* @strrchr(i8* %90, i8 signext 92)
  store i8* %91, i8** %14, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8* %101, i8** %5, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @rewind(i32* %102)
  br label %25

104:                                              ; preds = %93, %89
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @CloseSecret(i32* %105)
  br label %107

107:                                              ; preds = %104, %3
  %108 = load i8*, i8** %6, align 8
  store i8 0, i8* %108, align 1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %109

109:                                              ; preds = %107, %76, %75
  %110 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @OpenSecret(i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memset(i8**, i8 signext, i32) #2

declare dso_local i32 @MakeArgs(i8*, i8**, i32, i32) #2

declare dso_local i32 @VECSIZE(i8**) #2

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @CloseSecret(i32*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @rewind(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
