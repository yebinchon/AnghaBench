; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_output_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_output_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, i32 }

@SDP_FIN_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@sdp_dreq_timeout = common dso_local global i32 0, align 4
@SDP_NEEDFIN = common dso_local global i32 0, align 4
@SDP_DREQWAIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdp_sock*)* @sdp_output_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_output_disconnect(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %3 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %4 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %3)
  %5 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %6 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %5, i32 0, i32 1
  %7 = load i32, i32* @SDP_FIN_WAIT_TIMEOUT, align 4
  %8 = load i32, i32* @sdp_dreq_timeout, align 4
  %9 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %10 = call i32 @callout_reset(i32* %6, i32 %7, i32 %8, %struct.sdp_sock* %9)
  %11 = load i32, i32* @SDP_NEEDFIN, align 4
  %12 = load i32, i32* @SDP_DREQWAIT, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %15 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = call i32 @sdp_post_sends(%struct.sdp_sock* %18, i32 %19)
  ret void
}

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.sdp_sock*) #1

declare dso_local i32 @sdp_post_sends(%struct.sdp_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
