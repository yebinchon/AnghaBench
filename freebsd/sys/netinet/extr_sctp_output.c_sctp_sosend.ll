; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_sosend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_sosend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i64 }
%struct.uio = type { i32 }
%struct.mbuf = type { i32 }
%struct.thread = type { i32 }
%struct.sctp_sndrcvinfo = type { i32 }

@SCTP_SNDRCV = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sosend(%struct.socket* %0, %struct.sockaddr* %1, %struct.uio* %2, %struct.mbuf* %3, %struct.mbuf* %4, i32 %5, %struct.thread* %6) #0 {
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.thread*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sctp_sndrcvinfo, align 4
  %18 = alloca %struct.sockaddr*, align 8
  store %struct.socket* %0, %struct.socket** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store %struct.uio* %2, %struct.uio** %10, align 8
  store %struct.mbuf* %3, %struct.mbuf** %11, align 8
  store %struct.mbuf* %4, %struct.mbuf** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.thread* %6, %struct.thread** %14, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %20 = icmp ne %struct.mbuf* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %7
  %22 = load i32, i32* @SCTP_SNDRCV, align 4
  %23 = bitcast %struct.sctp_sndrcvinfo* %17 to i8*
  %24 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %25 = call i64 @sctp_find_cmsg(i32 %22, i8* %23, %struct.mbuf* %24, i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %16, align 4
  br label %28

28:                                               ; preds = %27, %21
  br label %29

29:                                               ; preds = %28, %7
  %30 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %30, %struct.sockaddr** %18, align 8
  %31 = load %struct.socket*, %struct.socket** %8, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %33 = load %struct.uio*, %struct.uio** %10, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %39
  %42 = phi %struct.sctp_sndrcvinfo* [ %17, %39 ], [ null, %40 ]
  %43 = load %struct.thread*, %struct.thread** %14, align 8
  %44 = call i32 @sctp_lower_sosend(%struct.socket* %31, %struct.sockaddr* %32, %struct.uio* %33, %struct.mbuf* %34, %struct.mbuf* %35, i32 %36, %struct.sctp_sndrcvinfo* %42, %struct.thread* %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  ret i32 %45
}

declare dso_local i64 @sctp_find_cmsg(i32, i8*, %struct.mbuf*, i32) #1

declare dso_local i32 @sctp_lower_sosend(%struct.socket*, %struct.sockaddr*, %struct.uio*, %struct.mbuf*, %struct.mbuf*, i32, %struct.sctp_sndrcvinfo*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
