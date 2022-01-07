; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_wq_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_wq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_wq = type { i32, i32, i32*, i32*, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@taskqueue_swi = common dso_local global i32 0, align 4
@OCE_WQ_PACKET_ARRAY_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oce_wq*)* @oce_wq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_wq_free(%struct.oce_wq* %0) #0 {
  %2 = alloca %struct.oce_wq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.oce_wq* %0, %struct.oce_wq** %2, align 8
  %5 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %6 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @taskqueue_swi, align 4
  %9 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %10 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %9, i32 0, i32 6
  %11 = call i32 @taskqueue_drain(i32 %8, i32* %10)
  %12 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %13 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %19 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @oce_destroy_ring_buffer(i32 %17, i32* %20)
  %22 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %23 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %16, %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %72, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @OCE_WQ_PACKET_ARRAY_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %75

29:                                               ; preds = %25
  %30 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %31 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %71

39:                                               ; preds = %29
  %40 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %41 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %44 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @bus_dmamap_unload(i32* %42, i32* %50)
  %52 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %53 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %56 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @bus_dmamap_destroy(i32* %54, i32* %62)
  %64 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %65 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %39, %29
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %25

75:                                               ; preds = %25
  %76 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %77 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %82 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @bus_dma_tag_destroy(i32* %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %87 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %92 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* @M_DEVBUF, align 4
  %95 = call i32 @buf_ring_free(i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %98 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %97, i32 0, i32 1
  %99 = call i32 @LOCK_DESTROY(i32* %98)
  %100 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %101 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %100, i32 0, i32 0
  %102 = call i32 @LOCK_DESTROY(i32* %101)
  %103 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %104 = load i32, i32* @M_DEVBUF, align 4
  %105 = call i32 @free(%struct.oce_wq* %103, i32 %104)
  ret void
}

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @oce_destroy_ring_buffer(i32, i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @buf_ring_free(i32*, i32) #1

declare dso_local i32 @LOCK_DESTROY(i32*) #1

declare dso_local i32 @free(%struct.oce_wq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
