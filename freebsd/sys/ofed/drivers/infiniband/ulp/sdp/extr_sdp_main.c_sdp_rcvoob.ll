; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_rcvoob.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_rcvoob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.sdp_sock = type { i32, i32, i32, i32 }

@ECONNRESET = common dso_local global i32 0, align 4
@SDP_TIMEWAIT = common dso_local global i32 0, align 4
@SDP_DROPPED = common dso_local global i32 0, align 4
@SBS_RCVATMARK = common dso_local global i32 0, align 4
@SO_OOBINLINE = common dso_local global i32 0, align 4
@SDP_HADOOB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SDP_HAVEOOB = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.mbuf*, i32)* @sdp_rcvoob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp_rcvoob(%struct.socket* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdp_sock*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %10)
  store %struct.sdp_sock* %11, %struct.sdp_sock** %9, align 8
  %12 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %13 = call i32 @SDP_WLOCK(%struct.sdp_sock* %12)
  %14 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %15 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %14, i32 0, i32 2
  %16 = call i32 @rx_ring_trylock(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %20 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %19)
  %21 = load i32, i32* @ECONNRESET, align 4
  store i32 %21, i32* %4, align 4
  br label %100

22:                                               ; preds = %3
  %23 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %24 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SDP_TIMEWAIT, align 4
  %27 = load i32, i32* @SDP_DROPPED, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @ECONNRESET, align 4
  store i32 %32, i32* %8, align 4
  br label %93

33:                                               ; preds = %22
  %34 = load %struct.socket*, %struct.socket** %5, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.socket*, %struct.socket** %5, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SBS_RCVATMARK, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %38, %33
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SO_OOBINLINE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %55 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SDP_HADOOB, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53, %46, %38
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %8, align 4
  br label %93

62:                                               ; preds = %53
  %63 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %64 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SDP_HAVEOOB, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %70, i32* %8, align 4
  br label %93

71:                                               ; preds = %62
  %72 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %75 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %78 = load i32, i32* @caddr_t, align 4
  %79 = call i32* @mtod(%struct.mbuf* %77, i32 %78)
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @MSG_PEEK, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %71
  %85 = load i32, i32* @SDP_HAVEOOB, align 4
  %86 = load i32, i32* @SDP_HADOOB, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %89 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %84, %71
  br label %93

93:                                               ; preds = %92, %69, %60, %31
  %94 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %95 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %94, i32 0, i32 2
  %96 = call i32 @rx_ring_unlock(i32* %95)
  %97 = load %struct.sdp_sock*, %struct.sdp_sock** %9, align 8
  %98 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %93, %18
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @rx_ring_trylock(i32*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

declare dso_local i32* @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @rx_ring_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
