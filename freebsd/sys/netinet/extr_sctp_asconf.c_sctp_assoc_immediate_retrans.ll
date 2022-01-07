; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_assoc_immediate_retrans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_assoc_immediate_retrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i32, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.sctp_nets = type { i32 }
%struct.sctp_tmit_chunk = type { i32 }

@SCTP_ADDR_UNCONFIRMED = common dso_local global i32 0, align 4
@SCTP_DEBUG_ASCONF1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"assoc_immediate_retrans: Deleted primary is \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Current Primary is \00", align 1
@SCTP_TIMER_TYPE_SEND = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_ASCONF = common dso_local global i64 0, align 8
@SCTP_LOC_3 = common dso_local global i64 0, align 8
@SCTP_OUTPUT_FROM_T3 = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_assoc_immediate_retrans(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_tmit_chunk*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %7 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %8 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SCTP_ADDR_UNCONFIRMED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %133

14:                                               ; preds = %2
  %15 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %16 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = icmp eq %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %133

21:                                               ; preds = %14
  %22 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %23 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = call i32 @TAILQ_EMPTY(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %132, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @SCTP_DEBUG_ASCONF1, align 4
  %29 = call i32 @SCTPDBG(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @SCTP_DEBUG_ASCONF1, align 4
  %31 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %32 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = call i32 @SCTPDBG_ADDR(i32 %30, i32* %37)
  %39 = load i32, i32* @SCTP_DEBUG_ASCONF1, align 4
  %40 = call i32 @SCTPDBG(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @SCTP_DEBUG_ASCONF1, align 4
  %42 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %43 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = call i32 @SCTPDBG_ADDR(i32 %41, i32* %48)
  %50 = load i32, i32* @SCTP_TIMER_TYPE_SEND, align 4
  %51 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %52 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %55 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %56 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = load i64, i64* @SCTP_FROM_SCTP_ASCONF, align 8
  %60 = load i64, i64* @SCTP_LOC_3, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @sctp_timer_stop(i32 %50, i32 %53, %struct.sctp_tcb* %54, %struct.TYPE_16__* %58, i64 %61)
  %63 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %64 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %69 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %27
  %74 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %75 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %27
  %78 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %79 = call i32 @SCTP_TCB_LOCK_ASSERT(%struct.sctp_tcb* %78)
  %80 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %81 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %84 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %85 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = call i32 @sctp_t3rxt_timer(i32 %82, %struct.sctp_tcb* %83, %struct.TYPE_16__* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %77
  %92 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %93 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @SCTP_INP_DECR_REF(i32 %94)
  br label %133

96:                                               ; preds = %77
  %97 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %98 = call i32 @SCTP_TCB_LOCK_ASSERT(%struct.sctp_tcb* %97)
  %99 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %100 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %103 = load i32, i32* @SCTP_OUTPUT_FROM_T3, align 4
  %104 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %105 = call i32 @sctp_chunk_output(i32 %101, %struct.sctp_tcb* %102, i32 %103, i32 %104)
  %106 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %107 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %96
  %112 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %113 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %111
  %118 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %119 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = call %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32* %120)
  store %struct.sctp_tmit_chunk* %121, %struct.sctp_tmit_chunk** %6, align 8
  %122 = load i32, i32* @SCTP_TIMER_TYPE_SEND, align 4
  %123 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %124 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %127 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %6, align 8
  %128 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @sctp_timer_start(i32 %122, i32 %125, %struct.sctp_tcb* %126, i32 %129)
  br label %131

131:                                              ; preds = %117, %111, %96
  br label %132

132:                                              ; preds = %131, %21
  br label %133

133:                                              ; preds = %132, %91, %20, %13
  ret void
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @SCTPDBG(i32, i8*) #1

declare dso_local i32 @SCTPDBG_ADDR(i32, i32*) #1

declare dso_local i32 @sctp_timer_stop(i32, i32, %struct.sctp_tcb*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @SCTP_TCB_LOCK_ASSERT(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_t3rxt_timer(i32, %struct.sctp_tcb*, %struct.TYPE_16__*) #1

declare dso_local i32 @SCTP_INP_DECR_REF(i32) #1

declare dso_local i32 @sctp_chunk_output(i32, %struct.sctp_tcb*, i32, i32) #1

declare dso_local %struct.sctp_tmit_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @sctp_timer_start(i32, i32, %struct.sctp_tcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
