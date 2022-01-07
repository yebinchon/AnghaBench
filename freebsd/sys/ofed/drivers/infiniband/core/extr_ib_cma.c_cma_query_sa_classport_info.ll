; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_query_sa_classport_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_query_sa_classport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_class_port_info = type { i32 }
%struct.class_port_info_context = type { i32, i32, i32, %struct.ib_class_port_info*, %struct.ib_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sa_client = common dso_local global i32 0, align 4
@CMA_QUERY_CLASSPORT_INFO_TIMEOUT = common dso_local global i32 0, align 4
@cma_query_sa_classport_info_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"RDMA CM: %s port %u failed to send ClassPortInfo query, ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_class_port_info*)* @cma_query_sa_classport_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_query_sa_classport_info(%struct.ib_device* %0, i32 %1, %struct.ib_class_port_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_class_port_info*, align 8
  %8 = alloca %struct.class_port_info_context*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_class_port_info* %2, %struct.ib_class_port_info** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.class_port_info_context* @kmalloc(i32 32, i32 %10)
  store %struct.class_port_info_context* %11, %struct.class_port_info_context** %8, align 8
  %12 = load %struct.class_port_info_context*, %struct.class_port_info_context** %8, align 8
  %13 = icmp ne %struct.class_port_info_context* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %19 = load %struct.class_port_info_context*, %struct.class_port_info_context** %8, align 8
  %20 = getelementptr inbounds %struct.class_port_info_context, %struct.class_port_info_context* %19, i32 0, i32 4
  store %struct.ib_device* %18, %struct.ib_device** %20, align 8
  %21 = load %struct.ib_class_port_info*, %struct.ib_class_port_info** %7, align 8
  %22 = load %struct.class_port_info_context*, %struct.class_port_info_context** %8, align 8
  %23 = getelementptr inbounds %struct.class_port_info_context, %struct.class_port_info_context* %22, i32 0, i32 3
  store %struct.ib_class_port_info* %21, %struct.ib_class_port_info** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.class_port_info_context*, %struct.class_port_info_context** %8, align 8
  %26 = getelementptr inbounds %struct.class_port_info_context, %struct.class_port_info_context* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.class_port_info_context*, %struct.class_port_info_context** %8, align 8
  %28 = getelementptr inbounds %struct.class_port_info_context, %struct.class_port_info_context* %27, i32 0, i32 0
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CMA_QUERY_CLASSPORT_INFO_TIMEOUT, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load i32, i32* @cma_query_sa_classport_info_cb, align 4
  %35 = load %struct.class_port_info_context*, %struct.class_port_info_context** %8, align 8
  %36 = load %struct.class_port_info_context*, %struct.class_port_info_context** %8, align 8
  %37 = getelementptr inbounds %struct.class_port_info_context, %struct.class_port_info_context* %36, i32 0, i32 1
  %38 = call i32 @ib_sa_classport_info_rec_query(i32* @sa_client, %struct.ib_device* %30, i32 %31, i32 %32, i32 %33, i32 %34, %struct.class_port_info_context* %35, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %17
  %42 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %43 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46)
  br label %52

48:                                               ; preds = %17
  %49 = load %struct.class_port_info_context*, %struct.class_port_info_context** %8, align 8
  %50 = getelementptr inbounds %struct.class_port_info_context, %struct.class_port_info_context* %49, i32 0, i32 0
  %51 = call i32 @wait_for_completion(i32* %50)
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.class_port_info_context*, %struct.class_port_info_context** %8, align 8
  %54 = call i32 @kfree(%struct.class_port_info_context* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.class_port_info_context* @kmalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ib_sa_classport_info_rec_query(i32*, %struct.ib_device*, i32, i32, i32, i32, %struct.class_port_info_context*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(%struct.class_port_info_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
