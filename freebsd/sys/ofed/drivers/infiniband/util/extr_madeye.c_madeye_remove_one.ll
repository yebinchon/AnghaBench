; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_madeye_remove_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_madeye_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, i32 }
%struct.madeye_port = type { i32, i32 }

@madeye_client = common dso_local global i32 0, align 4
@RDMA_NODE_IB_SWITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @madeye_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madeye_remove_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.madeye_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %8 = call i64 @ib_get_client_data(%struct.ib_device* %7, i32* @madeye_client)
  %9 = inttoptr i64 %8 to %struct.madeye_port*
  store %struct.madeye_port* %9, %struct.madeye_port** %3, align 8
  %10 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %11 = icmp ne %struct.madeye_port* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %72

13:                                               ; preds = %1
  %14 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %15 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %24

20:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  %21 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %22 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %19
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %66, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %27, %28
  %30 = icmp sle i32 %26, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %32, i64 %34
  %36 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IS_ERR(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %31
  %41 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %41, i64 %43
  %45 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ib_unregister_mad_agent(i32 %46)
  br label %48

48:                                               ; preds = %40, %31
  %49 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %49, i64 %51
  %53 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IS_ERR(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %48
  %58 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %58, i64 %60
  %62 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ib_unregister_mad_agent(i32 %63)
  br label %65

65:                                               ; preds = %57, %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %25

69:                                               ; preds = %25
  %70 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %71 = call i32 @kfree(%struct.madeye_port* %70)
  br label %72

72:                                               ; preds = %69, %12
  ret void
}

declare dso_local i64 @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @ib_unregister_mad_agent(i32) #1

declare dso_local i32 @kfree(%struct.madeye_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
