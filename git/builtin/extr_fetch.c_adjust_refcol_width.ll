; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_adjust_refcol_width.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_adjust_refcol_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@compact_format = common dso_local global i64 0, align 8
@refcol_width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*)* @adjust_refcol_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_refcol_width(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ref* %0, %struct.ref** %2, align 8
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load %struct.ref*, %struct.ref** %2, align 8
  %11 = getelementptr inbounds %struct.ref, %struct.ref* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.ref*, %struct.ref** %2, align 8
  %15 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 2
  %16 = call i64 @oideq(i32* %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %55

19:                                               ; preds = %9, %1
  %20 = call i32 (...) @term_columns()
  store i32 %20, i32* %3, align 4
  %21 = load %struct.ref*, %struct.ref** %2, align 8
  %22 = getelementptr inbounds %struct.ref, %struct.ref* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @prettify_refname(i32 %23)
  %25 = call i32 @utf8_strwidth(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.ref*, %struct.ref** %2, align 8
  %27 = getelementptr inbounds %struct.ref, %struct.ref* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @prettify_refname(i32 %30)
  %32 = call i32 @utf8_strwidth(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i64, i64* @compact_format, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sdiv i32 %37, 3
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %19
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 21, %40
  %42 = add nsw i32 %41, 4
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %55

49:                                               ; preds = %39
  %50 = load i32, i32* @refcol_width, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* @refcol_width, align 4
  br label %55

55:                                               ; preds = %18, %48, %53, %49
  ret void
}

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @term_columns(...) #1

declare dso_local i32 @utf8_strwidth(i32) #1

declare dso_local i32 @prettify_refname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
