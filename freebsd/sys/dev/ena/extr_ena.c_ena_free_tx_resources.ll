; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_tx_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { %struct.TYPE_4__*, i32, %struct.TYPE_6__*, %struct.ena_ring* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ena_ring = type { i32, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, %struct.ena_netmap_tx_info, i32, i32 }
%struct.ena_netmap_tx_info = type { i64*, i32* }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@ENA_PKT_MAX_BUFS = common dso_local global i32 0, align 4
@IFCAP_NETMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, i32)* @ena_free_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_free_tx_resources(%struct.ena_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %7, i32 0, i32 3
  %9 = load %struct.ena_ring*, %struct.ena_ring** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %9, i64 %11
  store %struct.ena_ring* %12, %struct.ena_ring** %5, align 8
  br label %13

13:                                               ; preds = %21, %2
  %14 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %15 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %18 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %17, i32 0, i32 6
  %19 = call i64 @taskqueue_cancel(i32 %16, i32* %18, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %23 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %26 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %25, i32 0, i32 6
  %27 = call i32 @taskqueue_drain(i32 %24, i32* %26)
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %30 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @taskqueue_free(i32 %31)
  %33 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %34 = call i32 @ENA_RING_MTX_LOCK(%struct.ena_ring* %33)
  %35 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %39 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @drbr_flush(%struct.TYPE_6__* %37, i32 %40)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %175, %28
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %45 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %178

48:                                               ; preds = %42
  %49 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %50 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %49, i32 0, i32 3
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %91

58:                                               ; preds = %48
  %59 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %63 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %71 = call i32 @bus_dmamap_sync(i32 %61, i32 %69, i32 %70)
  %72 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %76 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bus_dmamap_unload(i32 %74, i32 %82)
  %84 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %85 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %84, i32 0, i32 3
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %58, %48
  %92 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %96 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %95, i32 0, i32 3
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @bus_dmamap_destroy(i32 %94, i32 %102)
  %104 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %105 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %104, i32 0, i32 3
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %146

113:                                              ; preds = %91
  %114 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %118 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %117, i32 0, i32 3
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %126 = call i32 @bus_dmamap_sync(i32 %116, i32 %124, i32 %125)
  %127 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %131 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %130, i32 0, i32 3
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @bus_dmamap_unload(i32 %129, i32 %137)
  %139 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %140 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %139, i32 0, i32 3
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %113, %91
  %147 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %148 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %151 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %150, i32 0, i32 3
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @bus_dmamap_destroy(i32 %149, i32 %157)
  %159 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %160 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %159, i32 0, i32 3
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @m_freem(i32* %166)
  %168 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %169 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %168, i32 0, i32 3
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  store i32* null, i32** %174, align 8
  br label %175

175:                                              ; preds = %146
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %42

178:                                              ; preds = %42
  %179 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %180 = call i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring* %179)
  %181 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %182 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %181, i32 0, i32 3
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load i32, i32* @M_DEVBUF, align 4
  %185 = call i32 @free(%struct.TYPE_5__* %183, i32 %184)
  %186 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %187 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %186, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %187, align 8
  %188 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %189 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %188, i32 0, i32 2
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = load i32, i32* @M_DEVBUF, align 4
  %192 = call i32 @free(%struct.TYPE_5__* %190, i32 %191)
  %193 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %194 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %193, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %194, align 8
  %195 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %196 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %195, i32 0, i32 0
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %201 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @ENA_MEM_FREE(i32 %199, i32* %202)
  %204 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %205 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %204, i32 0, i32 1
  store i32* null, i32** %205, align 8
  ret void
}

declare dso_local i64 @taskqueue_cancel(i32, i32*, i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @ENA_RING_MTX_LOCK(%struct.ena_ring*) #1

declare dso_local i32 @drbr_flush(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring*) #1

declare dso_local i32 @free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ENA_MEM_FREE(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
