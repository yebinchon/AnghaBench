; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_temp.c_tinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_temp.c_tinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@tmpdir = common dso_local global i8* null, align 8
@_PATH_TMP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@myname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"\22%s\22 is not a user of this system\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ubluit\00", align 1
@rcvmode = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"Who are you!?\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@PATHSIZE = common dso_local global i64 0, align 8
@homedir = common dso_local global i8* null, align 8
@debug = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"user = %s, homedir = %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tinit() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** @tmpdir, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = load i8*, i8** @tmpdir, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4, %0
  %10 = load i8*, i8** @_PATH_TMP, align 8
  store i8* %10, i8** @tmpdir, align 8
  br label %11

11:                                               ; preds = %9, %4
  %12 = load i8*, i8** @tmpdir, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** @tmpdir, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i8*, i8** @tmpdir, align 8
  %19 = load i8*, i8** @tmpdir, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -1
  store i8* %22, i8** %1, align 8
  br label %23

23:                                               ; preds = %34, %17
  %24 = load i8*, i8** %1, align 8
  %25 = load i8*, i8** @tmpdir, align 8
  %26 = icmp ugt i8* %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** %1, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 47
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ false, %23 ], [ %31, %27 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = load i8*, i8** %1, align 8
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %1, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %37, i8** %1, align 8
  br label %23

38:                                               ; preds = %32
  %39 = load i8*, i8** @myname, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i8*, i8** @myname, align 8
  %43 = call i64 @getuserid(i8* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** @myname, align 8
  %47 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %41
  br label %62

49:                                               ; preds = %38
  %50 = call i8* (...) @username()
  store i8* %50, i8** %1, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** @myname, align 8
  %53 = load i64, i64* @rcvmode, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  br label %61

58:                                               ; preds = %49
  %59 = load i8*, i8** %1, align 8
  %60 = call i8* @savestr(i8* %59)
  store i8* %60, i8** @myname, align 8
  br label %61

61:                                               ; preds = %58, %57
  br label %62

62:                                               ; preds = %61, %48
  %63 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %63, i8** %1, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** %1, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %1, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = load i64, i64* @PATHSIZE, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %65, %62
  store i8* null, i8** @homedir, align 8
  br label %79

76:                                               ; preds = %70
  %77 = load i8*, i8** %1, align 8
  %78 = call i8* @savestr(i8* %77)
  store i8* %78, i8** @homedir, align 8
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i64, i64* @debug, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i8*, i8** @myname, align 8
  %84 = load i8*, i8** @homedir, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i8*, i8** @homedir, align 8
  br label %89

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i8* [ %87, %86 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %88 ]
  %91 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %83, i8* %90)
  br label %92

92:                                               ; preds = %89, %79
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @getuserid(i8*) #1

declare dso_local i8* @username(...) #1

declare dso_local i8* @savestr(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
