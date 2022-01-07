; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_nat_colliding_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_handle_nat_colliding_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.sctpasochead = type { i32 }

@SCTP_STATE_COOKIE_WAIT = common dso_local global i64 0, align 8
@SCTP_STATE_COOKIE_ECHOED = common dso_local global i64 0, align 8
@sctp_asocs = common dso_local global i32 0, align 4
@sctp_asochash = common dso_local global i32 0, align 4
@hashasocmark = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_tcb*)* @sctp_handle_nat_colliding_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_handle_nat_colliding_state(%struct.sctp_tcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sctpasochead*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  %6 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %7 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %6)
  %8 = load i64, i64* @SCTP_STATE_COOKIE_WAIT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %12 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %11)
  %13 = load i64, i64* @SCTP_STATE_COOKIE_ECHOED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %10, %1
  %16 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %20 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @sctp_select_a_tag(%struct.TYPE_5__* %18, i32 %23, i32 %26, i32 1)
  store i8* %27, i8** %4, align 8
  %28 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = call i32 @atomic_add_int(i32* %30, i32 1)
  %32 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %33 = call i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb* %32)
  %34 = call i32 (...) @SCTP_INP_INFO_WLOCK()
  %35 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %36 = call i32 @SCTP_TCB_LOCK(%struct.sctp_tcb* %35)
  %37 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %38 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = call i32 @atomic_subtract_int(i32* %39, i32 1)
  br label %42

41:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %114

42:                                               ; preds = %15
  %43 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %44 = call i64 @SCTP_GET_STATE(%struct.sctp_tcb* %43)
  %45 = load i64, i64* @SCTP_STATE_COOKIE_WAIT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %42
  %48 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %49 = load i32, i32* @sctp_asocs, align 4
  %50 = call i32 @LIST_REMOVE(%struct.sctp_tcb* %48, i32 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %53 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load i32, i32* @sctp_asochash, align 4
  %56 = call %struct.sctpasochead* @SCTP_BASE_INFO(i32 %55)
  %57 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %58 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @hashasocmark, align 4
  %62 = call %struct.sctpasochead* @SCTP_BASE_INFO(i32 %61)
  %63 = call i64 @SCTP_PCBHASH_ASOC(i8* %60, %struct.sctpasochead* %62)
  %64 = getelementptr inbounds %struct.sctpasochead, %struct.sctpasochead* %56, i64 %63
  store %struct.sctpasochead* %64, %struct.sctpasochead** %5, align 8
  %65 = load %struct.sctpasochead*, %struct.sctpasochead** %5, align 8
  %66 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %67 = load i32, i32* @sctp_asocs, align 4
  %68 = call i32 @LIST_INSERT_HEAD(%struct.sctpasochead* %65, %struct.sctp_tcb* %66, i32 %67)
  %69 = call i32 (...) @SCTP_INP_INFO_WUNLOCK()
  %70 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %71 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %74 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %75 = call i32 @sctp_send_initiate(%struct.TYPE_5__* %72, %struct.sctp_tcb* %73, i32 %74)
  store i32 1, i32* %2, align 4
  br label %114

76:                                               ; preds = %42
  %77 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %78 = load i32, i32* @sctp_asocs, align 4
  %79 = call i32 @LIST_REMOVE(%struct.sctp_tcb* %77, i32 %78)
  %80 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %81 = load i64, i64* @SCTP_STATE_COOKIE_WAIT, align 8
  %82 = call i32 @SCTP_SET_STATE(%struct.sctp_tcb* %80, i64 %81)
  %83 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %84 = call i32 @sctp_stop_all_cookie_timers(%struct.sctp_tcb* %83)
  %85 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %86 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %87 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %86, i32 0, i32 1
  %88 = call i32 @sctp_toss_old_cookies(%struct.sctp_tcb* %85, %struct.TYPE_4__* %87)
  %89 = load i8*, i8** %4, align 8
  %90 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %91 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  %93 = load i32, i32* @sctp_asochash, align 4
  %94 = call %struct.sctpasochead* @SCTP_BASE_INFO(i32 %93)
  %95 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %96 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @hashasocmark, align 4
  %100 = call %struct.sctpasochead* @SCTP_BASE_INFO(i32 %99)
  %101 = call i64 @SCTP_PCBHASH_ASOC(i8* %98, %struct.sctpasochead* %100)
  %102 = getelementptr inbounds %struct.sctpasochead, %struct.sctpasochead* %94, i64 %101
  store %struct.sctpasochead* %102, %struct.sctpasochead** %5, align 8
  %103 = load %struct.sctpasochead*, %struct.sctpasochead** %5, align 8
  %104 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %105 = load i32, i32* @sctp_asocs, align 4
  %106 = call i32 @LIST_INSERT_HEAD(%struct.sctpasochead* %103, %struct.sctp_tcb* %104, i32 %105)
  %107 = call i32 (...) @SCTP_INP_INFO_WUNLOCK()
  %108 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %109 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %112 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %113 = call i32 @sctp_send_initiate(%struct.TYPE_5__* %110, %struct.sctp_tcb* %111, i32 %112)
  store i32 1, i32* %2, align 4
  br label %114

114:                                              ; preds = %76, %47, %41
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @SCTP_GET_STATE(%struct.sctp_tcb*) #1

declare dso_local i8* @sctp_select_a_tag(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @SCTP_TCB_UNLOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @SCTP_INP_INFO_WLOCK(...) #1

declare dso_local i32 @SCTP_TCB_LOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.sctp_tcb*, i32) #1

declare dso_local %struct.sctpasochead* @SCTP_BASE_INFO(i32) #1

declare dso_local i64 @SCTP_PCBHASH_ASOC(i8*, %struct.sctpasochead*) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.sctpasochead*, %struct.sctp_tcb*, i32) #1

declare dso_local i32 @SCTP_INP_INFO_WUNLOCK(...) #1

declare dso_local i32 @sctp_send_initiate(%struct.TYPE_5__*, %struct.sctp_tcb*, i32) #1

declare dso_local i32 @SCTP_SET_STATE(%struct.sctp_tcb*, i64) #1

declare dso_local i32 @sctp_stop_all_cookie_timers(%struct.sctp_tcb*) #1

declare dso_local i32 @sctp_toss_old_cookies(%struct.sctp_tcb*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
