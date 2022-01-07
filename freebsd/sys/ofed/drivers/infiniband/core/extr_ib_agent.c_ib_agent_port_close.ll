; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_agent.c_ib_agent_port_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_agent.c_ib_agent_port_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_agent_port_private = type { i64*, i32 }

@ib_agent_port_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Port %d not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_agent_port_close(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_agent_port_private*, align 8
  %7 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @ib_agent_port_list_lock, i64 %8)
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.ib_agent_port_private* @__ib_get_agent_port(%struct.ib_device* %10, i32 %11)
  store %struct.ib_agent_port_private* %12, %struct.ib_agent_port_private** %6, align 8
  %13 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %14 = icmp eq %struct.ib_agent_port_private* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @ib_agent_port_list_lock, i64 %16)
  %18 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %19 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %26 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %25, i32 0, i32 1
  %27 = call i32 @list_del(i32* %26)
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @ib_agent_port_list_lock, i64 %28)
  %30 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %31 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ib_unregister_mad_agent(i64 %34)
  %36 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %37 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %24
  %43 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %44 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ib_unregister_mad_agent(i64 %47)
  br label %49

49:                                               ; preds = %42, %24
  %50 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %51 = call i32 @kfree(%struct.ib_agent_port_private* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ib_agent_port_private* @__ib_get_agent_port(%struct.ib_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ib_unregister_mad_agent(i64) #1

declare dso_local i32 @kfree(%struct.ib_agent_port_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
