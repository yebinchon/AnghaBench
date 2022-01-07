; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"GZIP\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"gunzip\00", align 1
@dflag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"gzcat\00", align 1
@cflag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"123456789acdfhklLNnqrS:tVv\00", align 1
@longopts = common dso_local global i32 0, align 4
@numflag = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"%s: option --ascii ignored on this system\0A\00", align 1
@fflag = common dso_local global i32 0, align 4
@kflag = common dso_local global i32 0, align 4
@nflag = common dso_local global i32 0, align 4
@Nflag = common dso_local global i32 0, align 4
@qflag = common dso_local global i64 0, align 8
@rflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@SUFFIX_MAXLEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"incorrect suffix: '%s': too long\00", align 1
@suffixes = common dso_local global %struct.TYPE_2__* null, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NUM_SUFFIXES = common dso_local global i32 0, align 4
@tflag = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"(totals)\00", align 1
@exit_value = common dso_local global i32 0, align 4
@OPT_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i8* (...) @getprogname()
  store i8* %10, i8** %6, align 8
  %11 = call i32 (...) @setup_signals()
  %12 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @prepend_gzip(i8* %15, i32* %4, i8*** %5)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* @dflag, align 4
  br label %32

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  store i32 1, i32* @cflag, align 4
  store i32 1, i32* @dflag, align 4
  br label %31

31:                                               ; preds = %30, %26
  br label %32

32:                                               ; preds = %31, %21
  br label %33

33:                                               ; preds = %100, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* @longopts, align 4
  %37 = call i32 @getopt_long(i32 %34, i8** %35, i32 ptrtoint ([27 x i8]* @.str.4 to i32), i32 %36, i32* null)
  store i32 %37, i32* %9, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %101

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %98 [
    i32 49, label %41
    i32 50, label %41
    i32 51, label %41
    i32 52, label %41
    i32 53, label %41
    i32 54, label %41
    i32 55, label %41
    i32 56, label %41
    i32 57, label %41
    i32 99, label %44
    i32 100, label %45
    i32 108, label %46
    i32 86, label %47
    i32 97, label %49
    i32 102, label %53
    i32 107, label %54
    i32 76, label %55
    i32 78, label %57
    i32 110, label %58
    i32 113, label %59
    i32 114, label %60
    i32 83, label %61
    i32 116, label %96
    i32 118, label %97
  ]

41:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %39, %39
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 48
  store i32 %43, i32* @numflag, align 4
  br label %100

44:                                               ; preds = %39
  store i32 1, i32* @cflag, align 4
  br label %100

45:                                               ; preds = %39
  store i32 1, i32* @dflag, align 4
  br label %100

46:                                               ; preds = %39
  store i32 1, i32* @lflag, align 4
  store i32 1, i32* @dflag, align 4
  br label %100

47:                                               ; preds = %39
  %48 = call i32 (...) @display_version()
  br label %49

49:                                               ; preds = %39, %47
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  br label %100

53:                                               ; preds = %39
  store i32 1, i32* @fflag, align 4
  br label %100

54:                                               ; preds = %39
  store i32 1, i32* @kflag, align 4
  br label %100

55:                                               ; preds = %39
  %56 = call i32 (...) @display_license()
  br label %57

57:                                               ; preds = %39, %55
  store i32 0, i32* @nflag, align 4
  store i32 1, i32* @Nflag, align 4
  br label %100

58:                                               ; preds = %39
  store i32 1, i32* @nflag, align 4
  store i32 0, i32* @Nflag, align 4
  br label %100

59:                                               ; preds = %39
  store i64 1, i64* @qflag, align 8
  br label %100

60:                                               ; preds = %39
  store i32 1, i32* @rflag, align 4
  br label %100

61:                                               ; preds = %39
  %62 = load i8*, i8** @optarg, align 8
  %63 = call i32 @strlen(i8* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @SUFFIX_MAXLEN, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i8*, i8** @optarg, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @suffixes, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @suffixes, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 8
  br label %95

82:                                               ; preds = %61
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @suffixes, align 8
  %84 = load i32, i32* @NUM_SUFFIXES, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %88, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @suffixes, align 8
  %90 = load i32, i32* @NUM_SUFFIXES, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %82, %73
  br label %100

96:                                               ; preds = %39
  store i32 1, i32* @cflag, align 4
  store i32 1, i32* @tflag, align 4
  store i32 1, i32* @dflag, align 4
  br label %100

97:                                               ; preds = %39
  store i32 1, i32* @vflag, align 4
  br label %100

98:                                               ; preds = %39
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %98, %97, %96, %95, %60, %59, %58, %57, %54, %53, %49, %46, %45, %44, %41
  br label %33

101:                                              ; preds = %33
  %102 = load i64, i64* @optind, align 8
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 %102
  store i8** %104, i8*** %5, align 8
  %105 = load i64, i64* @optind, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %101
  %113 = load i32, i32* @dflag, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (...) @handle_stdin()
  br label %119

117:                                              ; preds = %112
  %118 = call i32 (...) @handle_stdout()
  br label %119

119:                                              ; preds = %117, %115
  br label %132

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %126, %120
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @handle_pathname(i8* %124)
  br label %126

126:                                              ; preds = %121
  %127 = load i8**, i8*** %5, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %128, i8*** %5, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %121, label %131

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %119
  %133 = load i64, i64* @qflag, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i32, i32* @lflag, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %4, align 4
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 @print_list(i32 -1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 0)
  br label %143

143:                                              ; preds = %141, %138, %135, %132
  %144 = load i32, i32* @exit_value, align 4
  %145 = call i32 @exit(i32 %144) #3
  unreachable
}

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @setup_signals(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @prepend_gzip(i8*, i32*, i8***) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @display_version(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @display_license(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @handle_stdin(...) #1

declare dso_local i32 @handle_stdout(...) #1

declare dso_local i32 @handle_pathname(i8*) #1

declare dso_local i32 @print_list(i32, i32, i8*, i32) #1

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
