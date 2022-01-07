; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_pcbfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_main.c_sdp_pcbfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { i32, i32, %struct.TYPE_2__, i32*, i64, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ssk %p socket still attached\00", align 1
@SDP_DESTROY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ssk %p already destroyed\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Freeing pcb\00", align 1
@sdp_count = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@sdp_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdp_sock*)* @sdp_pcbfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_pcbfree(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %3 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %4 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %3, i32 0, i32 6
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %9 = bitcast %struct.sdp_sock* %8 to i8*
  %10 = call i32 @KASSERT(i32 %7, i8* %9)
  %11 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %12 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SDP_DESTROY, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %19 = bitcast %struct.sdp_sock* %18 to i8*
  %20 = call i32 @KASSERT(i32 %17, i8* %19)
  %21 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %22 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @sdp_dbg(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %26 = call i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock* %25)
  %27 = load i32, i32* @SDP_DESTROY, align 4
  %28 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %29 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %33 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %32)
  %34 = call i32 (...) @SDP_LIST_WLOCK()
  %35 = load i32, i32* @sdp_count, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @sdp_count, align 4
  %37 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %38 = load i32, i32* @list, align 4
  %39 = call i32 @LIST_REMOVE(%struct.sdp_sock* %37, i32 %38)
  %40 = call i32 (...) @SDP_LIST_WUNLOCK()
  %41 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %42 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @crfree(i32 %43)
  %45 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %46 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %48 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %1
  %52 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %53 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ib_destroy_qp(i32* %54)
  %56 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %57 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %51, %1
  %59 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %60 = call i32 @sdp_tx_ring_destroy(%struct.sdp_sock* %59)
  %61 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %62 = call i32 @sdp_rx_ring_destroy(%struct.sdp_sock* %61)
  %63 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %64 = call i32 @sdp_destroy_cma(%struct.sdp_sock* %63)
  %65 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %66 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @rw_destroy(i32* %67)
  %69 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %70 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %69, i32 0, i32 1
  %71 = call i32 @rw_destroy(i32* %70)
  %72 = load i32, i32* @sdp_zone, align 4
  %73 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %74 = call i32 @uma_zfree(i32 %72, %struct.sdp_sock* %73)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sdp_dbg(i32*, i8*) #1

declare dso_local i32 @SDP_WLOCK_ASSERT(%struct.sdp_sock*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @SDP_LIST_WLOCK(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.sdp_sock*, i32) #1

declare dso_local i32 @SDP_LIST_WUNLOCK(...) #1

declare dso_local i32 @crfree(i32) #1

declare dso_local i32 @ib_destroy_qp(i32*) #1

declare dso_local i32 @sdp_tx_ring_destroy(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_rx_ring_destroy(%struct.sdp_sock*) #1

declare dso_local i32 @sdp_destroy_cma(%struct.sdp_sock*) #1

declare dso_local i32 @rw_destroy(i32*) #1

declare dso_local i32 @uma_zfree(i32, %struct.sdp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
