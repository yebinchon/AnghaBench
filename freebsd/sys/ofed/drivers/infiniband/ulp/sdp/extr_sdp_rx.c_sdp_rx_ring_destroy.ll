; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_rx_ring_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_rx.c_sdp_rx_ring_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_sock = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32* }

@M_SDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"destroy cq(%p) failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_rx_ring_destroy(%struct.sdp_sock* %0) #0 {
  %2 = alloca %struct.sdp_sock*, align 8
  store %struct.sdp_sock* %0, %struct.sdp_sock** %2, align 8
  %3 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %4 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %3, i32 0, i32 2
  %5 = call i32 @cancel_work_sync(i32* %4)
  %6 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %7 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %6, i32 0, i32 0
  %8 = call i32 @rx_ring_destroy_lock(%struct.TYPE_4__* %7)
  %9 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %10 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %16 = call i32 @sdp_rx_ring_purge(%struct.sdp_sock* %15)
  %17 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %18 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @M_SDP, align 4
  %22 = call i32 @free(i32* %20, i32 %21)
  %23 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %24 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %14, %1
  %27 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %28 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %34 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @ib_destroy_cq(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %41 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %44 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @sdp_warn(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %46)
  br label %52

48:                                               ; preds = %32
  %49 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %50 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %48, %39
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %55 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %54, i32 0, i32 0
  %56 = bitcast %struct.TYPE_4__* %55 to { i32*, i32* }*
  %57 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %56, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @ring_head(i32* %58, i32* %60)
  %62 = load %struct.sdp_sock*, %struct.sdp_sock** %2, align 8
  %63 = getelementptr inbounds %struct.sdp_sock, %struct.sdp_sock* %62, i32 0, i32 0
  %64 = bitcast %struct.TYPE_4__* %63 to { i32*, i32* }*
  %65 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %64, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @ring_tail(i32* %66, i32* %68)
  %70 = icmp ne i64 %61, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @WARN_ON(i32 %71)
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @rx_ring_destroy_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @sdp_rx_ring_purge(%struct.sdp_sock*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i64 @ib_destroy_cq(i32*) #1

declare dso_local i32 @sdp_warn(i32, i8*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ring_head(i32*, i32*) #1

declare dso_local i64 @ring_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
