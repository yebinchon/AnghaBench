; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_madeye_add_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_madeye_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, i32 }
%struct.madeye_port = type { i8*, i8* }

@RDMA_NODE_IB_SWITCH = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_MAD_SNOOP_SEND_COMPLETIONS = common dso_local global i32 0, align 4
@IB_MAD_SNOOP_RECVS = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i32 0, align 4
@snoop_smi_handler = common dso_local global i32 0, align 4
@recv_smi_handler = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@snoop_gsi_handler = common dso_local global i32 0, align 4
@recv_gsi_handler = common dso_local global i32 0, align 4
@madeye_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @madeye_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madeye_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.madeye_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %9 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

14:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  %15 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %16 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %19, %20
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 16, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.madeye_port* @kmalloc(i32 %25, i32 %26)
  store %struct.madeye_port* %27, %struct.madeye_port** %3, align 8
  %28 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %29 = icmp ne %struct.madeye_port* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %82

31:                                               ; preds = %18
  %32 = load i32, i32* @IB_MAD_SNOOP_SEND_COMPLETIONS, align 4
  %33 = load i32, i32* @IB_MAD_SNOOP_RECVS, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %78, %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %35
  %42 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @IB_QPT_SMI, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @snoop_smi_handler, align 4
  %49 = load i32, i32* @recv_smi_handler, align 4
  %50 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %50, i64 %52
  %54 = call i8* @ib_register_mad_snoop(%struct.ib_device* %42, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, %struct.madeye_port* %53)
  %55 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %55, i64 %57
  %59 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %58, i32 0, i32 1
  store i8* %54, i8** %59, align 8
  %60 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @IB_QPT_GSI, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @snoop_gsi_handler, align 4
  %67 = load i32, i32* @recv_gsi_handler, align 4
  %68 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %68, i64 %70
  %72 = call i8* @ib_register_mad_snoop(%struct.ib_device* %60, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, %struct.madeye_port* %71)
  %73 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %73, i64 %75
  %77 = getelementptr inbounds %struct.madeye_port, %struct.madeye_port* %76, i32 0, i32 0
  store i8* %72, i8** %77, align 8
  br label %78

78:                                               ; preds = %41
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %35

81:                                               ; preds = %35
  br label %82

82:                                               ; preds = %81, %30
  %83 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %84 = load %struct.madeye_port*, %struct.madeye_port** %3, align 8
  %85 = call i32 @ib_set_client_data(%struct.ib_device* %83, i32* @madeye_client, %struct.madeye_port* %84)
  ret void
}

declare dso_local %struct.madeye_port* @kmalloc(i32, i32) #1

declare dso_local i8* @ib_register_mad_snoop(%struct.ib_device*, i32, i32, i32, i32, i32, %struct.madeye_port*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.madeye_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
