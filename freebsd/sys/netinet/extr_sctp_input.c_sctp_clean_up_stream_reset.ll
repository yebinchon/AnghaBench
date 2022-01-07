; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_clean_up_stream_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_clean_up_stream_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.sctp_association }
%struct.sctp_association = type { i32, i32, %struct.sctp_tmit_chunk* }
%struct.sctp_tmit_chunk = type { i32*, i32 }

@SCTP_TIMER_TYPE_STRRESET = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_INPUT = common dso_local global i64 0, align 8
@SCTP_LOC_28 = common dso_local global i64 0, align 8
@sctp_next = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*)* @sctp_clean_up_stream_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_clean_up_stream_reset(%struct.sctp_tcb* %0) #0 {
  %2 = alloca %struct.sctp_tcb*, align 8
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_tmit_chunk*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %2, align 8
  %5 = load %struct.sctp_tcb*, %struct.sctp_tcb** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %5, i32 0, i32 1
  store %struct.sctp_association* %6, %struct.sctp_association** %3, align 8
  %7 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %7, i32 0, i32 2
  %9 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  store %struct.sctp_tmit_chunk* %9, %struct.sctp_tmit_chunk** %4, align 8
  %10 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %4, align 8
  %11 = icmp eq %struct.sctp_tmit_chunk* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %53

13:                                               ; preds = %1
  %14 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 2
  store %struct.sctp_tmit_chunk* null, %struct.sctp_tmit_chunk** %15, align 8
  %16 = load i32, i32* @SCTP_TIMER_TYPE_STRRESET, align 4
  %17 = load %struct.sctp_tcb*, %struct.sctp_tcb** %2, align 8
  %18 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sctp_tcb*, %struct.sctp_tcb** %2, align 8
  %21 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %4, align 8
  %22 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* @SCTP_FROM_SCTP_INPUT, align 8
  %25 = load i64, i64* @SCTP_LOC_28, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @sctp_timer_stop(i32 %16, i32 %19, %struct.sctp_tcb* %20, i32 %23, i64 %26)
  %28 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 1
  %30 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %4, align 8
  %31 = load i32, i32* @sctp_next, align 4
  %32 = call i32 @TAILQ_REMOVE(i32* %29, %struct.sctp_tmit_chunk* %30, i32 %31)
  %33 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %34 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %4, align 8
  %38 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %13
  %42 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %4, align 8
  %43 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @sctp_m_freem(i32* %44)
  %46 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %4, align 8
  %47 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %13
  %49 = load %struct.sctp_tcb*, %struct.sctp_tcb** %2, align 8
  %50 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %4, align 8
  %51 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %52 = call i32 @sctp_free_a_chunk(%struct.sctp_tcb* %49, %struct.sctp_tmit_chunk* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @sctp_timer_stop(i32, i32, %struct.sctp_tcb*, i32, i64) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sctp_tmit_chunk*, i32) #1

declare dso_local i32 @sctp_m_freem(i32*) #1

declare dso_local i32 @sctp_free_a_chunk(%struct.sctp_tcb*, %struct.sctp_tmit_chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
