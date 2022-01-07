; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_unravel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_unravel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cand = type { i64, i32, i32 }

@len = common dso_local global i32* null, align 8
@pref = common dso_local global i32 0, align 4
@suff = common dso_local global i32 0, align 4
@J = common dso_local global i32* null, align 8
@clist = common dso_local global %struct.cand* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @unravel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unravel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cand*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32*, i32** @len, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sle i32 %6, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %5
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @pref, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  br label %38

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** @len, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @suff, align 4
  %23 = sub nsw i32 %21, %22
  %24 = icmp sgt i32 %18, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = load i32*, i32** @len, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = load i32*, i32** @len, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  br label %36

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35, %25
  %37 = phi i32 [ %34, %25 ], [ 0, %35 ]
  br label %38

38:                                               ; preds = %36, %15
  %39 = phi i32 [ %16, %15 ], [ %37, %36 ]
  %40 = load i32*, i32** @J, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %5

47:                                               ; preds = %5
  %48 = load %struct.cand*, %struct.cand** @clist, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cand, %struct.cand* %48, i64 %50
  store %struct.cand* %51, %struct.cand** %3, align 8
  br label %52

52:                                               ; preds = %73, %47
  %53 = load %struct.cand*, %struct.cand** %3, align 8
  %54 = getelementptr inbounds %struct.cand, %struct.cand* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load %struct.cand*, %struct.cand** %3, align 8
  %59 = getelementptr inbounds %struct.cand, %struct.cand* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @pref, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** @J, align 8
  %66 = load %struct.cand*, %struct.cand** %3, align 8
  %67 = getelementptr inbounds %struct.cand, %struct.cand* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @pref, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  store i32 %64, i32* %72, align 4
  br label %73

73:                                               ; preds = %57
  %74 = load %struct.cand*, %struct.cand** @clist, align 8
  %75 = load %struct.cand*, %struct.cand** %3, align 8
  %76 = getelementptr inbounds %struct.cand, %struct.cand* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.cand, %struct.cand* %74, i64 %78
  store %struct.cand* %79, %struct.cand** %3, align 8
  br label %52

80:                                               ; preds = %52
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
