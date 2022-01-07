; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_rx_ring_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_rx_ring_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32 }
%struct.ib_device = type { i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.ib_cq = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ib_cq* }

@SDP_RX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"rx ring created\00", align 1
@sdp_rx_comp_work = common dso_local global i32 0, align 4
@M_SDP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@sdp_rx_irq = common dso_local global i32 0, align 4
@sdp_rx_cq_event_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to allocate RX CQ: %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdp_rx_ring_create(%struct.sdp_sock* %0, %struct.ib_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdp_sock*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_cq_init_attr, align 4
  %7 = alloca %struct.ib_cq*, align 8
  %8 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  %9 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %6, i32 0, i32 0
  %10 = load i32, i32* @SDP_RX_SIZE, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %6, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %6, i32 0, i32 2
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %14 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sdp_dbg(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %18 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %17, i32 0, i32 2
  %19 = load i32, i32* @sdp_rx_comp_work, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %22 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = call i32 @atomic_set(i32* %23, i32 1)
  %25 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %26 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i32 @atomic_set(i32* %27, i32 1)
  %29 = load i32, i32* @SDP_RX_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @M_SDP, align 4
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = call i32* @malloc(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %37 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  %39 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %40 = load i32, i32* @sdp_rx_irq, align 4
  %41 = load i32, i32* @sdp_rx_cq_event_handler, align 4
  %42 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %43 = call %struct.ib_cq* @ib_create_cq(%struct.ib_device* %39, i32 %40, i32 %41, %struct.sdp_sock* %42, %struct.ib_cq_init_attr* %6)
  store %struct.ib_cq* %43, %struct.ib_cq** %7, align 8
  %44 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %45 = call i64 @IS_ERR(%struct.ib_cq* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %2
  %48 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %49 = call i32 @PTR_ERR(%struct.ib_cq* %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %51 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @sdp_warn(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %65

55:                                               ; preds = %2
  %56 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %57 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %58 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_6__* @sdp_sk(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store %struct.ib_cq* %56, %struct.ib_cq** %62, align 8
  %63 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %64 = call i32 @sdp_arm_rx_cq(%struct.sdp_sock* %63)
  store i32 0, i32* %3, align 4
  br label %76

65:                                               ; preds = %47
  %66 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %67 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @M_SDP, align 4
  %71 = call i32 @free(i32* %69, i32 %70)
  %72 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %73 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %65, %55
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @sdp_dbg(i32, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local %struct.ib_cq* @ib_create_cq(%struct.ib_device*, i32, i32, %struct.sdp_sock*, %struct.ib_cq_init_attr*) #1

declare dso_local i64 @IS_ERR(%struct.ib_cq*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_cq*) #1

declare dso_local i32 @sdp_warn(i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @sdp_sk(i32) #1

declare dso_local i32 @sdp_arm_rx_cq(%struct.sdp_sock*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
