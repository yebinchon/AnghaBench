; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_term.c_get_termcap_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_term.c_get_termcap_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyent = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TERMCAP\00", align 1
@tbuf = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"terminal type %s is unknown\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"termcap: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_termcap_entry(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.ttyent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %9, align 8
  br label %44

14:                                               ; preds = %2
  %15 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %41

18:                                               ; preds = %14
  %19 = load i32, i32* @STDERR_FILENO, align 4
  %20 = call i8* @ttyname(i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = call i8* @strrchr(i8* %23, i8 signext 47)
  store i8* %24, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  br label %31

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i8*, i8** %7, align 8
  %33 = call %struct.ttyent* @getttynam(i8* %32)
  store %struct.ttyent* %33, %struct.ttyent** %5, align 8
  %34 = icmp ne %struct.ttyent* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.ttyent*, %struct.ttyent** %5, align 8
  %37 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %9, align 8
  br label %41

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %41

41:                                               ; preds = %40, %35, %17
  %42 = load i8*, i8** %9, align 8
  %43 = call i8* @mapped(i8* %42)
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %41, %12
  %45 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %45, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 47
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @unsetenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47, %44
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 63
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i8* @askuser(i8* %68)
  store i8* %69, i8** %9, align 8
  br label %72

70:                                               ; preds = %60
  %71 = call i8* @askuser(i8* null)
  store i8* %71, i8** %9, align 8
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %79, %73
  %75 = load i8*, i8** @tbuf, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @tgetent(i8* %75, i8* %76)
  store i32 %77, i32* %6, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  %82 = call i8* @askuser(i8* null)
  store i8* %82, i8** %9, align 8
  br label %74

83:                                               ; preds = %74
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i64, i64* @errno, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i64, i64* @errno, align 8
  br label %93

91:                                               ; preds = %86
  %92 = load i64, i64* @ENOENT, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i64 [ %90, %89 ], [ %92, %91 ]
  %95 = call i32 @strerror(i64 %94)
  %96 = call i32 @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %83
  %98 = load i8*, i8** @tbuf, align 8
  %99 = load i8**, i8*** %4, align 8
  store i8* %98, i8** %99, align 8
  %100 = load i8*, i8** %9, align 8
  ret i8* %100
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @ttyname(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.ttyent* @getttynam(i8*) #1

declare dso_local i8* @mapped(i8*) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i8* @askuser(i8*) #1

declare dso_local i32 @tgetent(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
