; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_peeloff.c_sctp_can_peel_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_peeloff.c_sctp_can_peel_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }
%struct.sctp_inpcb = type { i32 }
%struct.sctp_tcb = type { i32 }

@SCTP_FROM_SCTP_PEELOFF = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_TCPTYPE = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_IN_TCPPOOL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SCTP_STATE_EMPTY = common dso_local global i64 0, align 8
@SCTP_STATE_INUSE = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_can_peel_off(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_inpcb*, align 8
  %7 = alloca %struct.sctp_tcb*, align 8
  %8 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = icmp eq %struct.socket* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @SCTP_FROM_SCTP_PEELOFF, align 4
  %13 = load i32, i32* @EBADF, align 4
  %14 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* null, %struct.sctp_tcb* null, i32* null, i32 %12, i32 %13)
  %15 = load i32, i32* @EBADF, align 4
  store i32 %15, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.sctp_inpcb*
  store %struct.sctp_inpcb* %20, %struct.sctp_inpcb** %6, align 8
  %21 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %22 = icmp eq %struct.sctp_inpcb* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, i32* @SCTP_FROM_SCTP_PEELOFF, align 4
  %25 = load i32, i32* @EFAULT, align 4
  %26 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* null, %struct.sctp_tcb* null, i32* null, i32 %24, i32 %25)
  %27 = load i32, i32* @EFAULT, align 4
  store i32 %27, i32* %3, align 4
  br label %83

28:                                               ; preds = %16
  %29 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %30 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SCTP_PCB_FLAGS_TCPTYPE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %37 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SCTP_PCB_FLAGS_IN_TCPPOOL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35, %28
  %43 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %44 = load i32, i32* @SCTP_FROM_SCTP_PEELOFF, align 4
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %43, %struct.sctp_tcb* null, i32* null, i32 %44, i32 %45)
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %47, i32* %3, align 4
  br label %83

48:                                               ; preds = %35
  %49 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call %struct.sctp_tcb* @sctp_findassociation_ep_asocid(%struct.sctp_inpcb* %49, i32 %50, i32 1)
  store %struct.sctp_tcb* %51, %struct.sctp_tcb** %7, align 8
  %52 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %53 = icmp eq %struct.sctp_tcb* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %56 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %57 = load i32, i32* @SCTP_FROM_SCTP_PEELOFF, align 4
  %58 = load i32, i32* @ENOENT, align 4
  %59 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %55, %struct.sctp_tcb* %56, i32* null, i32 %57, i32 %58)
  %60 = load i32, i32* @ENOENT, align 4
  store i32 %60, i32* %3, align 4
  br label %83

61:                                               ; preds = %48
  %62 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %63 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %62)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @SCTP_STATE_EMPTY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @SCTP_STATE_INUSE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67, %61
  %72 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %73 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %72)
  %74 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %6, align 8
  %75 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %76 = load i32, i32* @SCTP_FROM_SCTP_PEELOFF, align 4
  %77 = load i32, i32* @ENOTCONN, align 4
  %78 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %74, %struct.sctp_tcb* %75, i32* null, i32 %76, i32 %77)
  %79 = load i32, i32* @ENOTCONN, align 4
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %67
  %81 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  %82 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %71, %54, %42, %23, %11
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb*, %struct.sctp_tcb*, i32*, i32, i32) #1

declare dso_local %struct.sctp_tcb* @sctp_findassociation_ep_asocid(%struct.sctp_inpcb*, i32, i32) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
