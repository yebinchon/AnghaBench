; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_queue_has_nonstale.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_queue_has_nonstale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prio_queue = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.commit* }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prio_queue*)* @queue_has_nonstale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_has_nonstale(%struct.prio_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.prio_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit*, align 8
  store %struct.prio_queue* %0, %struct.prio_queue** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %9 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %6
  %13 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %14 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.commit*, %struct.commit** %19, align 8
  store %struct.commit* %20, %struct.commit** %5, align 8
  %21 = load %struct.commit*, %struct.commit** %5, align 8
  %22 = getelementptr inbounds %struct.commit, %struct.commit* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @STALE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %34

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %6

33:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
