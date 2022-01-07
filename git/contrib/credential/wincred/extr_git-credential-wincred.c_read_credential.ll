; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/wincred/extr_git-credential-wincred.c_read_credential.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/wincred/extr_git-credential-wincred.c_read_credential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bad input: %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@protocol = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@host = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@path = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@wusername = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@password = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"unrecognized input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_credential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_credential() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %86, %0
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %6 = load i32, i32* @stdin, align 4
  %7 = call i64 @fgets(i8* %5, i32 1024, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %87

9:                                                ; preds = %4
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %25, %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %20)
  %22 = icmp ne i8* %21, null
  br label %23

23:                                               ; preds = %15, %12
  %24 = phi i1 [ false, %12 ], [ %22, %15 ]
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 %28
  store i8 0, i8* %29, align 1
  br label %12

30:                                               ; preds = %23
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %32 = load i8, i8* %31, align 16
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %87

35:                                               ; preds = %30
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %37 = call i8* @strchr(i8* %36, i8 signext 61)
  store i8* %37, i8** %2, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %42 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %2, align 8
  store i8 0, i8* %44, align 1
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %2, align 8
  %51 = call i8* @utf8_to_utf16_dup(i8* %50)
  store i8* %51, i8** @protocol, align 8
  br label %86

52:                                               ; preds = %43
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %2, align 8
  %58 = call i8* @utf8_to_utf16_dup(i8* %57)
  store i8* %58, i8** @host, align 8
  br label %85

59:                                               ; preds = %52
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %2, align 8
  %65 = call i8* @utf8_to_utf16_dup(i8* %64)
  store i8* %65, i8** @path, align 8
  br label %84

66:                                               ; preds = %59
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %2, align 8
  %72 = call i8* @utf8_to_utf16_dup(i8* %71)
  store i8* %72, i8** @wusername, align 8
  br label %83

73:                                               ; preds = %66
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %2, align 8
  %79 = call i8* @utf8_to_utf16_dup(i8* %78)
  store i8* %79, i8** @password, align 8
  br label %82

80:                                               ; preds = %73
  %81 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82, %70
  br label %84

84:                                               ; preds = %83, %63
  br label %85

85:                                               ; preds = %84, %56
  br label %86

86:                                               ; preds = %85, %49
  br label %4

87:                                               ; preds = %34, %4
  ret void
}

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @utf8_to_utf16_dup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
