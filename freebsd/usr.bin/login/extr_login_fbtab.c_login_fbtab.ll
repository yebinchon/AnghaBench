; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login_fbtab.c_login_fbtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login_fbtab.c_login_fbtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@_PATH_FBTAB = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_PATH_LOGINDEVPERM = common dso_local global i8* null, align 8
@WSPACE = common dso_local global i8* null, align 8
@_PATH_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: bad entry: %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @login_fbtab(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @BUFSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i8*, i8** @_PATH_FBTAB, align 8
  store i8* %19, i8** %13, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i8*, i8** @_PATH_LOGINDEVPERM, align 8
  store i8* %23, i8** %13, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %14, align 4
  br label %110

27:                                               ; preds = %22, %3
  br label %28

28:                                               ; preds = %106, %81, %42, %27
  %29 = trunc i64 %16 to i32
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @fgets(i8* %18, i32 %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %107

33:                                               ; preds = %28
  %34 = call i8* @strchr(i8* %18, i8 signext 35)
  store i8* %34, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i8*, i8** %11, align 8
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i8*, i8** @WSPACE, align 8
  %40 = call i8* @strtok(i8* %18, i8* %39)
  store i8* %40, i8** %10, align 8
  store i8* %40, i8** %11, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %28

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* @_PATH_DEV, align 4
  %46 = call i64 @strncmp(i8* %44, i32 %45, i32 3)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** @WSPACE, align 8
  %50 = call i8* @strtok(i8* null, i8* %49)
  store i8* %50, i8** %11, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %73, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 48
  br i1 %56, label %73, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %11, align 8
  %59 = call i64 @sscanf(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, 511
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** @WSPACE, align 8
  %71 = call i8* @strtok(i8* null, i8* %70)
  store i8* %71, i8** %11, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %69, %64, %61, %57, %52, %48, %43
  %74 = load i32, i32* @LOG_ERR, align 4
  %75 = load i8*, i8** %13, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i8*, i8** %11, align 8
  br label %81

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i8* [ %79, %78 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %80 ]
  %83 = call i32 @syslog(i32 %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %75, i8* %82)
  br label %28

84:                                               ; preds = %69
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 5
  %87 = load i8*, i8** %4, align 8
  %88 = call i64 @strcmp(i8* %86, i8* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %84
  %91 = load i8*, i8** %11, align 8
  %92 = call i8* @strtok(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %92, i8** %11, align 8
  br label %93

93:                                               ; preds = %103, %90
  %94 = load i8*, i8** %11, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @login_protect(i8* %97, i8* %98, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96
  %104 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %104, i8** %11, align 8
  br label %93

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %84
  br label %28

107:                                              ; preds = %28
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @fclose(i32* %108)
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %107, %26
  %111 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %14, align 4
  switch i32 %112, label %114 [
    i32 0, label %113
    i32 1, label %113
  ]

113:                                              ; preds = %110, %110
  ret void

114:                                              ; preds = %110
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i32, i32) #2

declare dso_local i64 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @login_protect(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
