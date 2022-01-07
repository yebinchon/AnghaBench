; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_tx.c_sdp_tx_ring_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_tx.c_sdp_tx_ring_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"tx ring destroy\0A\00", align 1
@M_SDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"destroy cq(%p) failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_tx_ring_destroy(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %3 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %4 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @sdp_dbg(i32 %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %8 = call i32 @SDP_WLOCK(%struct.sdp_sock* %7)
  %9 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %10 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = call i32 @callout_stop(i32* %11)
  %13 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %14 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %13, i32 0, i32 2
  %15 = call i32 @callout_stop(i32* %14)
  %16 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %17 = call i32 @SDP_WUNLOCK(%struct.sdp_sock* %16)
  %18 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %19 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = call i32 @callout_drain(i32* %20)
  %22 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %23 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %22, i32 0, i32 2
  %24 = call i32 @callout_drain(i32* %23)
  %25 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %26 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %1
  %31 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %32 = call i32 @sdp_tx_ring_purge(%struct.sdp_sock* %31)
  %33 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %34 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @M_SDP, align 4
  %38 = call i32 @free(i32* %36, i32 %37)
  %39 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %40 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %30, %1
  %43 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %44 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %50 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @ib_destroy_cq(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %57 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %60 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @sdp_warn(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %62)
  br label %68

64:                                               ; preds = %48
  %65 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %66 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %64, %55
  br label %69

69:                                               ; preds = %68, %42
  %70 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %71 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %70, i32 0, i32 0
  %72 = call i64 @ring_head(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %71)
  %73 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %74 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %73, i32 0, i32 0
  %75 = call i64 @ring_tail(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %74)
  %76 = icmp ne i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON(i32 %77)
  ret void
}

declare dso_local i32 @sdp_dbg(i32, i8*) #1

declare dso_local i32 @SDP_WLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @SDP_WUNLOCK(%struct.sdp_sock*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @sdp_tx_ring_purge(%struct.sdp_sock*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i64 @ib_destroy_cq(i32*) #1

declare dso_local i32 @sdp_warn(i32, i8*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ring_head(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

declare dso_local i64 @ring_tail(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
