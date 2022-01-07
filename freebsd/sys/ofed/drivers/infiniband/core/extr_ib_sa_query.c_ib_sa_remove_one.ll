; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_ib_sa_remove_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_ib_sa_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_device = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@ib_wq = common dso_local global i32 0, align 4
@free_sm_ah = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*)* @ib_sa_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_sa_remove_one(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ib_sa_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ib_sa_device*
  store %struct.ib_sa_device* %8, %struct.ib_sa_device** %5, align 8
  %9 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %10 = icmp ne %struct.ib_sa_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %73

12:                                               ; preds = %2
  %13 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %14 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %13, i32 0, i32 3
  %15 = call i32 @ib_unregister_event_handler(i32* %14)
  %16 = load i32, i32* @ib_wq, align 4
  %17 = call i32 @flush_workqueue(i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %67, %12
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %21 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %24 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = icmp sle i32 %19, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %18
  %29 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i64 @rdma_cap_ib_sa(%struct.ib_device* %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  %35 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %36 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ib_unregister_mad_agent(i32 %42)
  %44 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %45 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %34
  %54 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %55 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* @free_sm_ah, align 4
  %64 = call i32 @kref_put(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %53, %34
  br label %66

66:                                               ; preds = %65, %28
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %18

70:                                               ; preds = %18
  %71 = load %struct.ib_sa_device*, %struct.ib_sa_device** %5, align 8
  %72 = call i32 @kfree(%struct.ib_sa_device* %71)
  br label %73

73:                                               ; preds = %70, %11
  ret void
}

declare dso_local i32 @ib_unregister_event_handler(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i64 @rdma_cap_ib_sa(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_unregister_mad_agent(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kfree(%struct.ib_sa_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
