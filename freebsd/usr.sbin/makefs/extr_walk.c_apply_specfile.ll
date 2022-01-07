; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_walk.c_apply_specfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_walk.c_apply_specfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@debug = common dso_local global i32 0, align 4
@DEBUG_APPLY_SPECFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"apply_specfile: %s, %s %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Can't open `%s'\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"spec\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Can't close `%s'\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Specfile `%s' did not contain a tree\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@F_DIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apply_specfile(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @debug, align 4
  %21 = load i32, i32* @DEBUG_APPLY_SPECFILE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i32* %27)
  br label %29

29:                                               ; preds = %24, %4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %10, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TIMER_START(i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = call %struct.TYPE_5__* @spec(i32* %40)
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @TIMER_RESULTS(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32*, i32** %10, align 8
  %46 = call i64 @fclose(i32* %45)
  %47 = load i64, i64* @EOF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %36
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = icmp eq %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @strcmp(i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @F_DIR, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @apply_specdir(i8* %73, %struct.TYPE_5__* %74, i32* %75, i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %79 = call i32 @free_nodes(%struct.TYPE_5__* %78)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @TIMER_START(i32) #1

declare dso_local %struct.TYPE_5__* @spec(i32*) #1

declare dso_local i32 @TIMER_RESULTS(i32, i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @apply_specdir(i8*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @free_nodes(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
