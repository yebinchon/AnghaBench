; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_agent.c_ib_agent_port_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_agent.c_ib_agent_port_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_agent_port_private = type { i8**, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No memory for ib_agent_port_private\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i32 0, align 4
@agent_send_handler = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@ib_agent_port_list_lock = common dso_local global i32 0, align 4
@ib_agent_port_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_agent_port_open(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_agent_port_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ib_agent_port_private* @kzalloc(i32 16, i32 %9)
  store %struct.ib_agent_port_private* %10, %struct.ib_agent_port_private** %6, align 8
  %11 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %12 = icmp ne %struct.ib_agent_port_private* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %97

19:                                               ; preds = %2
  %20 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @rdma_cap_ib_smi(%struct.ib_device* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IB_QPT_SMI, align 4
  %28 = call i8* @ib_register_mad_agent(%struct.ib_device* %25, i32 %26, i32 %27, i32* null, i32 0, i32* @agent_send_handler, i32* null, i32* null, i32 0)
  %29 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %30 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %28, i8** %32, align 8
  %33 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %34 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @IS_ERR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %24
  %41 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %42 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %8, align 4
  br label %94

47:                                               ; preds = %24
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @IB_QPT_GSI, align 4
  %52 = call i8* @ib_register_mad_agent(%struct.ib_device* %49, i32 %50, i32 %51, i32* null, i32 0, i32* @agent_send_handler, i32* null, i32* null, i32 0)
  %53 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %54 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  store i8* %52, i8** %56, align 8
  %57 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %58 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %48
  %65 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %66 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %8, align 4
  br label %79

71:                                               ; preds = %48
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_lock_irqsave(i32* @ib_agent_port_list_lock, i64 %72)
  %74 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %75 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %74, i32 0, i32 1
  %76 = call i32 @list_add_tail(i32* %75, i32* @ib_agent_port_list)
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* @ib_agent_port_list_lock, i64 %77)
  store i32 0, i32* %3, align 4
  br label %99

79:                                               ; preds = %64
  %80 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %81 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %88 = getelementptr inbounds %struct.ib_agent_port_private, %struct.ib_agent_port_private* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @ib_unregister_mad_agent(i8* %91)
  br label %93

93:                                               ; preds = %86, %79
  br label %94

94:                                               ; preds = %93, %40
  %95 = load %struct.ib_agent_port_private*, %struct.ib_agent_port_private** %6, align 8
  %96 = call i32 @kfree(%struct.ib_agent_port_private* %95)
  br label %97

97:                                               ; preds = %94, %13
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %71
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.ib_agent_port_private* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @rdma_cap_ib_smi(%struct.ib_device*, i32) #1

declare dso_local i8* @ib_register_mad_agent(%struct.ib_device*, i32, i32, i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_unregister_mad_agent(i8*) #1

declare dso_local i32 @kfree(%struct.ib_agent_port_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
