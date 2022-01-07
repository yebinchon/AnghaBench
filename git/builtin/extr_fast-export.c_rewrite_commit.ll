; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_rewrite_commit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_rewrite_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.commit*, i64 }
%struct.TYPE_3__ = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@TREESAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.commit*)* @rewrite_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @rewrite_commit(%struct.commit* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.commit*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  br label %4

4:                                                ; preds = %41, %1
  %5 = load %struct.commit*, %struct.commit** %3, align 8
  %6 = getelementptr inbounds %struct.commit, %struct.commit* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load %struct.commit*, %struct.commit** %3, align 8
  %11 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %47

17:                                               ; preds = %9, %4
  %18 = load %struct.commit*, %struct.commit** %3, align 8
  %19 = getelementptr inbounds %struct.commit, %struct.commit* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UNINTERESTING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %47

26:                                               ; preds = %17
  %27 = load %struct.commit*, %struct.commit** %3, align 8
  %28 = getelementptr inbounds %struct.commit, %struct.commit* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TREESAME, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %47

35:                                               ; preds = %26
  %36 = load %struct.commit*, %struct.commit** %3, align 8
  %37 = getelementptr inbounds %struct.commit, %struct.commit* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store %struct.commit* null, %struct.commit** %2, align 8
  br label %49

41:                                               ; preds = %35
  %42 = load %struct.commit*, %struct.commit** %3, align 8
  %43 = getelementptr inbounds %struct.commit, %struct.commit* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.commit*, %struct.commit** %45, align 8
  store %struct.commit* %46, %struct.commit** %3, align 8
  br label %4

47:                                               ; preds = %34, %25, %16
  %48 = load %struct.commit*, %struct.commit** %3, align 8
  store %struct.commit* %48, %struct.commit** %2, align 8
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.commit*, %struct.commit** %2, align 8
  ret %struct.commit* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
