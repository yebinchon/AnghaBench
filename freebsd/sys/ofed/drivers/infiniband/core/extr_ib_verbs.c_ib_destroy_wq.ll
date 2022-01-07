; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_destroy_wq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_destroy_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wq = type { %struct.TYPE_2__*, i32, %struct.ib_pd*, %struct.ib_cq* }
%struct.TYPE_2__ = type { {}* }
%struct.ib_pd = type { i32 }
%struct.ib_cq = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_destroy_wq(%struct.ib_wq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_wq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  store %struct.ib_wq* %0, %struct.ib_wq** %3, align 8
  %7 = load %struct.ib_wq*, %struct.ib_wq** %3, align 8
  %8 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %7, i32 0, i32 3
  %9 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  store %struct.ib_cq* %9, %struct.ib_cq** %5, align 8
  %10 = load %struct.ib_wq*, %struct.ib_wq** %3, align 8
  %11 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %10, i32 0, i32 2
  %12 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  store %struct.ib_pd* %12, %struct.ib_pd** %6, align 8
  %13 = load %struct.ib_wq*, %struct.ib_wq** %3, align 8
  %14 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %13, i32 0, i32 1
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.ib_wq*, %struct.ib_wq** %3, align 8
  %22 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.ib_wq*)**
  %26 = load i32 (%struct.ib_wq*)*, i32 (%struct.ib_wq*)** %25, align 8
  %27 = load %struct.ib_wq*, %struct.ib_wq** %3, align 8
  %28 = call i32 %26(%struct.ib_wq* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %20
  %32 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %33 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %32, i32 0, i32 0
  %34 = call i32 @atomic_dec(i32* %33)
  %35 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %36 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %35, i32 0, i32 0
  %37 = call i32 @atomic_dec(i32* %36)
  br label %38

38:                                               ; preds = %31, %20
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
