; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_rq_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_rq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_rq = type { i32, i32*, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@OCE_RQ_PACKET_ARRAY_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oce_rq*)* @oce_rq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_rq_free(%struct.oce_rq* %0) #0 {
  %2 = alloca %struct.oce_rq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.oce_rq* %0, %struct.oce_rq** %2, align 8
  %5 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %6 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %9 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %15 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @oce_destroy_ring_buffer(i32 %13, i32* %16)
  %18 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %19 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %12, %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %95, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @OCE_RQ_PACKET_ARRAY_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %98

25:                                               ; preds = %21
  %26 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %27 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %25
  %36 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %37 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %40 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @bus_dmamap_unload(i32* %38, i32* %46)
  %48 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %49 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %52 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @bus_dmamap_destroy(i32* %50, i32* %58)
  %60 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %61 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %35, %25
  %68 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %69 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %67
  %78 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %79 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @m_free(i32* %85)
  %87 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %88 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %77, %67
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %21

98:                                               ; preds = %21
  %99 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %100 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %105 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @bus_dma_tag_destroy(i32* %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %110 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %109, i32 0, i32 0
  %111 = call i32 @LOCK_DESTROY(i32* %110)
  %112 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %113 = load i32, i32* @M_DEVBUF, align 4
  %114 = call i32 @free(%struct.oce_rq* %112, i32 %113)
  ret void
}

declare dso_local i32 @oce_destroy_ring_buffer(i32, i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @m_free(i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @LOCK_DESTROY(i32*) #1

declare dso_local i32 @free(%struct.oce_rq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
