; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tput/extr_tput.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tput/extr_tput.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"T:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"no terminal type specified and no TERM environmental variable.\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"tgetent failure\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"longname\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %10, align 8
  br label %14

14:                                               ; preds = %26, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %24 [
    i32 84, label %21
    i32 63, label %23
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** %10, align 8
  br label %26

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %19, %23
  %25 = call i32 (...) @usage()
  br label %26

26:                                               ; preds = %24, %21
  br label %14

27:                                               ; preds = %14
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
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %27
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 @errx(i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43, %40
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @tgetent(i8* %49, i8* %50)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @err(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %115, %55
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %13, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %118

60:                                               ; preds = %56
  %61 = load i8*, i8** %13, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %90 [
    i32 99, label %64
    i32 105, label %70
    i32 108, label %76
    i32 114, label %84
  ]

64:                                               ; preds = %60
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %69

69:                                               ; preds = %68, %64
  br label %90

70:                                               ; preds = %60
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %75

75:                                               ; preds = %74, %70
  br label %90

76:                                               ; preds = %60
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %82 = call i32 @prlongname(i8* %81)
  br label %115

83:                                               ; preds = %76
  br label %90

84:                                               ; preds = %60
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %89

89:                                               ; preds = %88, %84
  br label %90

90:                                               ; preds = %60, %89, %83, %75, %69
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i64 @tgetstr(i8* %92, i8** %9)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i8*, i8** %13, align 8
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %98 = load i8**, i8*** %5, align 8
  %99 = call i8** @process(i8* %96, i8* %97, i8** %98)
  store i8** %99, i8*** %5, align 8
  br label %114

100:                                              ; preds = %90
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @tgetnum(i8* %101)
  store i32 %102, i32* %8, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %105)
  br label %113

107:                                              ; preds = %100
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @tgetflag(i8* %108)
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %107, %104
  br label %114

114:                                              ; preds = %113, %95
  br label %115

115:                                              ; preds = %114, %80
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i32 1
  store i8** %117, i8*** %5, align 8
  br label %56

118:                                              ; preds = %56
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @exit(i32 %119) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @tgetent(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @prlongname(i8*) #1

declare dso_local i64 @tgetstr(i8*, i8**) #1

declare dso_local i8** @process(i8*, i8*, i8**) #1

declare dso_local i32 @tgetnum(i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @tgetflag(i8*) #1

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
