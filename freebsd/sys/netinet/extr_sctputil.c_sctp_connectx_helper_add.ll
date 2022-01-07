; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_connectx_helper_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_connectx_helper_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_4__, %struct.sctp_inpcb* }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_inpcb = type { i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@INADDR_BROADCAST = common dso_local global i32 0, align 4
@SCTP_ADDR_IS_CONFIRMED = common dso_local global i32 0, align 4
@SCTP_DONOT_SETSCOPE = common dso_local global i32 0, align 4
@SCTP_FROM_SCTPUTIL = common dso_local global i64 0, align 8
@SCTP_LOC_10 = common dso_local global i64 0, align 8
@SCTP_LOC_7 = common dso_local global i64 0, align 8
@SCTP_LOC_8 = common dso_local global i64 0, align 8
@SCTP_LOC_9 = common dso_local global i64 0, align 8
@SCTP_NORMAL_PROC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_connectx_helper_add(%struct.sctp_tcb* %0, %struct.sockaddr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sctp_inpcb*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i64, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %14, %struct.sockaddr** %12, align 8
  %15 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %16 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %15, i32 0, i32 1
  %17 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %16, align 8
  store %struct.sctp_inpcb* %17, %struct.sctp_inpcb** %11, align 8
  %18 = load i32*, i32** %8, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %34, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %27 [
  ]

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %30 = ptrtoint %struct.sockaddr* %29 to i64
  %31 = load i64, i64* %13, align 8
  %32 = add i64 %30, %31
  %33 = inttoptr i64 %32 to %struct.sockaddr*
  store %struct.sockaddr* %33, %struct.sockaddr** %12, align 8
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %19

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
