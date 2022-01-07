; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_findassociation_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_findassociation_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sctphdr = type { i32, i32, i64 }
%struct.sctp_chunkhdr = type { i64 }
%struct.sctp_inpcb = type { i32 }
%struct.sctp_nets = type { i32 }

@SCTP_DEBUG_PCB1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"stcb:%p inp:%p\0A\00", align 1
@SCTP_INITIATION = common dso_local global i64 0, align 8
@SCTP_INITIATION_ACK = common dso_local global i64 0, align 8
@SCTP_PCB_FLAGS_IN_TCPPOOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"stcb is %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_tcb* @sctp_findassociation_addr(%struct.mbuf* %0, i32 %1, %struct.sockaddr* %2, %struct.sockaddr* %3, %struct.sctphdr* %4, %struct.sctp_chunkhdr* %5, %struct.sctp_inpcb** %6, %struct.sctp_nets** %7, i32 %8) #0 {
  %10 = alloca %struct.sctp_tcb*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca %struct.sctphdr*, align 8
  %16 = alloca %struct.sctp_chunkhdr*, align 8
  %17 = alloca %struct.sctp_inpcb**, align 8
  %18 = alloca %struct.sctp_nets**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.sctp_tcb*, align 8
  %21 = alloca %struct.sctp_inpcb*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %13, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %14, align 8
  store %struct.sctphdr* %4, %struct.sctphdr** %15, align 8
  store %struct.sctp_chunkhdr* %5, %struct.sctp_chunkhdr** %16, align 8
  store %struct.sctp_inpcb** %6, %struct.sctp_inpcb*** %17, align 8
  store %struct.sctp_nets** %7, %struct.sctp_nets*** %18, align 8
  store i32 %8, i32* %19, align 4
  %22 = load %struct.sctphdr*, %struct.sctphdr** %15, align 8
  %23 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %9
  %27 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %29 = load %struct.sctphdr*, %struct.sctphdr** %15, align 8
  %30 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ntohl(i64 %31)
  %33 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %17, align 8
  %34 = load %struct.sctp_nets**, %struct.sctp_nets*** %18, align 8
  %35 = load %struct.sctphdr*, %struct.sctphdr** %15, align 8
  %36 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sctphdr*, %struct.sctphdr** %15, align 8
  %39 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %19, align 4
  %42 = call %struct.sctp_tcb* @sctp_findassoc_by_vtag(%struct.sockaddr* %27, %struct.sockaddr* %28, i32 %32, %struct.sctp_inpcb** %33, %struct.sctp_nets** %34, i32 %37, i32 %40, i32 0, i32 %41, i32 0)
  store %struct.sctp_tcb* %42, %struct.sctp_tcb** %20, align 8
  %43 = load %struct.sctp_tcb*, %struct.sctp_tcb** %20, align 8
  %44 = icmp ne %struct.sctp_tcb* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %26
  %46 = load %struct.sctp_tcb*, %struct.sctp_tcb** %20, align 8
  store %struct.sctp_tcb* %46, %struct.sctp_tcb** %10, align 8
  br label %123

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47, %9
  %49 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %17, align 8
  %50 = icmp ne %struct.sctp_inpcb** %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %53 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %54 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %17, align 8
  %55 = load %struct.sctp_nets**, %struct.sctp_nets*** %18, align 8
  %56 = load i32, i32* %19, align 4
  %57 = call %struct.sctp_tcb* @sctp_findassociation_addr_sa(%struct.sockaddr* %52, %struct.sockaddr* %53, %struct.sctp_inpcb** %54, %struct.sctp_nets** %55, i32 1, i32 %56)
  store %struct.sctp_tcb* %57, %struct.sctp_tcb** %20, align 8
  %58 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %17, align 8
  %59 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %58, align 8
  store %struct.sctp_inpcb* %59, %struct.sctp_inpcb** %21, align 8
  br label %66

60:                                               ; preds = %48
  %61 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %62 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %63 = load %struct.sctp_nets**, %struct.sctp_nets*** %18, align 8
  %64 = load i32, i32* %19, align 4
  %65 = call %struct.sctp_tcb* @sctp_findassociation_addr_sa(%struct.sockaddr* %61, %struct.sockaddr* %62, %struct.sctp_inpcb** %21, %struct.sctp_nets** %63, i32 1, i32 %64)
  store %struct.sctp_tcb* %65, %struct.sctp_tcb** %20, align 8
  br label %66

