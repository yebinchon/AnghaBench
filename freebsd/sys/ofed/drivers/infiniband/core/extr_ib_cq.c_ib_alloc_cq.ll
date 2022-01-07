; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cq.c_ib_alloc_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cq.c_ib_alloc_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, i32, i32*, i32, i8*, i32*, i32*, %struct.ib_device* }
%struct.ib_device = type { %struct.ib_cq* (%struct.ib_device*, %struct.ib_cq_init_attr*, i32*, i32*)* }
%struct.ib_cq_init_attr = type opaque
%struct.ib_cq_init_attr.0 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ib_cq_completion_workqueue = common dso_local global i32* null, align 8
@ib_cq_poll_work = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_cq* @ib_alloc_cq(%struct.ib_device* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_cq_init_attr.0, align 4
  %13 = alloca %struct.ib_cq*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = getelementptr inbounds %struct.ib_cq_init_attr.0, %struct.ib_cq_init_attr.0* %12, i32 0, i32 0
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ib_cq_init_attr.0, %struct.ib_cq_init_attr.0* %12, i32 0, i32 1
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %20 [
    i32 130, label %19
    i32 129, label %19
    i32 128, label %19
  ]

19:                                               ; preds = %5, %5, %5
  br label %24

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.ib_cq* @ERR_PTR(i32 %22)
  store %struct.ib_cq* %23, %struct.ib_cq** %6, align 8
  br label %71

24:                                               ; preds = %19
  %25 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 0
  %27 = load %struct.ib_cq* (%struct.ib_device*, %struct.ib_cq_init_attr*, i32*, i32*)*, %struct.ib_cq* (%struct.ib_device*, %struct.ib_cq_init_attr*, i32*, i32*)** %26, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %29 = bitcast %struct.ib_cq_init_attr.0* %12 to %struct.ib_cq_init_attr*
  %30 = call %struct.ib_cq* %27(%struct.ib_device* %28, %struct.ib_cq_init_attr* %29, i32* null, i32* null)
  store %struct.ib_cq* %30, %struct.ib_cq** %13, align 8
  %31 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %32 = call i64 @IS_ERR(%struct.ib_cq* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  store %struct.ib_cq* %35, %struct.ib_cq** %6, align 8
  br label %71

36:                                               ; preds = %24
  %37 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %38 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %39 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %38, i32 0, i32 7
  store %struct.ib_device* %37, %struct.ib_device** %39, align 8
  %40 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %41 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %40, i32 0, i32 6
  store i32* null, i32** %41, align 8
  %42 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %43 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %42, i32 0, i32 5
  store i32* null, i32** %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %46 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %49 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %51 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %50, i32 0, i32 3
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %68 [
    i32 130, label %54
    i32 129, label %57
    i32 128, label %57
  ]

54:                                               ; preds = %36
  %55 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %56 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  br label %69

57:                                               ; preds = %36, %36
  %58 = load i32*, i32** @ib_cq_completion_workqueue, align 8
  %59 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %60 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %62 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %61, i32 0, i32 1
  %63 = load i32, i32* @ib_cq_poll_work, align 4
  %64 = call i32 @INIT_WORK(i32* %62, i32 %63)
  %65 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %66 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %67 = call i32 @ib_req_notify_cq(%struct.ib_cq* %65, i32 %66)
  br label %69

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %68, %57, %54
  %70 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  store %struct.ib_cq* %70, %struct.ib_cq** %6, align 8
  br label %71

71:                                               ; preds = %69, %34, %20
  %72 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  ret %struct.ib_cq* %72
}

declare dso_local %struct.ib_cq* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_cq*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ib_req_notify_cq(%struct.ib_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
