; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cq.c_ib_free_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cq.c_ib_free_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ib_cq*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_free_cq(%struct.ib_cq* %0) #0 {
  %2 = alloca %struct.ib_cq*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %2, align 8
  %3 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %4 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %3, i32 0, i32 3
  %5 = call i64 @atomic_read(i32* %4)
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON_ONCE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %13 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %20 [
    i32 130, label %15
    i32 129, label %16
    i32 128, label %16
  ]

15:                                               ; preds = %11
  br label %21

16:                                               ; preds = %11, %11
  %17 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %18 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %17, i32 0, i32 2
  %19 = call i32 @flush_work(i32* %18)
  br label %21

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %16, %15
  %22 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %23 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ib_cq*)*, i32 (%struct.ib_cq*)** %25, align 8
  %27 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %28 = call i32 %26(%struct.ib_cq* %27)
  br label %29

29:                                               ; preds = %21, %10
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
