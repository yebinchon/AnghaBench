; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/etdump/extr_etdump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/etdump/extr_etdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outputter = type { i32 }
%struct.option = type { i8*, float, i32*, i32 }

@stdout = common dso_local global i32* null, align 8
@output_text = common dso_local global %struct.outputter* null, align 8
@main.longopts = internal global [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), float 1.280000e+02, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), float 1.280000e+02, i32* null, i32 111 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"f:o:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@output_shell = common dso_local global %struct.outputter* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"unable to open %s for output\00", align 1
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"could not open %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.outputter*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32*, i32** @stdout, align 8
  store i32* %11, i32** %8, align 8
  %12 = load %struct.outputter*, %struct.outputter** @output_text, align 8
  store %struct.outputter* %12, %struct.outputter** %10, align 8
  br label %13

13:                                               ; preds = %59, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt_long(i32 %14, i8** %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @main.longopts, i64 0, i64 0), i32* null)
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %60

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %54 [
    i32 102, label %20
    i32 111, label %39
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load %struct.outputter*, %struct.outputter** @output_shell, align 8
  store %struct.outputter* %25, %struct.outputter** %10, align 8
  br label %38

26:                                               ; preds = %20
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load %struct.outputter*, %struct.outputter** @output_text, align 8
  store %struct.outputter* %31, %struct.outputter** %10, align 8
  br label %37

32:                                               ; preds = %26
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @usage(i8* %35)
  br label %37

37:                                               ; preds = %32, %30
  br label %38

38:                                               ; preds = %37, %24
  br label %59

39:                                               ; preds = %18
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32*, i32** @stdout, align 8
  store i32* %44, i32** %8, align 8
  br label %53

45:                                               ; preds = %39
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32* @fopen(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %47, i32** %8, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %43
  br label %59

54:                                               ; preds = %18
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @usage(i8* %57)
  br label %59

59:                                               ; preds = %54, %53, %38
  br label %13

60:                                               ; preds = %13
  %61 = load i64, i64* @optind, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %4, align 4
  %66 = load i64, i64* @optind, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 %66
  store i8** %68, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %108, %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %69
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32*, i32** @stdin, align 8
  store i32* %82, i32** %9, align 8
  br label %98

83:                                               ; preds = %73
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32* @fopen(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %89, i32** %9, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %92, %83
  br label %98

98:                                               ; preds = %97, %81
  %99 = load i32*, i32** %9, align 8
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load %struct.outputter*, %struct.outputter** %10, align 8
  %107 = call i32 @dump_eltorito(i32* %99, i8* %104, i32* %105, %struct.outputter* %106)
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %69

111:                                              ; preds = %69
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @dump_eltorito(i32*, i8*, i32*, %struct.outputter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