66:                                               ; preds = %60, %51
  %67 = load i32, i32* @SCTP_DEBUG_PCB1, align 4
  %68 = load %struct.sctp_tcb*, %struct.sctp_tcb** %20, align 8
  %69 = bitcast %struct.sctp_tcb* %68 to i8*
  %70 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %21, align 8
  %71 = bitcast %struct.sctp_inpcb* %70 to i8*
  %72 = call i32 (i32, i8*, i8*, ...) @SCTPDBG(i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %69, i8* %71)
  %73 = load %struct.sctp_tcb*, %struct.sctp_tcb** %20, align 8
  %74 = icmp eq %struct.sctp_tcb* %73, null
  br i1 %74, label %75, label %117

75:                                               ; preds = %66
  %76 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %21, align 8
  %77 = icmp ne %struct.sctp_inpcb* %76, null
  br i1 %77, label %78, label %117

78:                                               ; preds = %75
  %79 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %16, align 8
  %80 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SCTP_INITIATION, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %16, align 8
  %86 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SCTP_INITIATION_ACK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %84, %78
  %91 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %21, align 8
  %92 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SCTP_PCB_FLAGS_IN_TCPPOOL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %17, align 8
  %99 = icmp ne %struct.sctp_inpcb** %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %17, align 8
  store %struct.sctp_inpcb* null, %struct.sctp_inpcb** %101, align 8
  br label %102

102:                                              ; preds = %100, %97
  store %struct.sctp_tcb* null, %struct.sctp_tcb** %10, align 8
  br label %123

103:                                              ; preds = %90
  %104 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.sctphdr*, %struct.sctphdr** %15, align 8
  %107 = load %struct.sctp_nets**, %struct.sctp_nets*** %18, align 8
  %108 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %109 = call %struct.sctp_tcb* @sctp_findassociation_special_addr(%struct.mbuf* %104, i32 %105, %struct.sctphdr* %106, %struct.sctp_inpcb** %21, %struct.sctp_nets** %107, %struct.sockaddr* %108)
  store %struct.sctp_tcb* %109, %struct.sctp_tcb** %20, align 8
  %110 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %17, align 8
  %111 = icmp ne %struct.sctp_inpcb** %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %21, align 8
  %114 = load %struct.sctp_inpcb**, %struct.sctp_inpcb*** %17, align 8
  store %struct.sctp_inpcb* %113, %struct.sctp_inpcb** %114, align 8
  br label %115

115:                                              ; preds = %112, %103
  br label %116

116:                                              ; preds = %115, %84
  br label %117

117:                                              ; preds = %116, %75, %66
  %118 = load i32, i32* @SCTP_DEBUG_PCB1, align 4
  %119 = load %struct.sctp_tcb*, %struct.sctp_tcb** %20, align 8
  %120 = bitcast %struct.sctp_tcb* %119 to i8*
  %121 = call i32 (i32, i8*, i8*, ...) @SCTPDBG(i32 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %120)
  %122 = load %struct.sctp_tcb*, %struct.sctp_tcb** %20, align 8
  store %struct.sctp_tcb* %122, %struct.sctp_tcb** %10, align 8
  br label %123

123:                                              ; preds = %117, %102, %45
  %124 = load %struct.sctp_tcb*, %struct.sctp_tcb** %10, align 8
  ret %struct.sctp_tcb* %124
}

declare dso_local %struct.sctp_tcb* @sctp_findassoc_by_vtag(%struct.sockaddr*, %struct.sockaddr*, i32, %struct.sctp_inpcb**, %struct.sctp_nets**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local %struct.sctp_tcb* @sctp_findassociation_addr_sa(%struct.sockaddr*, %struct.sockaddr*, %struct.sctp_inpcb**, %struct.sctp_nets**, i32, i32) #1

declare dso_local i32 @SCTPDBG(i32, i8*, i8*, ...) #1

declare dso_local %struct.sctp_tcb* @sctp_findassociation_special_addr(%struct.mbuf*, i32, %struct.sctphdr*, %struct.sctp_inpcb**, %struct.sctp_nets**, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
