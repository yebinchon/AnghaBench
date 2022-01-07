; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_rdma_copy_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_rdma_copy_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_dev_addr = type { i32, i32, i32, i32, i8* }
%struct.net_device = type { i32, i64, i8*, i32, i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i8* null, align 8
@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@IFT_INFINIBAND = common dso_local global i64 0, align 8
@ARPHRD_INFINIBAND = common dso_local global i8* null, align 8
@IFT_ETHER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_copy_addr(%struct.rdma_dev_addr* %0, %struct.net_device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_dev_addr*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  store %struct.rdma_dev_addr* %0, %struct.rdma_dev_addr** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %6, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IFF_LOOPBACK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load i8*, i8** @ARPHRD_ETHER, align 8
  %16 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %17 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %19 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MAX_ADDR_LEN, align 4
  %22 = call i32 @memset(i32 %20, i32 0, i32 %21)
  %23 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %24 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MAX_ADDR_LEN, align 4
  %27 = call i32 @memset(i32 %25, i32 0, i32 %26)
  %28 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %29 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MAX_ADDR_LEN, align 4
  %32 = call i32 @memset(i32 %30, i32 0, i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %37 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %4, align 4
  br label %103

38:                                               ; preds = %3
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IFT_INFINIBAND, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** @ARPHRD_INFINIBAND, align 8
  %46 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %47 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  br label %62

48:                                               ; preds = %38
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IFT_ETHER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i8*, i8** @ARPHRD_ETHER, align 8
  %56 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %57 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  br label %61

58:                                               ; preds = %48
  %59 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %60 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %59, i32 0, i32 4
  store i8* null, i8** %60, align 8
  br label %61

61:                                               ; preds = %58, %54
  br label %62

62:                                               ; preds = %61, %44
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %65 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call i8* @IF_LLADDR(%struct.net_device* %67)
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MAX_ADDR_LEN, align 4
  %73 = call i32 @rdma_copy_addr_sub(i32 %66, i8* %68, i32 %71, i32 %72)
  %74 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %75 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.net_device*, %struct.net_device** %6, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MAX_ADDR_LEN, align 4
  %84 = call i32 @rdma_copy_addr_sub(i32 %76, i8* %79, i32 %82, i32 %83)
  %85 = load i8*, i8** %7, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %63
  %88 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %89 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.net_device*, %struct.net_device** %6, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MAX_ADDR_LEN, align 4
  %96 = call i32 @rdma_copy_addr_sub(i32 %90, i8* %91, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %87, %63
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %102 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %97, %14
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rdma_copy_addr_sub(i32, i8*, i32, i32) #1

declare dso_local i8* @IF_LLADDR(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
