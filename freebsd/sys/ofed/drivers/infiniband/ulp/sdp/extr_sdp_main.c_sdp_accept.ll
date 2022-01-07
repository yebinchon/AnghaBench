; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sdp_sock = type { i32, i64, i64 }
%struct.in_addr = type { i64 }

@SS_ISDISCONNECTED = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@SDP_TIMEWAIT = common dso_local global i32 0, align 4
@SDP_DROPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr**)* @sdp_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_accept(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.sdp_sock*, align 8
  %7 = alloca %struct.in_addr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  store %struct.sdp_sock* null, %struct.sdp_sock** %6, align 8
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SS_ISDISCONNECTED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ECONNABORTED, align 4
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.socket*, %struct.socket** %4, align 8
  %21 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %20)
  store %struct.sdp_sock* %21, %struct.sdp_sock** %6, align 8
  %22 = load %struct.sdp_sock*, %struct.sdp_sock** %6, align 8
  %23 = call i32 @SDP_WLOCK(%struct.sdp_sock* %22)
  %24 = load %struct.sdp_sock*, %struct.sdp_sock** %6, align 8
  %25 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SDP_TIMEWAIT, align 4
  %28 = load i32, i32* @SDP_DROPPED, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @ECONNABORTED, align 4
  store i32 %33, i32* %9, align 4
  br label %42

34:                                               ; preds = %18
  %35 = load %struct.sdp_sock*, %struct.sdp_sock** %6, align 8
  %36 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.sdp_sock*, %struct.sdp_sock** %6, align 8
  %39 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %32
  %43 = load %struct.sdp_sock*, %struct.sdp_sock** %6, align 8
  %44 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i64, i64* %8, align 8
  %49 = call %struct.sockaddr* @sdp_sockaddr(i64 %48, %struct.in_addr* %7)
  %50 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %49, %struct.sockaddr** %50, align 8
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

declare dso_local %struct.sockaddr* @sdp_sockaddr(i64, %struct.in_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
