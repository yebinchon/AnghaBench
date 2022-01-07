; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_bindx_delete_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_bindx_delete_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { i32 }
%struct.sockaddr = type { i64, i32 }

@SCTP_PCB_FLAGS_BOUNDALL = common dso_local global i32 0, align 4
@SCTP_FROM_SCTPUTIL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCTP_DEL_IP_ADDRESS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@SCTP_PCB_FLAGS_BOUND_V6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_bindx_delete_address(%struct.sctp_inpcb* %0, %struct.sockaddr* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.sctp_inpcb*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %13 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SCTP_PCB_FLAGS_BOUNDALL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %20 = load i32, i32* @SCTP_FROM_SCTPUTIL, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %19, i32* null, i32* null, i32 %20, i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = load i32*, i32** %10, align 8
  store i32 %23, i32* %24, align 4
  br label %37

25:                                               ; preds = %5
  %26 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %26, %struct.sockaddr** %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %32 = load i32, i32* @SCTP_DEL_IP_ADDRESS, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @sctp_addr_mgmt_ep_sa(%struct.sctp_inpcb* %30, %struct.sockaddr* %31, i32 %32, i32 %33, i32* null)
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  br label %37

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %18, %36, %29
  ret void
}

declare dso_local i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb*, i32*, i32*, i32, i32) #1

declare dso_local i32 @sctp_addr_mgmt_ep_sa(%struct.sctp_inpcb*, %struct.sockaddr*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
