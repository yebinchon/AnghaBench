; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_fb_init_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_fb_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sctp_stream_out*, %struct.sctp_stream_out* }
%struct.sctp_stream_out = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_stream_out*, %struct.sctp_stream_out*)* @sctp_ss_fb_init_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_ss_fb_init_stream(%struct.sctp_tcb* %0, %struct.sctp_stream_out* %1, %struct.sctp_stream_out* %2) #0 {
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sctp_stream_out*, align 8
  %6 = alloca %struct.sctp_stream_out*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sctp_stream_out* %1, %struct.sctp_stream_out** %5, align 8
  store %struct.sctp_stream_out* %2, %struct.sctp_stream_out** %6, align 8
  %7 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %6, align 8
  %8 = icmp ne %struct.sctp_stream_out* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %3
  %10 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %13, align 8
  %15 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %6, align 8
  %16 = icmp eq %struct.sctp_stream_out* %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %5, align 8
  %19 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %20 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store %struct.sctp_stream_out* %18, %struct.sctp_stream_out** %22, align 8
  br label %23

23:                                               ; preds = %17, %9
  %24 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %25 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %27, align 8
  %29 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %6, align 8
  %30 = icmp eq %struct.sctp_stream_out* %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %5, align 8
  %33 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %34 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store %struct.sctp_stream_out* %32, %struct.sctp_stream_out** %36, align 8
  br label %37

37:                                               ; preds = %31, %23
  br label %38

38:                                               ; preds = %37, %3
  %39 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %5, align 8
  %40 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %5, align 8
  %45 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %6, align 8
  %50 = icmp ne %struct.sctp_stream_out* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %38
  %52 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %6, align 8
  %53 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %5, align 8
  %58 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  br label %66

61:                                               ; preds = %38
  %62 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %5, align 8
  %63 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
