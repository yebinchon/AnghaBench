; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_fb_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_fb_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sctp_tcb = type { i32 }
%struct.sctp_association = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sctp_stream_out = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32* }

@ss_params = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_association*, i32, i32)* @sctp_ss_fb_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_ss_fb_clear(%struct.sctp_tcb* %0, %struct.sctp_association* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctp_stream_out*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %5, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %14 = call i32 @SCTP_TCB_SEND_LOCK(%struct.sctp_tcb* %13)
  br label %15

15:                                               ; preds = %12, %4
  br label %16

16:                                               ; preds = %37, %15
  %17 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %18 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = call i32 @TAILQ_EMPTY(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %55

24:                                               ; preds = %16
  %25 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %26 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call %struct.sctp_stream_out* @TAILQ_FIRST(i32* %28)
  store %struct.sctp_stream_out* %29, %struct.sctp_stream_out** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %9, align 8
  %34 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  br label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %39 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %9, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ss_params, i32 0, i32 0, i32 0), align 4
  %44 = call i32 @TAILQ_REMOVE(i32* %41, %struct.sctp_stream_out* %42, i32 %43)
  %45 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %9, align 8
  %46 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %9, align 8
  %51 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %16

55:                                               ; preds = %16
  %56 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %57 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %63 = call i32 @SCTP_TCB_SEND_UNLOCK(%struct.sctp_tcb* %62)
  br label %64

64:                                               ; preds = %61, %55
  ret void
}

declare dso_local i32 @SCTP_TCB_SEND_LOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.sctp_stream_out* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sctp_stream_out*, i32) #1

declare dso_local i32 @SCTP_TCB_SEND_UNLOCK(%struct.sctp_tcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
