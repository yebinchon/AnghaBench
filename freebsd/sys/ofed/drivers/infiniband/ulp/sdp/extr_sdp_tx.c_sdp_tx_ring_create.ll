; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_tx.c_sdp_tx_ring_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_tx.c_sdp_tx_ring_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i64, %struct.ib_cq*, i32, i32, i32 }
%struct.ib_cq = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }

@SDP_TX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tx ring create\0A\00", align 1
@M_SDP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@sdp_tx_irq = common dso_local global i32 0, align 4
@sdp_tx_cq_event_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to allocate TX CQ: %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdp_tx_ring_create(%struct.sdp_sock* %0, %struct.ib_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdp_sock*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_cq_init_attr, align 4
  %7 = alloca %struct.ib_cq*, align 8
  %8 = alloca i32, align 4
  store %struct.sdp_sock* %0, %struct.sdp_sock** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  %9 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %6, i32 0, i32 0
  %10 = load i32, i32* @SDP_TX_SIZE, align 4
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
  %18 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %21 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %20, i32 0, i32 2
  %22 = call i32 @callout_init_rw(i32* %19, i32* %21, i32 0)
  %23 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %24 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %23, i32 0, i32 3
  %25 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %26 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %25, i32 0, i32 2
  %27 = call i32 @callout_init_rw(i32* %24, i32* %26, i32 0)
  %28 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %29 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = call i32 @atomic_set(i32* %30, i32 1)
  %32 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %33 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = call i32 @atomic_set(i32* %34, i32 1)
  %36 = load i32, i32* @SDP_TX_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @M_SDP, align 4
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = call i32* @malloc(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %44 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %47 = load i32, i32* @sdp_tx_irq, align 4
  %48 = load i32, i32* @sdp_tx_cq_event_handler, align 4
  %49 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %50 = call %struct.ib_cq* @ib_create_cq(%struct.ib_device* %46, i32 %47, i32 %48, %struct.sdp_sock* %49, %struct.ib_cq_init_attr* %6)
  store %struct.ib_cq* %50, %struct.ib_cq** %7, align 8
  %51 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %52 = call i64 @IS_ERR(%struct.ib_cq* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %2
  %55 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %56 = call i32 @PTR_ERR(%struct.ib_cq* %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %58 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @sdp_warn(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %72

62:                                               ; preds = %2
  %63 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %64 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %65 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store %struct.ib_cq* %63, %struct.ib_cq** %66, align 8
  %67 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %68 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %71 = call i32 @sdp_arm_tx_cq(%struct.sdp_sock* %70)
  store i32 0, i32* %3, align 4
  br label %83

72:                                               ; preds = %54
  %73 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %74 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @M_SDP, align 4
  %78 = call i32 @free(i32* %76, i32 %77)
  %79 = load %struct.sdp_sock*, %struct.sdp_sock** %4, align 8
  %80 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %72, %62
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @sdp_dbg(i32, i8*) #1

declare dso_local i32 @callout_init_rw(i32*, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local %struct.ib_cq* @ib_create_cq(%struct.ib_device*, i32, i32, %struct.sdp_sock*, %struct.ib_cq_init_attr*) #1

declare dso_local i64 @IS_ERR(%struct.ib_cq*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_cq*) #1

declare dso_local i32 @sdp_warn(i32, i8*, i32) #1

declare dso_local i32 @sdp_arm_tx_cq(%struct.sdp_sock*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
