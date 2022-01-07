; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_add_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, i32 }
%struct.list_head = type { i32 }
%struct.ifnet = type { %struct.ipoib_dev_priv* }
%struct.ipoib_dev_priv = type { i32 }

@RDMA_TRANSPORT_IB = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@RDMA_NODE_IB_SWITCH = common dso_local global i64 0, align 8
@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"ib\00", align 1
@ipoib_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ipoib_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %10 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @rdma_node_get_transport(i64 %11)
  %13 = load i64, i64* @RDMA_TRANSPORT_IB, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %71

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.list_head* @kmalloc(i32 4, i32 %17)
  store %struct.list_head* %18, %struct.list_head** %3, align 8
  %19 = load %struct.list_head*, %struct.list_head** %3, align 8
  %20 = icmp ne %struct.list_head* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %71

22:                                               ; preds = %16
  %23 = load %struct.list_head*, %struct.list_head** %3, align 8
  %24 = call i32 @INIT_LIST_HEAD(%struct.list_head* %23)
  %25 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %35

31:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  %32 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %33 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %30
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %64, %35
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %42, i32 %43)
  %45 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %64

48:                                               ; preds = %41
  %49 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call %struct.ifnet* @ipoib_add_port(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.ib_device* %49, i32 %50)
  store %struct.ifnet* %51, %struct.ifnet** %4, align 8
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = call i32 @IS_ERR(%struct.ifnet* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %48
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 0
  %58 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %57, align 8
  store %struct.ipoib_dev_priv* %58, %struct.ipoib_dev_priv** %5, align 8
  %59 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %60 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %59, i32 0, i32 0
  %61 = load %struct.list_head*, %struct.list_head** %3, align 8
  %62 = call i32 @list_add_tail(i32* %60, %struct.list_head* %61)
  br label %63

63:                                               ; preds = %55, %48
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %37

67:                                               ; preds = %37
  %68 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %69 = load %struct.list_head*, %struct.list_head** %3, align 8
  %70 = call i32 @ib_set_client_data(%struct.ib_device* %68, i32* @ipoib_client, %struct.list_head* %69)
  br label %71

71:                                               ; preds = %67, %21, %15
  ret void
}

declare dso_local i64 @rdma_node_get_transport(i64) #1

declare dso_local %struct.list_head* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local %struct.ifnet* @ipoib_add_port(i8*, %struct.ib_device*, i32) #1

declare dso_local i32 @IS_ERR(%struct.ifnet*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
