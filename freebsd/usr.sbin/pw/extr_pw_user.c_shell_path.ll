; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_shell_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_shell_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_UC_MAXLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c": \09\0D\0A\00", align 1
@shell_path.shellpath = internal global [256 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@X_OK = common dso_local global i32 0, align 4
@_UC_MAXSHELLS = common dso_local global i32 0, align 4
@EX_OSFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"can't find shell `%s' in shell paths\00", align 1
@EX_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"no default shell available or defined\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**, i8*)* @shell_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @shell_path(i8* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 47
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %15
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %4, align 8
  br label %97

27:                                               ; preds = %20, %3
  %28 = load i32, i32* @_UC_MAXLINE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = trunc i64 %29 to i32
  %34 = call i32 @strlcpy(i8* %31, i8* %32, i32 %33)
  %35 = call i8* @strtok(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %83, %27
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %85

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @shell_path.shellpath, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44)
  %46 = load i32, i32* @X_OK, align 4
  %47 = call i64 @access(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @shell_path.shellpath, i64 0, i64 0), i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @shell_path.shellpath, i64 0, i64 0), i8** %4, align 8
  store i32 1, i32* %12, align 4
  br label %95

50:                                               ; preds = %42
  br label %82

51:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %78, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @_UC_MAXSHELLS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i8**, i8*** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br label %63

63:                                               ; preds = %56, %52
  %64 = phi i1 [ false, %52 ], [ %62, %56 ]
  br i1 %64, label %65, label %81

65:                                               ; preds = %63
  %66 = load i8*, i8** %8, align 8
  %67 = load i8**, i8*** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @shell_path.shellpath, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %66, i8* %71)
  %73 = load i32, i32* @X_OK, align 4
  %74 = call i64 @access(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @shell_path.shellpath, i64 0, i64 0), i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @shell_path.shellpath, i64 0, i64 0), i8** %4, align 8
  store i32 1, i32* %12, align 4
  br label %95

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %52

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82
  %84 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %84, i8** %8, align 8
  br label %36

85:                                               ; preds = %36
  %86 = load i8*, i8** %7, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @EX_OSFILE, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 (i32, i8*, ...) @errx(i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* @EX_CONFIG, align 4
  %94 = call i32 (i32, i8*, ...) @errx(i32 %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  store i32 1, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %76, %49
  %96 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %96)
  br label %97

97:                                               ; preds = %95, %25
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
