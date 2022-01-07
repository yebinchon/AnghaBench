; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_seq_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_seq_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.ng_mesg = type { i32 }

@NGM_L2TP_COOKIE = common dso_local global i32 0, align 4
@NGM_L2TP_ACK_FAILURE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ng_l2tp_seq_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_l2tp_seq_failure(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.ng_mesg*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %6 = load i32, i32* @NGM_L2TP_COOKIE, align 4
  %7 = load i32, i32* @NGM_L2TP_ACK_FAILURE, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %5, i32 %6, i32 %7, i32 0, i32 %8)
  %10 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %11 = icmp eq %struct.ng_mesg* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %23

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NG_SEND_MSG_ID(i32 %14, i32 %17, %struct.ng_mesg* %18, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @NG_SEND_MSG_ID(i32, i32, %struct.ng_mesg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
