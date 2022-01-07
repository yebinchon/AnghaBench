; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_timer.c_sctp_t1init_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_timer.c_sctp_t1init_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { i32 }
%struct.sctp_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, %struct.sctp_nets*, i64, i32, i64 }
%struct.sctp_nets = type { i64 }

@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@SCTP_STATE_COOKIE_WAIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_t1init_timer(%struct.sctp_inpcb* %0, %struct.sctp_tcb* %1, %struct.sctp_nets* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_inpcb*, align 8
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_nets*, align 8
  %8 = alloca %struct.sctp_nets*, align 8
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %5, align 8
  store %struct.sctp_tcb* %1, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_nets* %2, %struct.sctp_nets** %7, align 8
  %9 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %10 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %16 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %5, align 8
  %19 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %20 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %21 = call i32 @sctp_send_initiate(%struct.sctp_inpcb* %18, %struct.sctp_tcb* %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %100

22:                                               ; preds = %3
  %23 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %24 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %23)
  %25 = load i64, i64* @SCTP_STATE_COOKIE_WAIT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %100

28:                                               ; preds = %22
  %29 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %5, align 8
  %30 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %31 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %32 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %33 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @sctp_threshold_management(%struct.sctp_inpcb* %29, %struct.sctp_tcb* %30, %struct.sctp_nets* %31, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %100

39:                                               ; preds = %28
  %40 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %41 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %44 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %45 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load %struct.sctp_nets*, %struct.sctp_nets** %46, align 8
  %48 = call i32 @sctp_backoff_on_timeout(%struct.sctp_tcb* %43, %struct.sctp_nets* %47, i32 1, i32 0, i32 0)
  %49 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %50 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %54 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %39
  %58 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %59 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sctp_nets*, %struct.sctp_nets** %7, align 8
  %63 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %57, %39
  %65 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %66 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %95

70:                                               ; preds = %64
  %71 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %72 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %73 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load %struct.sctp_nets*, %struct.sctp_nets** %74, align 8
  %76 = call %struct.sctp_nets* @sctp_find_alternate_net(%struct.sctp_tcb* %71, %struct.sctp_nets* %75, i32 0)
  store %struct.sctp_nets* %76, %struct.sctp_nets** %8, align 8
  %77 = load %struct.sctp_nets*, %struct.sctp_nets** %8, align 8
  %78 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %79 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load %struct.sctp_nets*, %struct.sctp_nets** %80, align 8
  %82 = icmp ne %struct.sctp_nets* %77, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %70
  %84 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %85 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %86 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load %struct.sctp_nets*, %struct.sctp_nets** %87, align 8
  %89 = call i32 @sctp_move_chunks_from_net(%struct.sctp_tcb* %84, %struct.sctp_nets* %88)
  %90 = load %struct.sctp_nets*, %struct.sctp_nets** %8, align 8
  %91 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %92 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store %struct.sctp_nets* %90, %struct.sctp_nets** %93, align 8
  br label %94

94:                                               ; preds = %83, %70
  br label %95

95:                                               ; preds = %94, %64
  %96 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %5, align 8
  %97 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %98 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %99 = call i32 @sctp_send_initiate(%struct.sctp_inpcb* %96, %struct.sctp_tcb* %97, i32 %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %38, %27, %14
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @sctp_send_initiate(%struct.sctp_inpcb*, %struct.sctp_tcb*, i32) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i64 @sctp_threshold_management(%struct.sctp_inpcb*, %struct.sctp_tcb*, %struct.sctp_nets*, i32) #1

declare dso_local i32 @sctp_backoff_on_timeout(%struct.sctp_tcb*, %struct.sctp_nets*, i32, i32, i32) #1

declare dso_local %struct.sctp_nets* @sctp_find_alternate_net(%struct.sctp_tcb*, %struct.sctp_nets*, i32) #1

declare dso_local i32 @sctp_move_chunks_from_net(%struct.sctp_tcb*, %struct.sctp_nets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
