; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@FTS_NOSTAT = common dso_local global i32 0, align 4
@ftsoptions = common dso_local global i32 0, align 4
@divsize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s: %s: illegal trailing character\00", align 1
@QUAD_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: %s: value too large\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @c_size(%struct.TYPE_10__* %0, i8*** %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = load i8***, i8**** %4, align 8
  %11 = call i8* @nextarg(%struct.TYPE_10__* %9, i8*** %10)
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* @FTS_NOSTAT, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @ftsoptions, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* @ftsoptions, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = call %struct.TYPE_9__* @palloc(%struct.TYPE_10__* %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  store i8 99, i8* %7, align 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @find_parsenum(%struct.TYPE_9__* %18, i32 %21, i8* %22, i8* %7)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %2
  store i64 0, i64* @divsize, align 8
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %38 [
    i32 99, label %32
    i32 107, label %33
    i32 77, label %34
    i32 71, label %35
    i32 84, label %36
    i32 80, label %37
  ]

32:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %44

33:                                               ; preds = %29
  store i32 1024, i32* %8, align 4
  br label %44

34:                                               ; preds = %29
  store i32 1048576, i32* %8, align 4
  br label %44

35:                                               ; preds = %29
  store i32 1073741824, i32* %8, align 4
  br label %44

36:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %44

37:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %44

38:                                               ; preds = %29
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %38, %37, %36, %35, %34, %33, %32
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @QUAD_MAX, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %48, %49
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %2
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %65
}

declare dso_local i8* @nextarg(%struct.TYPE_10__*, i8***) #1

declare dso_local %struct.TYPE_9__* @palloc(%struct.TYPE_10__*) #1

declare dso_local i32 @find_parsenum(%struct.TYPE_9__*, i32, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
