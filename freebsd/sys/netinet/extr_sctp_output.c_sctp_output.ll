; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { i32* }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.thread = type { i32 }
%struct.uio = type { i32 }

@SCTP_FROM_SCTP_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_output(%struct.sctp_inpcb* %0, %struct.mbuf* %1, %struct.sockaddr* %2, %struct.mbuf* %3, %struct.thread* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_inpcb*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca i32, align 4
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %8, align 8
  store %struct.mbuf* %1, %struct.mbuf** %9, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store %struct.mbuf* %3, %struct.mbuf** %11, align 8
  store %struct.thread* %4, %struct.thread** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %15 = icmp eq %struct.sctp_inpcb* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %18 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %19 = load i32, i32* @SCTP_FROM_SCTP_OUTPUT, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @SCTP_LTRACE_ERR_RET_PKT(%struct.mbuf* %17, %struct.sctp_inpcb* %18, i32* null, i32* null, i32 %19, i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %7, align 4
  br label %45

23:                                               ; preds = %6
  %24 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %25 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %30 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %31 = load i32, i32* @SCTP_FROM_SCTP_OUTPUT, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @SCTP_LTRACE_ERR_RET_PKT(%struct.mbuf* %29, %struct.sctp_inpcb* %30, i32* null, i32* null, i32 %31, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %7, align 4
  br label %45

35:                                               ; preds = %23
  %36 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %8, align 8
  %37 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.thread*, %struct.thread** %12, align 8
  %44 = call i32 @sctp_sosend(i32* %38, %struct.sockaddr* %39, %struct.uio* null, %struct.mbuf* %40, %struct.mbuf* %41, i32 %42, %struct.thread* %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %35, %28, %16
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @SCTP_LTRACE_ERR_RET_PKT(%struct.mbuf*, %struct.sctp_inpcb*, i32*, i32*, i32, i32) #1

declare dso_local i32 @sctp_sosend(i32*, %struct.sockaddr*, %struct.uio*, %struct.mbuf*, %struct.mbuf*, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
