; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, i32, %struct.TYPE_2__, i64, i32, i32*, i32*, i32*, i64, i32, i64, i32, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i64, i32, i32, i64, i32, i32 }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"xl mutex not initialized\00", align 1
@XL_FLAG_USE_MMIO = common dso_local global i32 0, align 4
@XL_PCI_LOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@XL_PCI_LOIO = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@taskqueue_swi = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@XL_PCI_FUNCMEM = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xl_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xl_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.xl_softc* @device_get_softc(i32 %7)
  store %struct.xl_softc* %8, %struct.xl_softc** %3, align 8
  %9 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %10 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %9, i32 0, i32 13
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %13 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %12, i32 0, i32 1
  %14 = call i32 @mtx_initialized(i32* %13)
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %17 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @XL_FLAG_USE_MMIO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @XL_PCI_LOMEM, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @XL_PCI_LOIO, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @device_is_attached(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %34 = call i32 @XL_LOCK(%struct.xl_softc* %33)
  %35 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %36 = call i32 @xl_stop(%struct.xl_softc* %35)
  %37 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %38 = call i32 @XL_UNLOCK(%struct.xl_softc* %37)
  %39 = load i32, i32* @taskqueue_swi, align 4
  %40 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %41 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %40, i32 0, i32 12
  %42 = call i32 @taskqueue_drain(i32 %39, i32* %41)
  %43 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %44 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %43, i32 0, i32 11
  %45 = call i32 @callout_drain(i32* %44)
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = call i32 @ether_ifdetach(%struct.ifnet* %46)
  br label %48

48:                                               ; preds = %32, %28
  %49 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %50 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* %2, align 4
  %55 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %56 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %55, i32 0, i32 10
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @device_delete_child(i32 %54, i64 %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @bus_generic_detach(i32 %60)
  %62 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %63 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %62, i32 0, i32 9
  %64 = call i32 @ifmedia_removeall(i32* %63)
  %65 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %66 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %59
  %70 = load i32, i32* %2, align 4
  %71 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %72 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %75 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @bus_teardown_intr(i32 %70, i32* %73, i64 %76)
  br label %78

78:                                               ; preds = %69, %59
  %79 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %80 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %79, i32 0, i32 7
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @SYS_RES_IRQ, align 4
  %86 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %87 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %86, i32 0, i32 7
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @bus_release_resource(i32 %84, i32 %85, i32 0, i32* %88)
  br label %90

90:                                               ; preds = %83, %78
  %91 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %92 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @SYS_RES_MEMORY, align 4
  %98 = load i32, i32* @XL_PCI_FUNCMEM, align 4
  %99 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %100 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @bus_release_resource(i32 %96, i32 %97, i32 %98, i32* %101)
  br label %103

103:                                              ; preds = %95, %90
  %104 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %105 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %113 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @bus_release_resource(i32 %109, i32 %110, i32 %111, i32* %114)
  br label %116

116:                                              ; preds = %108, %103
  %117 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %118 = icmp ne %struct.ifnet* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %121 = call i32 @if_free(%struct.ifnet* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %124 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %122
  %128 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %129 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %132 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @bus_dmamap_destroy(i64 %130, i32 %133)
  %135 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %136 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @bus_dma_tag_destroy(i64 %137)
  br label %139

139:                                              ; preds = %127, %122
  %140 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %141 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %173

145:                                              ; preds = %139
  %146 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %147 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %151 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @bus_dmamap_unload(i64 %149, i32 %153)
  %155 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %156 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %160 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %164 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @bus_dmamem_free(i64 %158, i32 %162, i32 %166)
  %168 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %169 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @bus_dma_tag_destroy(i64 %171)
  br label %173

173:                                              ; preds = %145, %139
  %174 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %175 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %207

179:                                              ; preds = %173
  %180 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %181 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %185 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @bus_dmamap_unload(i64 %183, i32 %187)
  %189 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %190 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %194 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %198 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @bus_dmamem_free(i64 %192, i32 %196, i32 %200)
  %202 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %203 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @bus_dma_tag_destroy(i64 %205)
  br label %207

207:                                              ; preds = %179, %173
  %208 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %209 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %208, i32 0, i32 1
  %210 = call i32 @mtx_destroy(i32* %209)
  ret i32 0
}

declare dso_local %struct.xl_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @XL_LOCK(%struct.xl_softc*) #1

declare dso_local i32 @xl_stop(%struct.xl_softc*) #1

declare dso_local i32 @XL_UNLOCK(%struct.xl_softc*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @bus_dmamap_destroy(i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
