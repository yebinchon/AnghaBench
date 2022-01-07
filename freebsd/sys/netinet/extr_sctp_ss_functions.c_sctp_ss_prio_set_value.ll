; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_prio_set_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_prio_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_stream_out = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*, %struct.sctp_association*, %struct.sctp_stream_out*, i32)* @sctp_ss_prio_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_ss_prio_set_value(%struct.sctp_tcb* %0, %struct.sctp_association* %1, %struct.sctp_stream_out* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_stream_out*, align 8
  %9 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %7, align 8
  store %struct.sctp_stream_out* %2, %struct.sctp_stream_out** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %8, align 8
  %11 = icmp eq %struct.sctp_stream_out* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %27

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %8, align 8
  %16 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %21 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %8, align 8
  %22 = call i32 @sctp_ss_prio_remove(%struct.sctp_tcb* %19, %struct.sctp_association* %20, %struct.sctp_stream_out* %21, i32* null, i32 1)
  %23 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %24 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %25 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %8, align 8
  %26 = call i32 @sctp_ss_prio_add(%struct.sctp_tcb* %23, %struct.sctp_association* %24, %struct.sctp_stream_out* %25, i32* null, i32 1)
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @sctp_ss_prio_remove(%struct.sctp_tcb*, %struct.sctp_association*, %struct.sctp_stream_out*, i32*, i32) #1

declare dso_local i32 @sctp_ss_prio_add(%struct.sctp_tcb*, %struct.sctp_association*, %struct.sctp_stream_out*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
