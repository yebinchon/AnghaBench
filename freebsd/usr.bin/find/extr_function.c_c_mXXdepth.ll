; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_mXXdepth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_mXXdepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s: %s: value must be positive\00", align 1
@F_MAXDEPTH = common dso_local global i32 0, align 4
@maxdepth = common dso_local global i8* null, align 8
@mindepth = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @c_mXXdepth(%struct.TYPE_5__* %0, i8*** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = load i8***, i8**** %4, align 8
  %9 = call i8* @nextarg(%struct.TYPE_5__* %7, i8*** %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 45
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = call i32* @palloc(%struct.TYPE_5__* %22)
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @F_MAXDEPTH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @find_parsenum(i32* %31, i32 %34, i8* %35, i32* null)
  store i8* %36, i8** @maxdepth, align 8
  br label %44

37:                                               ; preds = %21
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @find_parsenum(i32* %38, i32 %41, i8* %42, i32* null)
  store i8* %43, i8** @mindepth, align 8
  br label %44

44:                                               ; preds = %37, %30
  %45 = load i32*, i32** %6, align 8
  ret i32* %45
}

declare dso_local i8* @nextarg(%struct.TYPE_5__*, i8***) #1

declare dso_local i32 @errx(i32, i8*, i32, i8*) #1

declare dso_local i32* @palloc(%struct.TYPE_5__*) #1

declare dso_local i8* @find_parsenum(i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
