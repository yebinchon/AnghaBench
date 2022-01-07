; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_request_next_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_request_next_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_request = type { i32 }
%struct.vtblk_softc = type { i32 }

@vbr_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vtblk_request* (%struct.vtblk_softc*)* @vtblk_request_next_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vtblk_request* @vtblk_request_next_ready(%struct.vtblk_softc* %0) #0 {
  %2 = alloca %struct.vtblk_softc*, align 8
  %3 = alloca %struct.vtblk_request*, align 8
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %2, align 8
  %4 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %4, i32 0, i32 0
  %6 = call %struct.vtblk_request* @TAILQ_FIRST(i32* %5)
  store %struct.vtblk_request* %6, %struct.vtblk_request** %3, align 8
  %7 = load %struct.vtblk_request*, %struct.vtblk_request** %3, align 8
  %8 = icmp ne %struct.vtblk_request* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %10, i32 0, i32 0
  %12 = load %struct.vtblk_request*, %struct.vtblk_request** %3, align 8
  %13 = load i32, i32* @vbr_link, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.vtblk_request* %12, i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.vtblk_request*, %struct.vtblk_request** %3, align 8
  ret %struct.vtblk_request* %16
}

declare dso_local %struct.vtblk_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vtblk_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
