; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_set_primary_ip_address_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_asconf.c_sctp_set_primary_ip_address_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sctp_ifa = type { i32 }

@SCTP_ADDR_NOT_LOCKED = common dso_local global i32 0, align 4
@SCTP_SET_PRIM_ADDR = common dso_local global i32 0, align 4
@SCTP_DEBUG_ASCONF1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"set_primary_ip_address_sa: queued on tcb=%p, \00", align 1
@SCTP_STATE_OPEN = common dso_local global i64 0, align 8
@SCTP_STATE_SHUTDOWN_RECEIVED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"set_primary_ip_address_sa: failed to add to queue on tcb=%p, \00", align 1
@SCTP_TIMER_TYPE_ASCONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_set_primary_ip_address_sa(%struct.sctp_tcb* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_ifa*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %8 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SCTP_ADDR_NOT_LOCKED, align 4
  %15 = call %struct.sctp_ifa* @sctp_find_ifa_by_addr(%struct.sockaddr* %12, i32 %13, i32 %14)
  store %struct.sctp_ifa* %15, %struct.sctp_ifa** %7, align 8
  %16 = load %struct.sctp_ifa*, %struct.sctp_ifa** %7, align 8
  %17 = icmp eq %struct.sctp_ifa* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %21 = load %struct.sctp_ifa*, %struct.sctp_ifa** %7, align 8
  %22 = load i32, i32* @SCTP_SET_PRIM_ADDR, align 4
  %23 = call i32 @sctp_asconf_queue_add(%struct.sctp_tcb* %20, %struct.sctp_ifa* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @SCTP_DEBUG_ASCONF1, align 4
  %27 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %28 = bitcast %struct.sctp_tcb* %27 to i8*
  %29 = call i32 @SCTPDBG(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @SCTP_DEBUG_ASCONF1, align 4
  %31 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %32 = call i32 @SCTPDBG_ADDR(i32 %30, %struct.sockaddr* %31)
  %33 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %34 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %33)
  %35 = load i64, i64* @SCTP_STATE_OPEN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %39 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %38)
  %40 = load i64, i64* @SCTP_STATE_SHUTDOWN_RECEIVED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37, %25
  %43 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %44 = load i32, i32* @SCTP_ADDR_NOT_LOCKED, align 4
  %45 = call i32 @sctp_send_asconf(%struct.sctp_tcb* %43, i32* null, i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  br label %55

47:                                               ; preds = %19
  %48 = load i32, i32* @SCTP_DEBUG_ASCONF1, align 4
  %49 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %50 = bitcast %struct.sctp_tcb* %49 to i8*
  %51 = call i32 @SCTPDBG(i32 %48, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @SCTP_DEBUG_ASCONF1, align 4
  %53 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %54 = call i32 @SCTPDBG_ADDR(i32 %52, %struct.sockaddr* %53)
  store i32 -1, i32* %3, align 4
  br label %56

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %47, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.sctp_ifa* @sctp_find_ifa_by_addr(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @sctp_asconf_queue_add(%struct.sctp_tcb*, %struct.sctp_ifa*, i32) #1

declare dso_local i32 @SCTPDBG(i32, i8*, i8*) #1

declare dso_local i32 @SCTPDBG_ADDR(i32, %struct.sockaddr*) #1

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_send_asconf(%struct.sctp_tcb*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
