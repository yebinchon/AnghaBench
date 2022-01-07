; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/uudecode/extr_uudecode.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/uudecode/extr_uudecode.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"b64decode\00", align 1
@base64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"cimo:prs\00", align 1
@oflag = common dso_local global i32 0, align 4
@rflag = common dso_local global i32 0, align 4
@cflag = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@pflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@outfile = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@infile = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@infp = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdin = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @basename(i8* %10)
  %12 = call i64 @strcmp(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* @base64, align 4
  br label %15

15:                                               ; preds = %14, %2
  br label %16

16:                                               ; preds = %73, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %7, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %74

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %71 [
    i32 99, label %23
    i32 105, label %32
    i32 109, label %33
    i32 111, label %34
    i32 112, label %50
    i32 114, label %56
    i32 115, label %65
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @oflag, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @rflag, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %23
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %29, %26
  store i32 1, i32* @cflag, align 4
  br label %73

32:                                               ; preds = %21
  store i32 1, i32* @iflag, align 4
  br label %73

33:                                               ; preds = %21
  store i32 1, i32* @base64, align 4
  br label %73

34:                                               ; preds = %21
  %35 = load i32, i32* @cflag, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @pflag, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @rflag, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @sflag, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %40, %37, %34
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %43
  store i32 1, i32* @oflag, align 4
  store i32 1, i32* @sflag, align 4
  %49 = load i32, i32* @optarg, align 4
  store i32 %49, i32* @outfile, align 4
  br label %73

50:                                               ; preds = %21
  %51 = load i32, i32* @oflag, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @usage()
  br label %55

55:                                               ; preds = %53, %50
  store i32 1, i32* @pflag, align 4
  br label %73

56:                                               ; preds = %21
  %57 = load i32, i32* @cflag, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @oflag, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %56
  %63 = call i32 (...) @usage()
  br label %64

64:                                               ; preds = %62, %59
  store i32 1, i32* @rflag, align 4
  br label %73

65:                                               ; preds = %21
  %66 = load i32, i32* @oflag, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (...) @usage()
  br label %70

70:                                               ; preds = %68, %65
  store i32 1, i32* @sflag, align 4
  br label %73

71:                                               ; preds = %21
  %72 = call i32 (...) @usage()
  br label %73

73:                                               ; preds = %71, %70, %64, %55, %48, %33, %32, %31
  br label %16

74:                                               ; preds = %16
  %75 = load i64, i64* @optind, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  %80 = load i64, i64* @optind, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 %80
  store i8** %82, i8*** %5, align 8
  %83 = load i8**, i8*** %5, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %109

86:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %103, %86
  %88 = load i8**, i8*** %5, align 8
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** @infile, align 8
  %90 = call i32* @fopen(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %90, i32** @infp, align 8
  %91 = load i32*, i32** @infp, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i8**, i8*** %5, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  store i32 1, i32* %6, align 4
  br label %103

97:                                               ; preds = %87
  %98 = call i32 (...) @decode()
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32*, i32** @infp, align 8
  %102 = call i32 @fclose(i32* %101)
  br label %103

103:                                              ; preds = %97, %93
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i32 1
  store i8** %105, i8*** %5, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %87, label %108

108:                                              ; preds = %103
  br label %112

109:                                              ; preds = %74
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** @infile, align 8
  %110 = load i32*, i32** @stdin, align 8
  store i32* %110, i32** @infp, align 8
  %111 = call i32 (...) @decode()
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109, %108
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @exit(i32 %113) #3
  unreachable
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @decode(...) #1

declare dso_local i32 @fclose(i32*) #1

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
