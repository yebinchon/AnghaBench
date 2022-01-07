; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_send_asconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_send_asconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sctp_nets = type { i32 }
%struct.sctp_tmit_chunk = type { i32, %struct.TYPE_6__*, %struct.sctp_nets*, i64, i32, %struct.mbuf*, i32, %struct.TYPE_5__, i64 }
%struct.mbuf = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@SCTP_PCB_FLAGS_MULTIPLE_ASCONFS = common dso_local global i32 0, align 4
@SCTP_ASCONF = common dso_local global i32 0, align 4
@CHUNK_FLAGS_FRAGMENT_OK = common dso_local global i32 0, align 4
@SCTP_DATAGRAM_UNSENT = common dso_local global i32 0, align 4
@sctp_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_send_asconf(%struct.sctp_tcb* %0, %struct.sctp_nets* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sctp_nets*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_tmit_chunk*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %11 = call i32 @SCTP_TCB_LOCK_ASSERT(%struct.sctp_tcb* %10)
  %12 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = call i32 @TAILQ_EMPTY(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %19 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SCTP_PCB_FLAGS_MULTIPLE_ASCONFS, align 4
  %22 = call i32 @sctp_is_feature_on(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %98

25:                                               ; preds = %17, %3
  %26 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.mbuf* @sctp_compose_asconf(%struct.sctp_tcb* %26, i32* %9, i32 %27)
  store %struct.mbuf* %28, %struct.mbuf** %8, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %30 = icmp eq %struct.mbuf* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %98

32:                                               ; preds = %25
  %33 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %34 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %35 = call i32 @sctp_alloc_a_chunk(%struct.sctp_tcb* %33, %struct.sctp_tmit_chunk* %34)
  %36 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %37 = icmp eq %struct.sctp_tmit_chunk* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %40 = call i32 @sctp_m_freem(%struct.mbuf* %39)
  br label %98

41:                                               ; preds = %32
  %42 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %43 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %42, i32 0, i32 8
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @SCTP_ASCONF, align 4
  %45 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %46 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 8
  %49 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %50 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @CHUNK_FLAGS_FRAGMENT_OK, align 4
  %54 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %55 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %57 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %58 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %57, i32 0, i32 5
  store %struct.mbuf* %56, %struct.mbuf** %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %61 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @SCTP_DATAGRAM_UNSENT, align 4
  %63 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %64 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %66 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %68 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %67, i32 0, i32 0
  %69 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %70 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %69, i32 0, i32 1
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %70, align 8
  %71 = load %struct.sctp_nets*, %struct.sctp_nets** %5, align 8
  %72 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %73 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %72, i32 0, i32 2
  store %struct.sctp_nets* %71, %struct.sctp_nets** %73, align 8
  %74 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %75 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %74, i32 0, i32 2
  %76 = load %struct.sctp_nets*, %struct.sctp_nets** %75, align 8
  %77 = icmp ne %struct.sctp_nets* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %41
  %79 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %80 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %79, i32 0, i32 2
  %81 = load %struct.sctp_nets*, %struct.sctp_nets** %80, align 8
  %82 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %81, i32 0, i32 0
  %83 = call i32 @atomic_add_int(i32* %82, i32 1)
  br label %84

84:                                               ; preds = %78, %41
  %85 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %86 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %90 = load i32, i32* @sctp_next, align 4
  %91 = call i32 @TAILQ_INSERT_TAIL(i32* %88, %struct.sctp_tmit_chunk* %89, i32 %90)
  %92 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %7, align 8
  %93 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %84, %38, %31, %24
  ret void
}

declare dso_local i32 @SCTP_TCB_LOCK_ASSERT(%struct.sctp_tcb*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @sctp_is_feature_on(i32, i32) #1

declare dso_local %struct.mbuf* @sctp_compose_asconf(%struct.sctp_tcb*, i32*, i32) #1

declare dso_local i32 @sctp_alloc_a_chunk(%struct.sctp_tcb*, %struct.sctp_tmit_chunk*) #1

declare dso_local i32 @sctp_m_freem(%struct.mbuf*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.sctp_tmit_chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
