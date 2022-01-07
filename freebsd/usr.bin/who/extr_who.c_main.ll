; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/who/extr_who.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/who/extr_who.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"HTabmqsu\00", align 1
@Hflag = common dso_local global i32 0, align 4
@Tflag = common dso_local global i32 0, align 4
@uflag = common dso_local global i32 0, align 4
@bflag = common dso_local global i32 0, align 4
@aflag = common dso_local global i32 0, align 4
@mflag = common dso_local global i32 0, align 4
@qflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@UTXDB_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @LC_TIME, align 4
  %8 = call i32 @setlocale(i32 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %24 [
    i32 72, label %16
    i32 84, label %17
    i32 97, label %18
    i32 98, label %19
    i32 109, label %20
    i32 113, label %21
    i32 115, label %22
    i32 117, label %23
  ]

16:                                               ; preds = %14
  store i32 1, i32* @Hflag, align 4
  br label %26

17:                                               ; preds = %14
  store i32 1, i32* @Tflag, align 4
  br label %26

18:                                               ; preds = %14
  store i32 1, i32* @uflag, align 4
  store i32 1, i32* @Tflag, align 4
  store i32 1, i32* @bflag, align 4
  store i32 1, i32* @aflag, align 4
  br label %26

19:                                               ; preds = %14
  store i32 1, i32* @bflag, align 4
  br label %26

20:                                               ; preds = %14
  store i32 1, i32* @mflag, align 4
  br label %26

21:                                               ; preds = %14
  store i32 1, i32* @qflag, align 4
  br label %26

22:                                               ; preds = %14
  store i32 1, i32* @sflag, align 4
  br label %26

23:                                               ; preds = %14
  store i32 1, i32* @uflag, align 4
  br label %26

24:                                               ; preds = %14
  %25 = call i32 (...) @usage()
  br label %26

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16
  br label %9

27:                                               ; preds = %9
  %28 = load i64, i64* @optind, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load i64, i64* @optind, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33
  store i8** %35, i8*** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %61

38:                                               ; preds = %27
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50, %44
  store i32 1, i32* @mflag, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %57, 2
  store i32 %58, i32* %4, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  store i8** %60, i8*** %5, align 8
  br label %61

61:                                               ; preds = %56, %50, %38, %27
  %62 = load i32, i32* %4, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i32, i32* @UTXDB_ACTIVE, align 4
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @setutxdb(i32 %71, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %66
  %82 = load i32, i32* @qflag, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (...) @quick()
  br label %103

86:                                               ; preds = %81
  %87 = load i32, i32* @sflag, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* @uflag, align 4
  store i32 0, i32* @Tflag, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, i32* @Hflag, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 (...) @heading()
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i32, i32* @mflag, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 (...) @whoami()
  br label %102

100:                                              ; preds = %95
  %101 = call i32 (...) @process_utmp()
  br label %102

102:                                              ; preds = %100, %98
  br label %103

103:                                              ; preds = %102, %84
  %104 = call i32 (...) @endutxent()
  %105 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @setutxdb(i32, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @quick(...) #1

declare dso_local i32 @heading(...) #1

declare dso_local i32 @whoami(...) #1

declare dso_local i32 @process_utmp(...) #1

declare dso_local i32 @endutxent(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
