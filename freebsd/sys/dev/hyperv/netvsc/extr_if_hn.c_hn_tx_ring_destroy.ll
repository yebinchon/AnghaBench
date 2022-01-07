; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_tx_ring_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_tx_ring_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_tx_ring = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_tx_ring*)* @hn_tx_ring_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_tx_ring_destroy(%struct.hn_tx_ring* %0) #0 {
  %2 = alloca %struct.hn_tx_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %2, align 8
  %4 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %5 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %4, i32 0, i32 4
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %91

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %25, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %13 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %18 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %19 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @hn_txdesc_gc(%struct.hn_tx_ring* %17, i32* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %32 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %37 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @hn_txdesc_dmamap_destroy(i32* %41)
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %48 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %53 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %52, i32 0, i32 7
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @bus_dma_tag_destroy(i32* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %58 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %63 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @bus_dma_tag_destroy(i32* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %68 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @M_DEVBUF, align 4
  %71 = call i32 @free(i32* %69, i32 %70)
  %72 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %73 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %72, i32 0, i32 4
  store i32* null, i32** %73, align 8
  %74 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %75 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %66
  %79 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %80 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @M_DEVBUF, align 4
  %83 = call i32 @buf_ring_free(i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %66
  %85 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %86 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %85, i32 0, i32 2
  %87 = call i32 @mtx_destroy(i32* %86)
  %88 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %89 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %88, i32 0, i32 1
  %90 = call i32 @mtx_destroy(i32* %89)
  br label %91

91:                                               ; preds = %84, %8
  ret void
}

declare dso_local i32 @hn_txdesc_gc(%struct.hn_tx_ring*, i32*) #1

declare dso_local i32 @hn_txdesc_dmamap_destroy(i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @buf_ring_free(i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
