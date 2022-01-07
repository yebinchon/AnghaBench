; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_2msl_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_2msl_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, i32, i32, i32 }

@SDP_TIMEWAIT = common dso_local global i32 0, align 4
@TCPS_TIME_WAIT = common dso_local global i32 0, align 4
@TCPTV_MSL = common dso_local global i32 0, align 4
@sdp_2msl_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdp_sock*)* @sdp_2msl_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_2msl_wait(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %3 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %4 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %3)
  %5 = load i32, i32* @SDP_TIMEWAIT, align 4
  %6 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %7 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @TCPS_TIME_WAIT, align 4
  %11 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %12 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %14 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @soisdisconnected(i32 %15)
  %17 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %18 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %17, i32 0, i32 0
  %19 = load i32, i32* @TCPTV_MSL, align 4
  %20 = load i32, i32* @sdp_2msl_timeout, align 4
  %21 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %22 = call i32 @callout_reset(i32* %18, i32 %19, i32 %20, %struct.sdp_sock* %21)
  ret void
}

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #1

declare dso_local i32 @soisdisconnected(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
