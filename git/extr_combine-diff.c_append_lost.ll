; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_append_lost.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_append_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sline = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.lline*, %struct.lline* }
%struct.lline = type { i32, i64, %struct.lline*, %struct.lline* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sline*, i32, i8*, i32)* @append_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_lost(%struct.sline* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sline*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lline*, align 8
  %10 = alloca i64, align 8
  store %struct.sline* %0, %struct.sline** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = shl i64 1, %12
  store i64 %13, i64* %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %4
  %26 = load %struct.lline*, %struct.lline** %9, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @FLEX_ALLOC_MEM(%struct.lline* %26, i8* %27, i8* %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.lline*, %struct.lline** %9, align 8
  %33 = getelementptr inbounds %struct.lline, %struct.lline* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.lline*, %struct.lline** %9, align 8
  %35 = getelementptr inbounds %struct.lline, %struct.lline* %34, i32 0, i32 2
  store %struct.lline* null, %struct.lline** %35, align 8
  %36 = load %struct.sline*, %struct.sline** %5, align 8
  %37 = getelementptr inbounds %struct.sline, %struct.sline* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.lline*, %struct.lline** %38, align 8
  %40 = load %struct.lline*, %struct.lline** %9, align 8
  %41 = getelementptr inbounds %struct.lline, %struct.lline* %40, i32 0, i32 3
  store %struct.lline* %39, %struct.lline** %41, align 8
  %42 = load %struct.lline*, %struct.lline** %9, align 8
  %43 = getelementptr inbounds %struct.lline, %struct.lline* %42, i32 0, i32 3
  %44 = load %struct.lline*, %struct.lline** %43, align 8
  %45 = icmp ne %struct.lline* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %25
  %47 = load %struct.lline*, %struct.lline** %9, align 8
  %48 = load %struct.lline*, %struct.lline** %9, align 8
  %49 = getelementptr inbounds %struct.lline, %struct.lline* %48, i32 0, i32 3
  %50 = load %struct.lline*, %struct.lline** %49, align 8
  %51 = getelementptr inbounds %struct.lline, %struct.lline* %50, i32 0, i32 2
  store %struct.lline* %47, %struct.lline** %51, align 8
  br label %57

52:                                               ; preds = %25
  %53 = load %struct.lline*, %struct.lline** %9, align 8
  %54 = load %struct.sline*, %struct.sline** %5, align 8
  %55 = getelementptr inbounds %struct.sline, %struct.sline* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store %struct.lline* %53, %struct.lline** %56, align 8
  br label %57

57:                                               ; preds = %52, %46
  %58 = load %struct.lline*, %struct.lline** %9, align 8
  %59 = load %struct.sline*, %struct.sline** %5, align 8
  %60 = getelementptr inbounds %struct.sline, %struct.sline* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store %struct.lline* %58, %struct.lline** %61, align 8
  %62 = load %struct.sline*, %struct.sline** %5, align 8
  %63 = getelementptr inbounds %struct.sline, %struct.sline* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.lline*, %struct.lline** %9, align 8
  %69 = getelementptr inbounds %struct.lline, %struct.lline* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  ret void
}

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.lline*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
