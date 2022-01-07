; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_user_rcvd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_user_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_9__, %struct.TYPE_8__*, i64, %struct.socket* }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.socket = type { i32 }

@SCTP_STATE_SHUTDOWN_ACK_SENT = common dso_local global i64 0, align 8
@SCTP_STATE_ABOUT_TO_BE_FREED = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_RECEIVED = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_SOCKET_GONE = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_SOCKET_ALLGONE = common dso_local global i32 0, align 4
@sctps_wu_sacks_sent = common dso_local global i32 0, align 4
@SCTP_SO_LOCKED = common dso_local global i32 0, align 4
@SCTP_OUTPUT_FROM_USR_RCVD = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_RECV = common dso_local global i32 0, align 4
@SCTP_FROM_SCTPUTIL = common dso_local global i64 0, align 8
@SCTP_LOC_6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, i64*, i32, i64)* @sctp_user_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_user_rcvd(%struct.sctp_tcb* %0, i64* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.socket*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.socket* null, %struct.socket** %12, align 8
  %13 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %14 = icmp eq %struct.sctp_tcb* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %179

16:                                               ; preds = %4
  %17 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = call i32 @atomic_add_int(i64* %19, i32 1)
  %21 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %22 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %21)
  %23 = load i64, i64* @SCTP_STATE_SHUTDOWN_ACK_SENT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %16
  %26 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %27 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SCTP_STATE_ABOUT_TO_BE_FREED, align 4
  %31 = load i32, i32* @SCTP_STATE_SHUTDOWN_RECEIVED, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25, %16
  br label %174

36:                                               ; preds = %25
  %37 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %38 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @SCTP_INP_INCR_REF(%struct.TYPE_8__* %39)
  %41 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %42 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_GONE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %36
  %50 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %51 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_ALLGONE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49, %36
  br label %155

59:                                               ; preds = %49
  %60 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %61 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %60, i32 0, i32 3
  %62 = load %struct.socket*, %struct.socket** %61, align 8
  store %struct.socket* %62, %struct.socket** %12, align 8
  %63 = load %struct.socket*, %struct.socket** %12, align 8
  %64 = icmp eq %struct.socket* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %155

66:                                               ; preds = %59
  %67 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %68 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %67, i32 0, i32 2
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @atomic_add_int(i64* %68, i32 %71)
  %73 = load i64*, i64** %6, align 8
  store i64 0, i64* %73, align 8
  %74 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %75 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %76 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %75, i32 0, i32 0
  %77 = call i64 @sctp_calc_rwnd(%struct.sctp_tcb* %74, %struct.TYPE_9__* %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %80 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %78, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %66
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %87 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %85, %89
  store i64 %90, i64* %10, align 8
  br label %92

91:                                               ; preds = %66
  store i64 0, i64* %10, align 8
  br label %92

92:                                               ; preds = %91, %84
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %150

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %101 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = call i32 @SCTP_INP_READ_UNLOCK(%struct.TYPE_8__* %102)
  store i32 1, i32* %9, align 4
  br label %104

104:                                              ; preds = %99, %96
  %105 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %106 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SCTP_STATE_ABOUT_TO_BE_FREED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %155

113:                                              ; preds = %104
  %114 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %115 = call i32 @SCTP_TCB_LOCK(%struct.sctp_tcb* %114)
  %116 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %117 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @SCTP_STATE_ABOUT_TO_BE_FREED, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %125 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %124)
  br label %155

126:                                              ; preds = %113
  %127 = load i32, i32* @sctps_wu_sacks_sent, align 4
  %128 = call i32 @SCTP_STAT_INCR(i32 %127)
  %129 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %130 = load i32, i32* @SCTP_SO_LOCKED, align 4
  %131 = call i32 @sctp_send_sack(%struct.sctp_tcb* %129, i32 %130)
  %132 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %133 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %136 = load i32, i32* @SCTP_OUTPUT_FROM_USR_RCVD, align 4
  %137 = load i32, i32* @SCTP_SO_LOCKED, align 4
  %138 = call i32 @sctp_chunk_output(%struct.TYPE_8__* %134, %struct.sctp_tcb* %135, i32 %136, i32 %137)
  %139 = load i32, i32* @SCTP_TIMER_TYPE_RECV, align 4
  %140 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %141 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %144 = load i64, i64* @SCTP_FROM_SCTPUTIL, align 8
  %145 = load i64, i64* @SCTP_LOC_6, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @sctp_timer_stop(i32 %139, %struct.TYPE_8__* %142, %struct.sctp_tcb* %143, i32* null, i64 %146)
  %148 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %149 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %148)
  br label %154

150:                                              ; preds = %92
  %151 = load i64, i64* %10, align 8
  %152 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %153 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %152, i32 0, i32 2
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %150, %126
  br label %155

155:                                              ; preds = %154, %123, %112, %65, %58
  %156 = load %struct.socket*, %struct.socket** %12, align 8
  %157 = icmp ne %struct.socket* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %166 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = call i32 @SCTP_INP_READ_LOCK(%struct.TYPE_8__* %167)
  br label %169

169:                                              ; preds = %164, %161, %158, %155
  %170 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %171 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %170, i32 0, i32 1
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = call i32 @SCTP_INP_DECR_REF(%struct.TYPE_8__* %172)
  br label %174

174:                                              ; preds = %169, %35
  %175 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %176 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = call i32 @atomic_add_int(i64* %177, i32 -1)
  br label %179

179:                                              ; preds = %174, %15
  ret void
}

declare dso_local i32 @atomic_add_int(i64*, i32) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_INP_INCR_REF(%struct.TYPE_8__*) #1

declare dso_local i64 @sctp_calc_rwnd(%struct.sctp_tcb*, %struct.TYPE_9__*) #1

declare dso_local i32 @SCTP_INP_READ_UNLOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @SCTP_TCB_LOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_STAT_INCR(i32) #1

declare dso_local i32 @sctp_send_sack(%struct.sctp_tcb*, i32) #1

declare dso_local i32 @sctp_chunk_output(%struct.TYPE_8__*, %struct.sctp_tcb*, i32, i32) #1

declare dso_local i32 @sctp_timer_stop(i32, %struct.TYPE_8__*, %struct.sctp_tcb*, i32*, i64) #1

declare dso_local i32 @SCTP_INP_READ_LOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @SCTP_INP_DECR_REF(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
