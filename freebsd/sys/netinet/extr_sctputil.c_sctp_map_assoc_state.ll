; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_map_assoc_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_map_assoc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCTP_STATE_WAS_ABORTED = common dso_local global i32 0, align 4
@SCTP_CLOSED = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i32 0, align 4
@SCTP_SHUTDOWN_PENDING = common dso_local global i32 0, align 4
@SCTP_STATE_MASK = common dso_local global i32 0, align 4
@SCTP_COOKIE_WAIT = common dso_local global i32 0, align 4
@SCTP_COOKIE_ECHOED = common dso_local global i32 0, align 4
@SCTP_ESTABLISHED = common dso_local global i32 0, align 4
@SCTP_SHUTDOWN_SENT = common dso_local global i32 0, align 4
@SCTP_SHUTDOWN_RECEIVED = common dso_local global i32 0, align 4
@SCTP_SHUTDOWN_ACK_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_map_assoc_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @SCTP_STATE_WAS_ABORTED, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @SCTP_CLOSED, align 4
  store i32 %9, i32* %3, align 4
  br label %41

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SCTP_STATE_SHUTDOWN_PENDING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @SCTP_SHUTDOWN_PENDING, align 4
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SCTP_STATE_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %37 [
    i32 133, label %21
    i32 132, label %23
    i32 134, label %25
    i32 135, label %27
    i32 131, label %29
    i32 128, label %31
    i32 129, label %33
    i32 130, label %35
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @SCTP_CLOSED, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %17
  %24 = load i32, i32* @SCTP_CLOSED, align 4
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %17
  %26 = load i32, i32* @SCTP_COOKIE_WAIT, align 4
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %17
  %28 = load i32, i32* @SCTP_COOKIE_ECHOED, align 4
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %17
  %30 = load i32, i32* @SCTP_ESTABLISHED, align 4
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %17
  %32 = load i32, i32* @SCTP_SHUTDOWN_SENT, align 4
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %17
  %34 = load i32, i32* @SCTP_SHUTDOWN_RECEIVED, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %17
  %36 = load i32, i32* @SCTP_SHUTDOWN_ACK_SENT, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %17
  %38 = load i32, i32* @SCTP_CLOSED, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35, %33, %31, %29, %27, %25, %23, %21
  br label %40

40:                                               ; preds = %39, %15
  br label %41

41:                                               ; preds = %40, %8
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
