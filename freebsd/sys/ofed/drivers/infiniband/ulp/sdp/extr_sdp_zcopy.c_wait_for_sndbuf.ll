; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_wait_for_sndbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_wait_for_sndbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sdp_sock = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Wait for mem\0A\00", align 1
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@send_wait_for_mem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i64*)* @wait_for_sndbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_sndbuf(%struct.socket* %0, i64* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.sdp_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = call %struct.sdp_sock* @sdp_sk(%struct.socket* %8)
  store %struct.sdp_sock* %9, %struct.sdp_sock** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = call i32 @sdp_dbg_data(%struct.socket* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @SOCK_NOSPACE, align 4
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @set_bit(i32 %12, i32* %16)
  %18 = load i32, i32* @send_wait_for_mem, align 4
  %19 = call i32 @SDPSTATS_COUNTER_INC(i32 %18)
  %20 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %21 = call i32 @sdp_do_posts(%struct.sdp_sock* %20)
  %22 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %23 = call i32 @sdp_xmit_poll(%struct.sdp_sock* %22, i32 1)
  %24 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = call i32 @sdp_tx_wait_memory(%struct.sdp_sock* %24, i64* %25, i32* %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local %struct.sdp_sock* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @sdp_dbg_data(%struct.socket*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @SDPSTATS_COUNTER_INC(i32) #1

declare dso_local i32 @sdp_do_posts(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_xmit_poll(%struct.sdp_sock*, i32) #1

declare dso_local i32 @sdp_tx_wait_memory(%struct.sdp_sock*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
