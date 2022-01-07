; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.thread = type { i32 }
%struct.sdp_sock = type { i32 }
%struct.sockaddr_in = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SDP_TIMEWAIT = common dso_local global i32 0, align 4
@SDP_DROPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.thread*)* @sdp_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_bind(%struct.socket* %0, %struct.sockaddr* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdp_sock*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %10, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %64

28:                                               ; preds = %20
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ntohl(i32 %32)
  %34 = call i64 @IN_MULTICAST(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %37, i32* %4, align 4
  br label %64

38:                                               ; preds = %28
  %39 = load %struct.socket*, %struct.socket** %5, align 8
  %40 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %39)
  store %struct.sdp_sock* %40, %struct.sdp_sock** %9, align 8
  %41 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %42 = call i32 @SDP_WLOCK(%struct.sdp_sock* %41)
  %43 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %44 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SDP_TIMEWAIT, align 4
  %47 = load i32, i32* @SDP_DROPPED, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %8, align 4
  br label %60

53:                                               ; preds = %38
  %54 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %55 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %56 = load %struct.thread*, %struct.thread** %7, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sdp_pcbbind(%struct.sdp_sock* %54, %struct.sockaddr* %55, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %53, %51
  %61 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %62 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %36, %26, %18
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @IN_MULTICAST(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_pcbbind(%struct.sdp_sock*, %struct.sockaddr*, i32) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
