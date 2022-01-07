; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_reset_a_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_reset_a_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_queued_to_read = type { i64, i32 }
%struct.sctp_inpcb = type { i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_queued_to_read*, %struct.sctp_inpcb*, i32)* @sctp_reset_a_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_reset_a_control(%struct.sctp_queued_to_read* %0, %struct.sctp_inpcb* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_queued_to_read*, align 8
  %5 = alloca %struct.sctp_inpcb*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_queued_to_read* %0, %struct.sctp_queued_to_read** %4, align 8
  store %struct.sctp_inpcb* %1, %struct.sctp_inpcb** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %5, align 8
  %16 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %15, i32 0, i32 0
  %17 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %18 = load i32, i32* @next, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.sctp_queued_to_read* %17, i32 %18)
  %20 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %14, %3
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sctp_queued_to_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
