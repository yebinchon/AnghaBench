; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_copy_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_copy_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_stream_queue_pending = type { i32*, i32, i32 }
%struct.uio = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_OUTPUT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_stream_queue_pending*, %struct.uio*, i32)* @sctp_copy_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_copy_one(%struct.sctp_stream_queue_pending* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_stream_queue_pending*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  store %struct.sctp_stream_queue_pending* %0, %struct.sctp_stream_queue_pending** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.uio*, %struct.uio** %6, align 8
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %5, align 8
  %11 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32* @m_uiotombuf(%struct.uio* %8, i32 %9, i32 %12, i32 %13, i32 0)
  %15 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %5, align 8
  %16 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @SCTP_FROM_SCTP_OUTPUT, align 4
  %23 = load i32, i32* @ENOBUFS, align 4
  %24 = call i32 @SCTP_LTRACE_ERR_RET(i32* null, i32* null, i32* null, i32 %22, i32 %23)
  %25 = load i32, i32* @ENOBUFS, align 4
  store i32 %25, i32* %4, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %5, align 8
  %28 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @m_last(i32* %29)
  %31 = load %struct.sctp_stream_queue_pending*, %struct.sctp_stream_queue_pending** %5, align 8
  %32 = getelementptr inbounds %struct.sctp_stream_queue_pending, %struct.sctp_stream_queue_pending* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32* @m_uiotombuf(%struct.uio*, i32, i32, i32, i32) #1

declare dso_local i32 @SCTP_LTRACE_ERR_RET(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @m_last(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
