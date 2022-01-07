; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32*, %struct.ib_pd*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ib_mr* (%struct.ib_pd*, i32, i32)* }
%struct.ib_pd = type { i32, %struct.TYPE_2__* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @ib_alloc_mr(%struct.ib_pd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %10 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ib_mr* (%struct.ib_pd*, i32, i32)*, %struct.ib_mr* (%struct.ib_pd*, i32, i32)** %12, align 8
  %14 = icmp ne %struct.ib_mr* (%struct.ib_pd*, i32, i32)* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOSYS, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.ib_mr* @ERR_PTR(i32 %17)
  store %struct.ib_mr* %18, %struct.ib_mr** %4, align 8
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %21 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ib_mr* (%struct.ib_pd*, i32, i32)*, %struct.ib_mr* (%struct.ib_pd*, i32, i32)** %23, align 8
  %25 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.ib_mr* %24(%struct.ib_pd* %25, i32 %26, i32 %27)
  store %struct.ib_mr* %28, %struct.ib_mr** %8, align 8
  %29 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %30 = call i32 @IS_ERR(%struct.ib_mr* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %19
  %33 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %34 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %37 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %36, i32 0, i32 3
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %39 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %40 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %39, i32 0, i32 2
  store %struct.ib_pd* %38, %struct.ib_pd** %40, align 8
  %41 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %42 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %44 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %43, i32 0, i32 0
  %45 = call i32 @atomic_inc(i32* %44)
  %46 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %47 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %32, %19
  %49 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  store %struct.ib_mr* %49, %struct.ib_mr** %4, align 8
  br label %50

50:                                               ; preds = %48, %15
  %51 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  ret %struct.ib_mr* %51
}

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_mr*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
