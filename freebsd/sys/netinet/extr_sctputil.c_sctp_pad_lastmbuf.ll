; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_pad_lastmbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_pad_lastmbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @sctp_pad_lastmbuf(%struct.mbuf* %0, i32 %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %10 = icmp ne %struct.mbuf* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.mbuf* @sctp_add_pad_tombuf(%struct.mbuf* %12, i32 %13)
  store %struct.mbuf* %14, %struct.mbuf** %4, align 8
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %16, %struct.mbuf** %8, align 8
  br label %17

17:                                               ; preds = %29, %15
  %18 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %19 = icmp ne %struct.mbuf* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %22 = call %struct.mbuf* @SCTP_BUF_NEXT(%struct.mbuf* %21)
  %23 = icmp eq %struct.mbuf* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.mbuf* @sctp_add_pad_tombuf(%struct.mbuf* %25, i32 %26)
  store %struct.mbuf* %27, %struct.mbuf** %4, align 8
  br label %34

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %31 = call %struct.mbuf* @SCTP_BUF_NEXT(%struct.mbuf* %30)
  store %struct.mbuf* %31, %struct.mbuf** %8, align 8
  br label %17

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %34

34:                                               ; preds = %33, %24, %11
  %35 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %35
}

declare dso_local %struct.mbuf* @sctp_add_pad_tombuf(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @SCTP_BUF_NEXT(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
