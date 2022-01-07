; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_send_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_send_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sctphdr = type { i32 }
%struct.mbuf = type { i32 }

@SCTP_ABORT_ASSOCIATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_send_abort(%struct.mbuf* %0, i32 %1, %struct.sockaddr* %2, %struct.sockaddr* %3, %struct.sctphdr* %4, i32 %5, %struct.mbuf* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca %struct.sockaddr*, align 8
  %17 = alloca %struct.sctphdr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.mbuf*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %13, align 8
  store i32 %1, i32* %14, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %15, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %16, align 8
  store %struct.sctphdr* %4, %struct.sctphdr** %17, align 8
  store i32 %5, i32* %18, align 4
  store %struct.mbuf* %6, %struct.mbuf** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %25 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i64 @sctp_is_there_an_abort_here(%struct.mbuf* %25, i32 %26, i32* %18)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %12
  %30 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %31 = icmp ne %struct.mbuf* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %34 = call i32 @sctp_m_freem(%struct.mbuf* %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %49

36:                                               ; preds = %12
  %37 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %39 = load %struct.sctphdr*, %struct.sctphdr** %17, align 8
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @SCTP_ABORT_ASSOCIATION, align 4
  %42 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* %23, align 4
  %47 = load i32, i32* %24, align 4
  %48 = call i32 @sctp_send_resp_msg(%struct.sockaddr* %37, %struct.sockaddr* %38, %struct.sctphdr* %39, i32 %40, i32 %41, %struct.mbuf* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %36, %35
  ret void
}

declare dso_local i64 @sctp_is_there_an_abort_here(%struct.mbuf*, i32, i32*) #1

declare dso_local i32 @sctp_m_freem(%struct.mbuf*) #1

declare dso_local i32 @sctp_send_resp_msg(%struct.sockaddr*, %struct.sockaddr*, %struct.sctphdr*, i32, i32, %struct.mbuf*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
