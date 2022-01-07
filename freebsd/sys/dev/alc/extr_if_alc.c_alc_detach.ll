; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32, i32**, i32, i32**, i32, i32**, %struct.ifnet*, i32*, i32*, i32, i32 }
%struct.ifnet = type { i32 }

@ALC_FLAG_MSIX = common dso_local global i32 0, align 4
@ALC_MSIX_MESSAGES = common dso_local global i32 0, align 4
@ALC_FLAG_MSI = common dso_local global i32 0, align 4
@ALC_MSI_MESSAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @alc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alc_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.alc_softc* @device_get_softc(i32 %7)
  store %struct.alc_softc* %8, %struct.alc_softc** %3, align 8
  %9 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %9, i32 0, i32 7
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @device_is_attached(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = call i32 @ether_ifdetach(%struct.ifnet* %16)
  %18 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %19 = call i32 @ALC_LOCK(%struct.alc_softc* %18)
  %20 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %21 = call i32 @alc_stop(%struct.alc_softc* %20)
  %22 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %23 = call i32 @ALC_UNLOCK(%struct.alc_softc* %22)
  %24 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %24, i32 0, i32 11
  %26 = call i32 @callout_drain(i32* %25)
  %27 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %27, i32 0, i32 9
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %30, i32 0, i32 10
  %32 = call i32 @taskqueue_drain(i32* %29, i32* %31)
  br label %33

33:                                               ; preds = %15, %1
  %34 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %35 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %34, i32 0, i32 9
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %40 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %39, i32 0, i32 9
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %43 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %42, i32 0, i32 10
  %44 = call i32 @taskqueue_drain(i32* %41, i32* %43)
  %45 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %46 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %45, i32 0, i32 9
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @taskqueue_free(i32* %47)
  %49 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %50 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %49, i32 0, i32 9
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %38, %33
  %52 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %53 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32, i32* %2, align 4
  %58 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %59 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %58, i32 0, i32 8
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @device_delete_child(i32 %57, i32* %60)
  %62 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %63 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %62, i32 0, i32 8
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %56, %51
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @bus_generic_detach(i32 %65)
  %67 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %68 = call i32 @alc_dma_free(%struct.alc_softc* %67)
  %69 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %70 = icmp ne %struct.ifnet* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %73 = call i32 @if_free(%struct.ifnet* %72)
  %74 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %75 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %74, i32 0, i32 7
  store %struct.ifnet* null, %struct.ifnet** %75, align 8
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %78 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ALC_FLAG_MSIX, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @ALC_MSIX_MESSAGES, align 4
  store i32 %84, i32* %6, align 4
  br label %96

85:                                               ; preds = %76
  %86 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %87 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ALC_FLAG_MSI, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @ALC_MSI_MESSAGES, align 4
  store i32 %93, i32* %6, align 4
  br label %95

94:                                               ; preds = %85
  store i32 1, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %92
  br label %96

96:                                               ; preds = %95, %83
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %134, %96
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %137

101:                                              ; preds = %97
  %102 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %103 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %102, i32 0, i32 6
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %133

110:                                              ; preds = %101
  %111 = load i32, i32* %2, align 4
  %112 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %113 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %112, i32 0, i32 4
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %120 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %119, i32 0, i32 6
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @bus_teardown_intr(i32 %111, i32* %118, i32* %125)
  %127 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %128 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %127, i32 0, i32 6
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %110, %101
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %97

137:                                              ; preds = %97
  %138 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %139 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %138, i32 0, i32 2
  %140 = load i32**, i32*** %139, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 0
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %146 = call i32 @alc_phy_down(%struct.alc_softc* %145)
  br label %147

147:                                              ; preds = %144, %137
  %148 = load i32, i32* %2, align 4
  %149 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %150 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %153 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %152, i32 0, i32 4
  %154 = load i32**, i32*** %153, align 8
  %155 = call i32 @bus_release_resources(i32 %148, i32 %151, i32** %154)
  %156 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %157 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ALC_FLAG_MSI, align 4
  %160 = load i32, i32* @ALC_FLAG_MSIX, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %158, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %147
  %165 = load i32, i32* %2, align 4
  %166 = call i32 @pci_release_msi(i32 %165)
  br label %167

167:                                              ; preds = %164, %147
  %168 = load i32, i32* %2, align 4
  %169 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %170 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %173 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %172, i32 0, i32 2
  %174 = load i32**, i32*** %173, align 8
  %175 = call i32 @bus_release_resources(i32 %168, i32 %171, i32** %174)
  %176 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %177 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %176, i32 0, i32 1
  %178 = call i32 @mtx_destroy(i32* %177)
  ret i32 0
}

declare dso_local %struct.alc_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @ALC_LOCK(%struct.alc_softc*) #1

declare dso_local i32 @alc_stop(%struct.alc_softc*) #1

declare dso_local i32 @ALC_UNLOCK(%struct.alc_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @alc_dma_free(%struct.alc_softc*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @alc_phy_down(%struct.alc_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32**) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
