; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_processinout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_processinout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"[stdin]\00", align 1
@filename = common dso_local global i8* null, align 8
@linefile = common dso_local global i8* null, align 8
@stdin = common dso_local global i32 0, align 4
@input = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@stdout = common dso_local global i32 0, align 4
@output = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"can't create %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".XXXXXX\00", align 1
@tempname = common dso_local global i8* null, align 8
@backext = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"can't rename \22%s\22 to \22%s\22\00", align 1
@altered = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"can't remove \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @processinout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @processinout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** @filename, align 8
  store i8* null, i8** @linefile, align 8
  %14 = load i32, i32* @stdin, align 4
  %15 = call i8* @fbinmode(i32 %14)
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** @input, align 8
  br label %29

17:                                               ; preds = %9
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** @filename, align 8
  %19 = load i8*, i8** %3, align 8
  store i8* %19, i8** @linefile, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** @input, align 8
  %23 = load i32*, i32** @input, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i32, i8*, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %17
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @stdout, align 4
  %35 = call i8* @fbinmode(i32 %34)
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** @output, align 8
  %37 = call i32 (...) @process()
  br label %111

38:                                               ; preds = %29
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @stat(i8* %39, %struct.stat* %5)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = call i8* @fopen(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** @output, align 8
  %46 = load i32*, i32** @output, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 (i32, i8*, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %42
  %52 = call i32 (...) @process()
  br label %111

53:                                               ; preds = %38
  %54 = load i8*, i8** %4, align 8
  %55 = call i8* @astrcat(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i8* %55, i8** @tempname, align 8
  %56 = load i8*, i8** @tempname, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32* @mktempmode(i8* %56, i32 %58)
  store i32* %59, i32** @output, align 8
  %60 = load i32*, i32** @output, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i8*, i8** @tempname, align 8
  %64 = call i32 (i32, i8*, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %53
  %66 = call i32 (...) @process()
  %67 = load i8*, i8** @backext, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = load i8*, i8** @backext, align 8
  %72 = call i8* @astrcat(i8* %70, i8* %71)
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @rename(i8* %73, i8* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 (i32, i8*, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %78, i8* %79)
  br label %81

81:                                               ; preds = %77, %69
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @free(i8* %82)
  br label %84

84:                                               ; preds = %81, %65
  %85 = load i32, i32* @altered, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** @backext, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i8*, i8** @tempname, align 8
  %92 = call i64 @remove(i8* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i8*, i8** @tempname, align 8
  %96 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %90
  br label %108

98:                                               ; preds = %87, %84
  %99 = load i8*, i8** @tempname, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = call i64 @replace(i8* %99, i8* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i8*, i8** @tempname, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 (i32, i8*, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %104, i8* %105)
  br label %107

107:                                              ; preds = %103, %98
  br label %108

108:                                              ; preds = %107, %97
  %109 = load i8*, i8** @tempname, align 8
  %110 = call i32 @free(i8* %109)
  store i8* null, i8** @tempname, align 8
  br label %111

111:                                              ; preds = %108, %51, %33
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @fbinmode(i32) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i32 @process(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @astrcat(i8*, i8*) #1

declare dso_local i32* @mktempmode(i8*, i32) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @remove(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @replace(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
