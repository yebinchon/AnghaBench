; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_free_rxtx_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_free_rxtx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i32*, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*)* @vtnet_free_rxtx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_free_rxtx_queues(%struct.vtnet_softc* %0) #0 {
  %2 = alloca %struct.vtnet_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %2, align 8
  %4 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %23, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %17 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @vtnet_destroy_rxq(i32* %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %28 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @M_DEVBUF, align 4
  %31 = call i32 @free(i32* %29, i32 %30)
  %32 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %33 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %26, %1
  %35 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %36 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %43 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %48 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @vtnet_destroy_txq(i32* %52)
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %40

57:                                               ; preds = %40
  %58 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %59 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @M_DEVBUF, align 4
  %62 = call i32 @free(i32* %60, i32 %61)
  %63 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %64 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %57, %34
  ret void
}

declare dso_local i32 @vtnet_destroy_rxq(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @vtnet_destroy_txq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
