; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_add_client_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_add_client_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32, i32 }
%struct.ib_client = type { i32 }
%struct.ib_client_data = type { i32, i32, i32*, %struct.ib_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Couldn't allocate client context for %s/%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lists_rwsem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_client*)* @add_client_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_client_context(%struct.ib_device* %0, %struct.ib_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_client*, align 8
  %6 = alloca %struct.ib_client_data*, align 8
  %7 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_client* %1, %struct.ib_client** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ib_client_data* @kmalloc(i32 24, i32 %8)
  store %struct.ib_client_data* %9, %struct.ib_client_data** %6, align 8
  %10 = load %struct.ib_client_data*, %struct.ib_client_data** %6, align 8
  %11 = icmp ne %struct.ib_client_data* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %14 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %17 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.ib_client*, %struct.ib_client** %5, align 8
  %24 = load %struct.ib_client_data*, %struct.ib_client_data** %6, align 8
  %25 = getelementptr inbounds %struct.ib_client_data, %struct.ib_client_data* %24, i32 0, i32 3
  store %struct.ib_client* %23, %struct.ib_client** %25, align 8
  %26 = load %struct.ib_client_data*, %struct.ib_client_data** %6, align 8
  %27 = getelementptr inbounds %struct.ib_client_data, %struct.ib_client_data* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.ib_client_data*, %struct.ib_client_data** %6, align 8
  %29 = getelementptr inbounds %struct.ib_client_data, %struct.ib_client_data* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = call i32 @down_write(i32* @lists_rwsem)
  %31 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %32 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.ib_client_data*, %struct.ib_client_data** %6, align 8
  %36 = getelementptr inbounds %struct.ib_client_data, %struct.ib_client_data* %35, i32 0, i32 1
  %37 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %38 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %37, i32 0, i32 1
  %39 = call i32 @list_add(i32* %36, i32* %38)
  %40 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %41 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %40, i32 0, i32 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = call i32 @up_write(i32* @lists_rwsem)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %22, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.ib_client_data* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
