; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_qp_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_qp_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_net_queue = type { i32, i32, i32, i32 }

@KTR_NTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"TX: qp_full callout\00", align 1
@SBT_1MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ntb_qp_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_qp_full(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ntb_net_queue*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ntb_net_queue*
  store %struct.ntb_net_queue* %5, %struct.ntb_net_queue** %3, align 8
  %6 = load i32, i32* @KTR_NTB, align 4
  %7 = call i32 @CTR0(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %3, align 8
  %9 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @ntb_transport_tx_free_entry(i32 %10)
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %3, align 8
  %15 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %3, align 8
  %18 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %17, i32 0, i32 1
  %19 = call i32 @taskqueue_enqueue(i32 %16, i32* %18)
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %3, align 8
  %22 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %21, i32 0, i32 0
  %23 = load i32, i32* @SBT_1MS, align 4
  %24 = sdiv i32 %23, 4
  %25 = load i32, i32* @SBT_1MS, align 4
  %26 = sdiv i32 %25, 4
  %27 = call i32 @callout_schedule_sbt(i32* %22, i32 %24, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %20, %13
  ret void
}

declare dso_local i32 @CTR0(i32, i8*) #1

declare dso_local i64 @ntb_transport_tx_free_entry(i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @callout_schedule_sbt(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
