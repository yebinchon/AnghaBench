; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_findassociation_addr_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_findassociation_addr_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sctp_inpcb = type { i32 }
%struct.sctp_nets = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_tcb* @sctp_findassociation_addr_sa(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sctp_inpcb** %2, %struct.sctp_nets** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sctp_tcb*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sctp_inpcb**, align 8
  %11 = alloca %struct.sctp_nets**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sctp_inpcb*, align 8
  %15 = alloca %struct.sctp_tcb*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store %struct.sctp_inpcb** %2, %struct.sctp_inpcb*** %10, align 8
  store %struct.sctp_nets** %3, %struct.sctp_nets*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.sctp_inpcb* null, %struct.sctp_inpcb** %14, align 8
  %16 = call i32 (...) @SCTP_INP_INFO_RLOCK()
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %6
  %20 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %10, align 8
  %21 = icmp ne %struct.sctp_inpcb** %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %10, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %26 = load %struct.sctp_nets**, %struct.sctp_nets*** %11, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call %struct.sctp_tcb* @sctp_tcb_special_locate(%struct.sctp_inpcb** %23, %struct.sockaddr* %24, %struct.sockaddr* %25, %struct.sctp_nets** %26, i32 %27)
  store %struct.sctp_tcb* %28, %struct.sctp_tcb** %15, align 8
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %32 = load %struct.sctp_nets**, %struct.sctp_nets*** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call %struct.sctp_tcb* @sctp_tcb_special_locate(%struct.sctp_inpcb** %14, %struct.sockaddr* %30, %struct.sockaddr* %31, %struct.sctp_nets** %32, i32 %33)
  store %struct.sctp_tcb* %34, %struct.sctp_tcb** %15, align 8
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.sctp_tcb*, %struct.sctp_tcb** %15, align 8
  %37 = icmp ne %struct.sctp_tcb* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = call i32 (...) @SCTP_INP_INFO_RUNLOCK()
  %40 = load %struct.sctp_tcb*, %struct.sctp_tcb** %15, align 8
  store %struct.sctp_tcb* %40, %struct.sctp_tcb** %7, align 8
  br label %72

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %6
  %43 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call %struct.sctp_inpcb* @sctp_pcb_findep(%struct.sockaddr* %43, i32 0, i32 1, i32 %44)
  store %struct.sctp_inpcb* %45, %struct.sctp_inpcb** %14, align 8
  %46 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %10, align 8
  %47 = icmp ne %struct.sctp_inpcb** %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %14, align 8
  %50 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %10, align 8
  store %struct.sctp_inpcb* %49, %struct.sctp_inpcb** %50, align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = call i32 (...) @SCTP_INP_INFO_RUNLOCK()
  %53 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %14, align 8
  %54 = icmp eq %struct.sctp_inpcb* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %7, align 8
  br label %72

56:                                               ; preds = %51
  %57 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %10, align 8
  %58 = icmp ne %struct.sctp_inpcb** %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %10, align 8
  %61 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %62 = load %struct.sctp_nets**, %struct.sctp_nets*** %11, align 8
  %63 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %64 = call %struct.sctp_tcb* @sctp_findassociation_ep_addr(%struct.sctp_inpcb** %60, %struct.sockaddr* %61, %struct.sctp_nets** %62, %struct.sockaddr* %63, i32* null)
  store %struct.sctp_tcb* %64, %struct.sctp_tcb** %15, align 8
  br label %70

65:                                               ; preds = %56
  %66 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %67 = load %struct.sctp_nets**, %struct.sctp_nets*** %11, align 8
  %68 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %69 = call %struct.sctp_tcb* @sctp_findassociation_ep_addr(%struct.sctp_inpcb** %14, %struct.sockaddr* %66, %struct.sctp_nets** %67, %struct.sockaddr* %68, i32* null)
  store %struct.sctp_tcb* %69, %struct.sctp_tcb** %15, align 8
  br label %70

70:                                               ; preds = %65, %59
  %71 = load %struct.sctp_tcb*, %struct.sctp_tcb** %15, align 8
  store %struct.sctp_tcb* %71, %struct.sctp_tcb** %7, align 8
  br label %72

72:                                               ; preds = %70, %55, %38
  %73 = load %struct.sctp_tcb*, %struct.sctp_tcb** %7, align 8
  ret %struct.sctp_tcb* %73
}

declare dso_local i32 @SCTP_INP_INFO_RLOCK(...) #1

declare dso_local %struct.sctp_tcb* @sctp_tcb_special_locate(%struct.sctp_inpcb**, %struct.sockaddr*, %struct.sockaddr*, %struct.sctp_nets**, i32) #1

declare dso_local i32 @SCTP_INP_INFO_RUNLOCK(...) #1

declare dso_local %struct.sctp_inpcb* @sctp_pcb_findep(%struct.sockaddr*, i32, i32, i32) #1

declare dso_local %struct.sctp_tcb* @sctp_findassociation_ep_addr(%struct.sctp_inpcb**, %struct.sockaddr*, %struct.sctp_nets**, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
