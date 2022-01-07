; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_net_rx_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_net_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32 }
%struct.ntb_net_queue = type { i32, %struct.ntb_net_ctx* }
%struct.ntb_net_ctx = type { i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, %struct.ntb_net_queue*, i32 }

@KTR_NTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"RX: rx handler (%d)\00", align 1
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@M_HASHTYPE_OPAQUE = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@NTB_CSUM_SET = common dso_local global i8* null, align 8
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_qp*, i8*, i8*, i32)* @ntb_net_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_net_rx_handler(%struct.ntb_transport_qp* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ntb_transport_qp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ntb_net_queue*, align 8
  %10 = alloca %struct.ntb_net_ctx*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.ntb_net_queue*
  store %struct.ntb_net_queue* %15, %struct.ntb_net_queue** %9, align 8
  %16 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %9, align 8
  %17 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %16, i32 0, i32 1
  %18 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %17, align 8
  store %struct.ntb_net_ctx* %18, %struct.ntb_net_ctx** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.mbuf*
  store %struct.mbuf* %20, %struct.mbuf** %11, align 8
  %21 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %9, align 8
  %22 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @KTR_NTB, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @CTR1(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %32 = call i32 @if_inc_counter(i32 %30, i32 %31, i32 1)
  br label %108

33:                                               ; preds = %4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 8
  %38 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %56

42:                                               ; preds = %33
  %43 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %9, align 8
  %44 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %10, align 8
  %45 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %43, i64 %48
  %50 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store %struct.ntb_net_queue* %49, %struct.ntb_net_queue** %52, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %54 = load i32, i32* @M_HASHTYPE_OPAQUE, align 4
  %55 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %53, i32 %54)
  br label %56

56:                                               ; preds = %42, %33
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @if_getcapenable(i32 %57)
  %59 = load i32, i32* @IFCAP_RXCSUM, align 4
  %60 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %56
  %65 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %66 = bitcast i32* %13 to i8*
  %67 = call i32 @m_copydata(%struct.mbuf* %65, i32 12, i32 2, i8* %66)
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @ntohs(i32 %68)
  switch i32 %69, label %100 [
    i32 129, label %70
    i32 128, label %85
  ]

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @if_getcapenable(i32 %71)
  %73 = load i32, i32* @IFCAP_RXCSUM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 65535, i32* %79, align 8
  %80 = load i8*, i8** @NTB_CSUM_SET, align 8
  %81 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %82 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i8* %80, i8** %83, align 8
  br label %84

84:                                               ; preds = %76, %70
  br label %100

85:                                               ; preds = %64
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @if_getcapenable(i32 %86)
  %88 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %93 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 65535, i32* %94, align 8
  %95 = load i8*, i8** @NTB_CSUM_SET, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %97 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i8* %95, i8** %98, align 8
  br label %99

99:                                               ; preds = %91, %85
  br label %100

100:                                              ; preds = %64, %99, %84
  br label %101

101:                                              ; preds = %100, %56
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %104 = call i32 @if_inc_counter(i32 %102, i32 %103, i32 1)
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %107 = call i32 @if_input(i32 %105, %struct.mbuf* %106)
  br label %108

108:                                              ; preds = %101, %29
  ret void
}

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @M_HASHTYPE_SET(%struct.mbuf*, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @if_input(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
