; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_transmit_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_transmit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_net_queue = type { i32, i32, i32, i32 }
%struct.mbuf = type { i16, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KTR_NTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TX: ntb_transmit_locked\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"TX: start mbuf %p\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"TX: could not tx mbuf %p: %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@ntb_qp_full = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i16 0, align 2
@IFCOUNTER_OMCASTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_net_queue*)* @ntb_transmit_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transmit_locked(%struct.ntb_net_queue* %0) #0 {
  %2 = alloca %struct.ntb_net_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.ntb_net_queue* %0, %struct.ntb_net_queue** %2, align 8
  %8 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %2, align 8
  %9 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @KTR_NTB, align 4
  %12 = call i32 @CTR0(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %102, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %2, align 8
  %16 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mbuf* @drbr_peek(i32 %14, i32 %17)
  store %struct.mbuf* %18, %struct.mbuf** %4, align 8
  %19 = icmp ne %struct.mbuf* %18, null
  br i1 %19, label %20, label %103

20:                                               ; preds = %13
  %21 = load i32, i32* @KTR_NTB, align 4
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = call i32 @CTR1(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.mbuf* %22)
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %26 = call i32 @if_etherbpfmtap(i32 %24, %struct.mbuf* %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = load i16, i16* %32, align 4
  store i16 %33, i16* %7, align 2
  %34 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %2, align 8
  %35 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ntb_transport_tx_enqueue(i32 %36, %struct.mbuf* %37, %struct.mbuf* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %20
  %44 = load i32, i32* @KTR_NTB, align 4
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @CTR2(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.mbuf* %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %43
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %2, align 8
  %54 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %57 = call i32 @drbr_putback(i32 %52, i32 %55, %struct.mbuf* %56)
  %58 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %2, align 8
  %59 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %58, i32 0, i32 1
  %60 = load i32, i32* @SBT_1MS, align 4
  %61 = sdiv i32 %60, 4
  %62 = load i32, i32* @SBT_1MS, align 4
  %63 = sdiv i32 %62, 4
  %64 = load i32, i32* @ntb_qp_full, align 4
  %65 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %2, align 8
  %66 = call i32 @callout_reset_sbt(i32* %59, i32 %61, i32 %63, i32 %64, %struct.ntb_net_queue* %65, i32 0)
  br label %78

67:                                               ; preds = %43
  %68 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %69 = call i32 @m_freem(%struct.mbuf* %68)
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %2, align 8
  %72 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @drbr_advance(i32 %70, i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %77 = call i32 @if_inc_counter(i32 %75, i32 %76, i32 1)
  br label %78

78:                                               ; preds = %67, %51
  br label %103

79:                                               ; preds = %20
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %2, align 8
  %82 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @drbr_advance(i32 %80, i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %87 = call i32 @if_inc_counter(i32 %85, i32 %86, i32 1)
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @if_inc_counter(i32 %88, i32 %89, i32 %90)
  %92 = load i16, i16* %7, align 2
  %93 = sext i16 %92 to i32
  %94 = load i16, i16* @M_MCAST, align 2
  %95 = sext i16 %94 to i32
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %79
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @IFCOUNTER_OMCASTS, align 4
  %101 = call i32 @if_inc_counter(i32 %99, i32 %100, i32 1)
  br label %102

102:                                              ; preds = %98, %79
  br label %13

103:                                              ; preds = %78, %13
  ret void
}

declare dso_local i32 @CTR0(i32, i8*) #1

declare dso_local %struct.mbuf* @drbr_peek(i32, i32) #1

declare dso_local i32 @CTR1(i32, i8*, %struct.mbuf*) #1

declare dso_local i32 @if_etherbpfmtap(i32, %struct.mbuf*) #1

declare dso_local i32 @ntb_transport_tx_enqueue(i32, %struct.mbuf*, %struct.mbuf*, i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.mbuf*, i32) #1

declare dso_local i32 @drbr_putback(i32, i32, %struct.mbuf*) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.ntb_net_queue*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @drbr_advance(i32, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
