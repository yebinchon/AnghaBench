; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_kwval_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_kwval_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@kwval_lookup.nastr = internal global [3 x i8] c"-1\00", align 1
@NKWINFO = common dso_local global i64 0, align 8
@kwinfo = common dso_local global %struct.TYPE_2__* null, align 8
@CHAR_MAX = common dso_local global i8 0, align 1
@TYPE_NUM = common dso_local global i32 0, align 4
@TYPE_UNQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kwval_lookup(i8* %0, i8** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %10, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %90, %5
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* @NKWINFO, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %93

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kwinfo, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strcasecmp(i8* %19, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %89

27:                                               ; preds = %18
  store i32 1, i32* %11, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kwinfo, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kwinfo, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kwinfo, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %88 [
    i32 129, label %45
    i32 130, label %53
    i32 128, label %79
  ]

45:                                               ; preds = %27
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kwinfo, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @nl_langinfo(i32 %50)
  %52 = load i8**, i8*** %7, align 8
  store i8* %51, i8** %52, align 8
  br label %88

53:                                               ; preds = %27
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kwinfo, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @kwval_lconv(i32 %58)
  %60 = load i8**, i8*** %7, align 8
  store i8* %59, i8** %60, align 8
  %61 = load i8**, i8*** %7, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @CHAR_MAX, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %53
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TYPE_NUM, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @TYPE_UNQ, align 4
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @kwval_lookup.nastr, i64 0, i64 0), i8** %77, align 8
  br label %78

78:                                               ; preds = %76, %53
  br label %88

79:                                               ; preds = %27
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kwinfo, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @kwval_ltime(i32 %84)
  %86 = load i8**, i8*** %7, align 8
  store i8* %85, i8** %86, align 8
  %87 = load i32*, i32** %10, align 8
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %27, %79, %78, %45
  br label %93

89:                                               ; preds = %18
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %12, align 8
  br label %14

93:                                               ; preds = %88, %14
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i8* @nl_langinfo(i32) #1

declare dso_local i8* @kwval_lconv(i32) #1

declare dso_local i8* @kwval_ltime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
