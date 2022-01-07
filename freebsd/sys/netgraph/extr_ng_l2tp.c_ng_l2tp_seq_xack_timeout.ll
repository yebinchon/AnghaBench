; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_seq_xack_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_l2tp.c_ng_l2tp_seq_xack_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.l2tp_seq }
%struct.l2tp_seq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @ng_l2tp_seq_xack_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_l2tp_seq_xack_timeout(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.l2tp_seq*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_4__* @NG_NODE_PRIVATE(i32 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %9, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.l2tp_seq* %14, %struct.l2tp_seq** %10, align 8
  %15 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %16 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %15, i32 0, i32 1
  %17 = call i64 @callout_pending(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %21 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %20, i32 0, i32 1
  %22 = call i32 @callout_active(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %4
  br label %35

25:                                               ; preds = %19
  %26 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %27 = call i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %30 = getelementptr inbounds %struct.l2tp_seq, %struct.l2tp_seq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ng_l2tp_xmit_ctrl(%struct.TYPE_4__* %28, i32* null, i32 %31)
  %33 = load %struct.l2tp_seq*, %struct.l2tp_seq** %10, align 8
  %34 = call i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq* %33)
  br label %35

35:                                               ; preds = %25, %24
  ret void
}

declare dso_local %struct.TYPE_4__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i32 @L2TP_SEQ_CHECK(%struct.l2tp_seq*) #1

declare dso_local i32 @ng_l2tp_xmit_ctrl(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
