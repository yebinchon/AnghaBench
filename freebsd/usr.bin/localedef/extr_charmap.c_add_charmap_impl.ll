; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_charmap.c_add_charmap_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_charmap.c_add_charmap_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

@cmap_wc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@cmap_sym = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"duplicate character definition\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @add_charmap_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_charmap_impl(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i64 %9, i64* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, -1
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i32, i32* @cmap_wc, align 4
  %17 = call i32* @RB_FIND(i32 %16, i32* @cmap_wc, %struct.TYPE_5__* %7)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = call %struct.TYPE_5__* @calloc(i32 1, i32 16)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %8, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @errf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %62

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @cmap_wc, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = call i32 @RB_INSERT(i32 %28, i32* @cmap_wc, %struct.TYPE_5__* %29)
  br label %31

31:                                               ; preds = %24, %15, %3
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %31
  %35 = load i32, i32* @cmap_sym, align 4
  %36 = call i32* @RB_FIND(i32 %35, i32* @cmap_sym, %struct.TYPE_5__* %7)
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @errf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  br label %62

44:                                               ; preds = %34
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = icmp eq %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = call %struct.TYPE_5__* @calloc(i32 1, i32 16)
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %8, align 8
  %49 = icmp eq %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @errf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %62

52:                                               ; preds = %47, %44
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @cmap_sym, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = call i32 @RB_INSERT(i32 %59, i32* @cmap_sym, %struct.TYPE_5__* %60)
  br label %62

62:                                               ; preds = %22, %43, %50, %52, %31
  ret void
}

declare dso_local i32* @RB_FIND(i32, i32*, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @errf(i8*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
