; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_save_ip_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_save_ip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.ib_cm_event = type { %struct.cma_hdr* }
%struct.cma_hdr = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@RDMA_PS_SDP = common dso_local global i64 0, align 8
@CMA_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, %struct.ib_cm_event*, i32)* @cma_save_ip_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_save_ip_info(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.ib_cm_event* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.ib_cm_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cma_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.ib_cm_event* %2, %struct.ib_cm_event** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i64 @rdma_ps_from_service_id(i32 %12)
  %14 = load i64, i64* @RDMA_PS_SDP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %19 = load %struct.ib_cm_event*, %struct.ib_cm_event** %8, align 8
  %20 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %19, i32 0, i32 0
  %21 = load %struct.cma_hdr*, %struct.cma_hdr** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @sdp_save_ip_info(%struct.sockaddr* %17, %struct.sockaddr* %18, %struct.cma_hdr* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %62

24:                                               ; preds = %4
  %25 = load %struct.ib_cm_event*, %struct.ib_cm_event** %8, align 8
  %26 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %25, i32 0, i32 0
  %27 = load %struct.cma_hdr*, %struct.cma_hdr** %26, align 8
  store %struct.cma_hdr* %27, %struct.cma_hdr** %10, align 8
  %28 = load %struct.cma_hdr*, %struct.cma_hdr** %10, align 8
  %29 = getelementptr inbounds %struct.cma_hdr, %struct.cma_hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CMA_VERSION, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %62

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @cma_port_from_service_id(i32 %37)
  %39 = call i32 @htons(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.cma_hdr*, %struct.cma_hdr** %10, align 8
  %41 = call i32 @cma_get_ip_ver(%struct.cma_hdr* %40)
  switch i32 %41, label %58 [
    i32 4, label %42
    i32 6, label %50
  ]

42:                                               ; preds = %36
  %43 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %44 = bitcast %struct.sockaddr* %43 to %struct.sockaddr_in*
  %45 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %46 = bitcast %struct.sockaddr* %45 to %struct.sockaddr_in*
  %47 = load %struct.cma_hdr*, %struct.cma_hdr** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @cma_save_ip4_info(%struct.sockaddr_in* %44, %struct.sockaddr_in* %46, %struct.cma_hdr* %47, i32 %48)
  br label %61

50:                                               ; preds = %36
  %51 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %52 = bitcast %struct.sockaddr* %51 to %struct.sockaddr_in6*
  %53 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %54 = bitcast %struct.sockaddr* %53 to %struct.sockaddr_in6*
  %55 = load %struct.cma_hdr*, %struct.cma_hdr** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @cma_save_ip6_info(%struct.sockaddr_in6* %52, %struct.sockaddr_in6* %54, %struct.cma_hdr* %55, i32 %56)
  br label %61

58:                                               ; preds = %36
  %59 = load i32, i32* @EAFNOSUPPORT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %50, %42
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %58, %33, %16
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @rdma_ps_from_service_id(i32) #1

declare dso_local i32 @sdp_save_ip_info(%struct.sockaddr*, %struct.sockaddr*, %struct.cma_hdr*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @cma_port_from_service_id(i32) #1

declare dso_local i32 @cma_get_ip_ver(%struct.cma_hdr*) #1

declare dso_local i32 @cma_save_ip4_info(%struct.sockaddr_in*, %struct.sockaddr_in*, %struct.cma_hdr*, i32) #1

declare dso_local i32 @cma_save_ip6_info(%struct.sockaddr_in6*, %struct.sockaddr_in6*, %struct.cma_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
