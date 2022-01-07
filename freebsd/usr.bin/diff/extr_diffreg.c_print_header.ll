; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_print_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_print_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.tm = type { i32 }

@stb1 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@stb2 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@cflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s.%.9d %s\00", align 1
@label = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@diff_format = common dso_local global i64 0, align 8
@D_CONTEXT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"***\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s %s\09%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"+++\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @print_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_header(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [10 x i8], align 1
  %9 = alloca [10 x i8], align 1
  %10 = alloca %struct.tm, align 4
  %11 = alloca %struct.tm, align 4
  %12 = alloca %struct.tm*, align 8
  %13 = alloca %struct.tm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stb1, i32 0, i32 1, i32 0), align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stb2, i32 0, i32 1, i32 0), align 4
  store i32 %17, i32* %15, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %18 = load i64, i64* @cflag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %21

21:                                               ; preds = %20, %2
  %22 = call %struct.tm* @localtime_r(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stb1, i32 0, i32 0), %struct.tm* %10)
  store %struct.tm* %22, %struct.tm** %12, align 8
  %23 = call %struct.tm* @localtime_r(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stb2, i32 0, i32 0), %struct.tm* %11)
  store %struct.tm* %23, %struct.tm** %13, align 8
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.tm*, %struct.tm** %12, align 8
  %27 = call i32 @strftime(i8* %24, i32 256, i8* %25, %struct.tm* %26)
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.tm*, %struct.tm** %13, align 8
  %31 = call i32 @strftime(i8* %28, i32 256, i8* %29, %struct.tm* %30)
  %32 = load i64, i64* @cflag, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %21
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %36 = load %struct.tm*, %struct.tm** %12, align 8
  %37 = call i32 @strftime(i8* %35, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %36)
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %39 = load %struct.tm*, %struct.tm** %13, align 8
  %40 = call i32 @strftime(i8* %38, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %39)
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %43 = load i32, i32* %14, align 4
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %45 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %42, i32 %43, i8* %44)
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %48 = load i32, i32* %15, align 4
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %50 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %47, i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %34, %21
  %52 = load i32**, i32*** @label, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i64, i64* @diff_format, align 8
  %58 = load i64, i64* @D_CONTEXT, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %62 = load i32**, i32*** @label, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = call i32 (i8*, i8*, i8*, ...) @diff_output(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %61, i8* %65)
  br label %76

67:                                               ; preds = %51
  %68 = load i64, i64* @diff_format, align 8
  %69 = load i64, i64* @D_CONTEXT, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %75 = call i32 (i8*, i8*, i8*, ...) @diff_output(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %72, i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %67, %56
  %77 = load i32**, i32*** @label, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load i64, i64* @diff_format, align 8
  %83 = load i64, i64* @D_CONTEXT, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %87 = load i32**, i32*** @label, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 1
  %89 = load i32*, i32** %88, align 8
  %90 = bitcast i32* %89 to i8*
  %91 = call i32 (i8*, i8*, i8*, ...) @diff_output(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %86, i8* %90)
  br label %101

92:                                               ; preds = %76
  %93 = load i64, i64* @diff_format, align 8
  %94 = load i64, i64* @D_CONTEXT, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %100 = call i32 (i8*, i8*, i8*, ...) @diff_output(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %97, i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %92, %81
  ret void
}

declare dso_local %struct.tm* @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @diff_output(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
