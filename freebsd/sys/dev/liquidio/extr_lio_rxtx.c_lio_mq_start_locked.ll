; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_rxtx.c_lio_mq_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_rxtx.c_lio_mq_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio_instr_queue = type { i32 }
%struct.lio = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_mq_start_locked(%struct.ifnet* %0, %struct.lio_instr_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.lio_instr_queue*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.lio_instr_queue* %1, %struct.lio_instr_queue** %5, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = call %struct.lio* @if_getsoftc(%struct.ifnet* %9)
  store %struct.lio* %10, %struct.lio** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = call i32 @if_getdrvflags(%struct.ifnet* %11)
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.lio*, %struct.lio** %6, align 8
  %18 = getelementptr inbounds %struct.lio, %struct.lio* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16, %2
  %25 = load i32, i32* @ENETDOWN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %84

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %81, %27
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %31 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.mbuf* @drbr_peek(%struct.ifnet* %29, i32 %32)
  store %struct.mbuf* %33, %struct.mbuf** %7, align 8
  %34 = icmp ne %struct.mbuf* %33, null
  br i1 %34, label %35, label %82

35:                                               ; preds = %28
  %36 = load %struct.lio*, %struct.lio** %6, align 8
  %37 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %38 = call i32 @lio_xmit(%struct.lio* %36, %struct.lio_instr_queue* %37, %struct.mbuf** %7)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %43 = icmp eq %struct.mbuf* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %47 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @drbr_advance(%struct.ifnet* %45, i32 %48)
  br label %57

50:                                               ; preds = %41
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %53 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %56 = call i32 @drbr_putback(%struct.ifnet* %51, i32 %54, %struct.mbuf* %55)
  br label %57

57:                                               ; preds = %50, %44
  br label %82

58:                                               ; preds = %35
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %61 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @drbr_advance(%struct.ifnet* %59, i32 %62)
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %66 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %64, %struct.mbuf* %65)
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = call i32 @if_getdrvflags(%struct.ifnet* %67)
  %69 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %58
  %73 = load %struct.lio*, %struct.lio** %6, align 8
  %74 = getelementptr inbounds %struct.lio, %struct.lio* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72, %58
  br label %82

81:                                               ; preds = %72
  br label %28

82:                                               ; preds = %80, %57, %28
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %24
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @if_getdrvflags(%struct.ifnet*) #1

declare dso_local %struct.mbuf* @drbr_peek(%struct.ifnet*, i32) #1

declare dso_local i32 @lio_xmit(%struct.lio*, %struct.lio_instr_queue*, %struct.mbuf**) #1

declare dso_local i32 @drbr_advance(%struct.ifnet*, i32) #1

declare dso_local i32 @drbr_putback(%struct.ifnet*, i32, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
