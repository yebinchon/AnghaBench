; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_select_a_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_select_a_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { i32 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_select_a_tag(%struct.sctp_inpcb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_inpcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.timeval, align 4
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = call i32 @SCTP_GETTIME_TIMEVAL(%struct.timeval* %10)
  br label %15

15:                                               ; preds = %13, %4
  br label %16

16:                                               ; preds = %33, %22, %15
  %17 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %17, i32 0, i32 0
  %19 = call i64 @sctp_select_initial_TSN(i32* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %16

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @sctp_is_vtag_good(i64 %27, i32 %28, i32 %29, %struct.timeval* %10)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %23
  br label %34

33:                                               ; preds = %26
  br label %16

34:                                               ; preds = %32
  %35 = load i64, i64* %9, align 8
  ret i64 %35
}

declare dso_local i32 @SCTP_GETTIME_TIMEVAL(%struct.timeval*) #1

declare dso_local i64 @sctp_select_initial_TSN(i32*) #1

declare dso_local i64 @sctp_is_vtag_good(i64, i32, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
