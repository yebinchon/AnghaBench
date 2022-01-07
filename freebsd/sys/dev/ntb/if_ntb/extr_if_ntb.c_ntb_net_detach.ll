; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_net_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_net_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_net_ctx = type { i32, %struct.ntb_net_queue*, i32, i32 }
%struct.ntb_net_queue = type { i32, i32, i32, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ntb_net_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_net_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_net_ctx*, align 8
  %4 = alloca %struct.ntb_net_queue*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ntb_net_ctx* @device_get_softc(i32 %6)
  store %struct.ntb_net_ctx* %7, %struct.ntb_net_ctx** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %15, i32 0, i32 1
  %17 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %17, i64 %19
  %21 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntb_transport_link_down(i32 %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ether_ifdetach(i32 %30)
  %32 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @if_free(i32 %34)
  %36 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %36, i32 0, i32 2
  %38 = call i32 @ifmedia_removeall(i32* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %71, %27
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %46, i32 0, i32 1
  %48 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %48, i64 %50
  store %struct.ntb_net_queue* %51, %struct.ntb_net_queue** %4, align 8
  %52 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %4, align 8
  %53 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntb_transport_free_queue(i32 %54)
  %56 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %4, align 8
  %57 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @M_DEVBUF, align 4
  %60 = call i32 @buf_ring_free(i32 %58, i32 %59)
  %61 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %4, align 8
  %62 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %61, i32 0, i32 2
  %63 = call i32 @callout_drain(i32* %62)
  %64 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %4, align 8
  %65 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @taskqueue_drain_all(i32 %66)
  %68 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %4, align 8
  %69 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %68, i32 0, i32 0
  %70 = call i32 @mtx_destroy(i32* %69)
  br label %71

71:                                               ; preds = %45
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %39

74:                                               ; preds = %39
  %75 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %75, i32 0, i32 1
  %77 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %76, align 8
  %78 = load i32, i32* @M_DEVBUF, align 4
  %79 = call i32 @free(%struct.ntb_net_queue* %77, i32 %78)
  ret i32 0
}

declare dso_local %struct.ntb_net_ctx* @device_get_softc(i32) #1

declare dso_local i32 @ntb_transport_link_down(i32) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @if_free(i32) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @ntb_transport_free_queue(i32) #1

declare dso_local i32 @buf_ring_free(i32, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain_all(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.ntb_net_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
