; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_tx.c_sdp_tx_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_tx.c_sdp_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.sdp_sock = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"tx irq\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Got tx comp interrupt\0A\00", align 1
@tx_int_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, i8*)* @sdp_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_tx_irq(%struct.ib_cq* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sdp_sock*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sdp_sock*
  store %struct.sdp_sock* %7, %struct.sdp_sock** %5, align 8
  %8 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %9 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @sdp_prf1(i32 %10, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %13 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sdp_dbg_data(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @tx_int_count, align 4
  %17 = call i32 @SDPSTATS_COUNTER_INC(i32 %16)
  %18 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %19 = call i32 @SDP_WLOCK(%struct.sdp_sock* %18)
  %20 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %21 = call i32 @sdp_poll_tx(%struct.sdp_sock* %20)
  %22 = load %struct.sdp_sock*, %struct.sdp_sock** %5, align 8
  %23 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %22)
  ret void
}

declare dso_local i32 @sdp_prf1(i32, i32*, i8*) #1

declare dso_local i32 @sdp_dbg_data(i32, i8*) #1

declare dso_local i32 @SDPSTATS_COUNTER_INC(i32) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_poll_tx(%struct.sdp_sock*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
