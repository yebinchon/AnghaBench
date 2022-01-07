; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_Validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_Validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32 }

@LINE_LEN = common dso_local global i32 0, align 4
@SECRETFILE = common dso_local global i32 0, align 4
@PARSE_REDUCE = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: %d: Invalid line\0A\00", align 1
@OPT_PASSWDAUTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_Validate(%struct.bundle* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i8*], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @LINE_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @SECRETFILE, align 4
  %21 = call i32* @OpenSecret(i32 %20)
  store i32* %21, i32** %8, align 8
  br label %22

22:                                               ; preds = %92, %3
  store i32 0, i32* %10, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %77

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %75, %60, %38, %25
  %27 = trunc i64 %17 to i32
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @fgets(i8* %19, i32 %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %76

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
  %44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %45 = call i32 @memset(i8** %44, i8 signext 0, i32 40)
  %46 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %47 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
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
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %26

61:                                               ; preds = %57
  %62 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %63 = load i8*, i8** %62, align 16
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strcmp(i8* %63, i8* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @CloseSecret(i32* %68)
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @auth_CheckPasswd(i8* %70, i8* %72, i8* %73)
  store i32 %74, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

75:                                               ; preds = %61
  br label %26

76:                                               ; preds = %26
  br label %77

77:                                               ; preds = %76, %22
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @strrchr(i8* %78, i8 signext 92)
  store i8* %79, i8** %14, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %6, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @rewind(i32* %93)
  br label %22

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %81, %77
  %97 = load i32*, i32** %8, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @CloseSecret(i32* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.bundle*, %struct.bundle** %5, align 8
  %104 = load i32, i32* @OPT_PASSWDAUTH, align 4
  %105 = call i64 @Enabled(%struct.bundle* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i8*, i8** %6, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @auth_CheckPasswd(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %109)
  store i32 %110, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

111:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %112

112:                                              ; preds = %111, %107, %67
  %113 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %4, align 4
  ret i32 %114
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

declare dso_local i32 @auth_CheckPasswd(i8*, i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i64 @Enabled(%struct.bundle*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
