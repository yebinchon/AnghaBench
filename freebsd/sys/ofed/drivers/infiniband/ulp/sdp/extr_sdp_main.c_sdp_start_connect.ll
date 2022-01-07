; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_start_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_start_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i64, i32, i32, i32, %struct.socket* }
%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }
%struct.sockaddr_in = type { i32, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SDP_RESOLVE_TIMEOUT = common dso_local global i32 0, align 4
@TCPS_SYN_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdp_sock*, %struct.sockaddr*, %struct.thread*)* @sdp_start_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_start_connect(%struct.sdp_sock* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdp_sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %12 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %11, i32 0, i32 4
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %13, %struct.socket** %9, align 8
  %14 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %15 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %14)
  %16 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %17 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %22 = load %struct.thread*, %struct.thread** %7, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sdp_pcbbind(%struct.sdp_sock* %21, %struct.sockaddr* null, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %67

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* @AF_INET, align 4
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i32 32, i32* %34, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  %36 = call i32 @bzero(i32* %35, i32 4)
  %37 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %38 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %42 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.socket*, %struct.socket** %9, align 8
  %47 = call i32 @soisconnecting(%struct.socket* %46)
  %48 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %49 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %48)
  %50 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %51 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %54 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %55 = load i32, i32* @SDP_RESOLVE_TIMEOUT, align 4
  %56 = call i32 @rdma_resolve_addr(i32 %52, %struct.sockaddr* %53, %struct.sockaddr* %54, i32 %55)
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %59 = call i32 @SDP_WLOCK(%struct.sdp_sock* %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %31
  %63 = load i32, i32* @TCPS_SYN_SENT, align 4
  %64 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %65 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %31
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %28
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_pcbbind(%struct.sdp_sock*, %struct.sockaddr*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @soisconnecting(%struct.socket*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @rdma_resolve_addr(i32, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
