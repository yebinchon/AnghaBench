; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_alloc_xrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_alloc_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_xrcd = type { i32, i32, i32, i32*, %struct.ib_device* }
%struct.ib_device = type { %struct.ib_xrcd* (%struct.ib_device*, i32*, i32*)* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_xrcd* @ib_alloc_xrcd(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_xrcd*, align 8
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ib_xrcd*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  %5 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %6 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %5, i32 0, i32 0
  %7 = load %struct.ib_xrcd* (%struct.ib_device*, i32*, i32*)*, %struct.ib_xrcd* (%struct.ib_device*, i32*, i32*)** %6, align 8
  %8 = icmp ne %struct.ib_xrcd* (%struct.ib_device*, i32*, i32*)* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOSYS, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.ib_xrcd* @ERR_PTR(i32 %11)
  store %struct.ib_xrcd* %12, %struct.ib_xrcd** %2, align 8
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %15 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %14, i32 0, i32 0
  %16 = load %struct.ib_xrcd* (%struct.ib_device*, i32*, i32*)*, %struct.ib_xrcd* (%struct.ib_device*, i32*, i32*)** %15, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %18 = call %struct.ib_xrcd* %16(%struct.ib_device* %17, i32* null, i32* null)
  store %struct.ib_xrcd* %18, %struct.ib_xrcd** %4, align 8
  %19 = load %struct.ib_xrcd*, %struct.ib_xrcd** %4, align 8
  %20 = call i32 @IS_ERR(%struct.ib_xrcd* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %13
  %23 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %24 = load %struct.ib_xrcd*, %struct.ib_xrcd** %4, align 8
  %25 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %24, i32 0, i32 4
  store %struct.ib_device* %23, %struct.ib_device** %25, align 8
  %26 = load %struct.ib_xrcd*, %struct.ib_xrcd** %4, align 8
  %27 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load %struct.ib_xrcd*, %struct.ib_xrcd** %4, align 8
  %29 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %28, i32 0, i32 2
  %30 = call i32 @atomic_set(i32* %29, i32 0)
  %31 = load %struct.ib_xrcd*, %struct.ib_xrcd** %4, align 8
  %32 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %31, i32 0, i32 1
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.ib_xrcd*, %struct.ib_xrcd** %4, align 8
  %35 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %34, i32 0, i32 0
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  br label %37

37:                                               ; preds = %22, %13
  %38 = load %struct.ib_xrcd*, %struct.ib_xrcd** %4, align 8
  store %struct.ib_xrcd* %38, %struct.ib_xrcd** %2, align 8
  br label %39

39:                                               ; preds = %37, %9
  %40 = load %struct.ib_xrcd*, %struct.ib_xrcd** %2, align 8
  ret %struct.ib_xrcd* %40
}

declare dso_local %struct.ib_xrcd* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_xrcd*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
