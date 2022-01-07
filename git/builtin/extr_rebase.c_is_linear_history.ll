; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_is_linear_history.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_is_linear_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.commit*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, %struct.commit*)* @is_linear_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_linear_history(%struct.commit* %0, %struct.commit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  br label %6

6:                                                ; preds = %31, %2
  %7 = load %struct.commit*, %struct.commit** %5, align 8
  %8 = icmp ne %struct.commit* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load %struct.commit*, %struct.commit** %5, align 8
  %11 = load %struct.commit*, %struct.commit** %4, align 8
  %12 = icmp ne %struct.commit* %10, %11
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ]
  br i1 %14, label %15, label %37

15:                                               ; preds = %13
  %16 = load %struct.commit*, %struct.commit** %5, align 8
  %17 = call i32 @parse_commit(%struct.commit* %16)
  %18 = load %struct.commit*, %struct.commit** %5, align 8
  %19 = getelementptr inbounds %struct.commit, %struct.commit* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %38

23:                                               ; preds = %15
  %24 = load %struct.commit*, %struct.commit** %5, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %38

31:                                               ; preds = %23
  %32 = load %struct.commit*, %struct.commit** %5, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.commit*, %struct.commit** %35, align 8
  store %struct.commit* %36, %struct.commit** %5, align 8
  br label %6

37:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %30, %22
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @parse_commit(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
