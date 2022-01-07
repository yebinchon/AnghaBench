; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_process_initack_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_process_initack_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.mbuf = type { i32 }
%struct.sctp_paramhdr = type { i32, i32 }
%struct.sctp_ifa = type { i32 }
%union.sctp_sockstore = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SCTP_DEBUG_ASCONF2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"processing init-ack addresses\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"process_initack_addrs: bad len (%d) type=%xh\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SCTP_ADDR_NOT_LOCKED = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_DO_ASCONF = common dso_local global i32 0, align 4
@SCTP_STATE_OPEN = common dso_local global i64 0, align 8
@SCTP_TIMER_TYPE_ASCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.mbuf*, i32, i32)* @sctp_process_initack_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_process_initack_addresses(%struct.sctp_tcb* %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_tcb*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctp_paramhdr, align 4
  %10 = alloca %struct.sctp_paramhdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sctp_ifa*, align 8
  %14 = alloca %union.sctp_sockstore, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @SCTP_DEBUG_ASCONF2, align 4
  %16 = call i32 @SCTPDBG(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.sctp_tcb*, %struct.sctp_tcb** %5, align 8
  %18 = icmp eq %struct.sctp_tcb* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %79

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = add i64 %25, 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %79

31:                                               ; preds = %20
  %32 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = bitcast %struct.sctp_paramhdr* %9 to i32*
  %35 = call i64 @sctp_m_getptr(%struct.mbuf* %32, i32 %33, i32 8, i32* %34)
  %36 = inttoptr i64 %35 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %36, %struct.sctp_paramhdr** %10, align 8
  br label %37

37:                                               ; preds = %73, %31
  %38 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %10, align 8
  %39 = icmp ne %struct.sctp_paramhdr* %38, null
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %10, align 8
  %42 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohs(i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %10, align 8
  %46 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohs(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %50 [
  ]

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @SCTP_SIZE32(i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @SCTP_PRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  br label %79

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @SCTP_SIZE32(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = add i64 %67, 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = icmp ugt i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %79

73:                                               ; preds = %59
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = bitcast %struct.sctp_paramhdr* %9 to i32*
  %77 = call i64 @sctp_m_getptr(%struct.mbuf* %74, i32 %75, i32 8, i32* %76)
  %78 = inttoptr i64 %77 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %78, %struct.sctp_paramhdr** %10, align 8
  br label %37

79:                                               ; preds = %19, %30, %55, %72, %37
  ret void
}

declare dso_local i32 @SCTPDBG(i32, i8*) #1

declare dso_local i64 @sctp_m_getptr(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @SCTP_SIZE32(i32) #1

declare dso_local i32 @SCTP_PRINTF(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
