; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_hexdump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_hexdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"od\00", align 1
@blocksize = common dso_local global i64 0, align 8
@fshead = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"capsicum\00", align 1
@exitval = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @LC_ALL, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @strrchr(i8* %12, i8 signext 111)
  store i8* %13, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @newsyntax(i32 %20, i8*** %5)
  br label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @oldsyntax(i32 %23, i8*** %5)
  br label %25

25:                                               ; preds = %22, %19
  store i64 0, i64* @blocksize, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fshead, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %6, align 8
  br label %27

27:                                               ; preds = %45, %25
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = call i64 @size(%struct.TYPE_5__* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* @blocksize, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* @blocksize, align 8
  br label %44

44:                                               ; preds = %40, %30
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %6, align 8
  br label %27

49:                                               ; preds = %27
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fshead, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %6, align 8
  br label %51

51:                                               ; preds = %57, %49
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = call i32 @rewrite(%struct.TYPE_5__* %55)
  br label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %6, align 8
  br label %51

61:                                               ; preds = %51
  %62 = call i32 (...) @caph_cache_catpages()
  %63 = call i64 (...) @caph_limit_stdio()
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i8**, i8*** %5, align 8
  %69 = call i32 @next(i8** %68)
  %70 = call i32 (...) @display()
  %71 = load i32, i32* @exitval, align 4
  %72 = call i32 @exit(i32 %71) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @newsyntax(i32, i8***) #1

declare dso_local i32 @oldsyntax(i32, i8***) #1

declare dso_local i64 @size(%struct.TYPE_5__*) #1

declare dso_local i32 @rewrite(%struct.TYPE_5__*) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @next(i8**) #1

declare dso_local i32 @display(...) #1

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
