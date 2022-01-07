; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_enum_roce_netdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_enum_roce_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.net_device* (%struct.ib_device*, i64)* }
%struct.net_device = type { i32 }

@IFF_DYING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_enum_roce_netdev(%struct.ib_device* %0, i64 (%struct.ib_device*, i64, %struct.net_device*, i8*)* %1, i8* %2, i32 (%struct.ib_device*, i64, %struct.net_device*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64 (%struct.ib_device*, i64, %struct.net_device*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.ib_device*, i64, %struct.net_device*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.net_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 (%struct.ib_device*, i64, %struct.net_device*, i8*)* %1, i64 (%struct.ib_device*, i64, %struct.net_device*, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (%struct.ib_device*, i64, %struct.net_device*, i8*)* %3, i32 (%struct.ib_device*, i64, %struct.net_device*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %14 = call i64 @rdma_start_port(%struct.ib_device* %13)
  store i64 %14, i64* %11, align 8
  br label %15

15:                                               ; preds = %73, %5
  %16 = load i64, i64* %11, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %18 = call i64 @rdma_end_port(%struct.ib_device* %17)
  %19 = icmp sle i64 %16, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %15
  %21 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @rdma_protocol_roce(%struct.ib_device* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %20
  store %struct.net_device* null, %struct.net_device** %12, align 8
  %26 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %27 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %26, i32 0, i32 0
  %28 = load %struct.net_device* (%struct.ib_device*, i64)*, %struct.net_device* (%struct.ib_device*, i64)** %27, align 8
  %29 = icmp ne %struct.net_device* (%struct.ib_device*, i64)* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %32 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %31, i32 0, i32 0
  %33 = load %struct.net_device* (%struct.ib_device*, i64)*, %struct.net_device* (%struct.ib_device*, i64)** %32, align 8
  %34 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call %struct.net_device* %33(%struct.ib_device* %34, i64 %35)
  store %struct.net_device* %36, %struct.net_device** %12, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.net_device*, %struct.net_device** %12, align 8
  %39 = icmp ne %struct.net_device* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.net_device*, %struct.net_device** %12, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_DYING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %12, align 8
  %49 = call i32 @dev_put(%struct.net_device* %48)
  store %struct.net_device* null, %struct.net_device** %12, align 8
  br label %50

50:                                               ; preds = %47, %40, %37
  %51 = load i64 (%struct.ib_device*, i64, %struct.net_device*, i8*)*, i64 (%struct.ib_device*, i64, %struct.net_device*, i8*)** %7, align 8
  %52 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.net_device*, %struct.net_device** %12, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 %51(%struct.ib_device* %52, i64 %53, %struct.net_device* %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i32 (%struct.ib_device*, i64, %struct.net_device*, i8*)*, i32 (%struct.ib_device*, i64, %struct.net_device*, i8*)** %9, align 8
  %60 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.net_device*, %struct.net_device** %12, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 %59(%struct.ib_device* %60, i64 %61, %struct.net_device* %62, i8* %63)
  br label %65

65:                                               ; preds = %58, %50
  %66 = load %struct.net_device*, %struct.net_device** %12, align 8
  %67 = icmp ne %struct.net_device* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.net_device*, %struct.net_device** %12, align 8
  %70 = call i32 @dev_put(%struct.net_device* %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %20
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %11, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %11, align 8
  br label %15

76:                                               ; preds = %15
  ret void
}

declare dso_local i64 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i64 @rdma_end_port(%struct.ib_device*) #1

declare dso_local i64 @rdma_protocol_roce(%struct.ib_device*, i64) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
