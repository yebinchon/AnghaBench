; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_send_operr_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_send_operr_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sctphdr = type { i32 }
%struct.mbuf = type { i32 }

@SCTP_OPERATION_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_send_operr_to(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sctphdr* %2, i32 %3, %struct.mbuf* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca %struct.sctphdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %11, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %12, align 8
  store %struct.sctphdr* %2, %struct.sctphdr** %13, align 8
  store i32 %3, i32* %14, align 4
  store %struct.mbuf* %4, %struct.mbuf** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %23 = load %struct.sctphdr*, %struct.sctphdr** %13, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @SCTP_OPERATION_ERROR, align 4
  %26 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* %19, align 4
  %31 = load i32, i32* %20, align 4
  %32 = call i32 @sctp_send_resp_msg(%struct.sockaddr* %21, %struct.sockaddr* %22, %struct.sctphdr* %23, i32 %24, i32 %25, %struct.mbuf* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @sctp_send_resp_msg(%struct.sockaddr*, %struct.sockaddr*, %struct.sctphdr*, i32, i32, %struct.mbuf*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
