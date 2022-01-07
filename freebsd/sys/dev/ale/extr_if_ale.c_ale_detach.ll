; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32, i32, i32*, i32, i32*, i32, i32**, %struct.ifnet*, i32*, i32*, i32, i32 }
%struct.ifnet = type { i32 }

@ALE_FLAG_MSIX = common dso_local global i32 0, align 4
@ALE_MSIX_MESSAGES = common dso_local global i32 0, align 4
@ALE_FLAG_MSI = common dso_local global i32 0, align 4
@ALE_MSI_MESSAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ale_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ale_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ale_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ale_softc* @device_get_softc(i32 %7)
  store %struct.ale_softc* %8, %struct.ale_softc** %3, align 8
  %9 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %9, i32 0, i32 7
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @device_is_attached(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = call i32 @ether_ifdetach(%struct.ifnet* %16)
  %18 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %19 = call i32 @ALE_LOCK(%struct.ale_softc* %18)
  %20 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %21 = call i32 @ale_stop(%struct.ale_softc* %20)
  %22 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %23 = call i32 @ALE_UNLOCK(%struct.ale_softc* %22)
  %24 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %24, i32 0, i32 11
  %26 = call i32 @callout_drain(i32* %25)
  %27 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %27, i32 0, i32 9
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %30, i32 0, i32 10
  %32 = call i32 @taskqueue_drain(i32* %29, i32* %31)
  br label %33

33:                                               ; preds = %15, %1
  %34 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %34, i32 0, i32 9
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %39, i32 0, i32 9
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %42, i32 0, i32 10
  %44 = call i32 @taskqueue_drain(i32* %41, i32* %43)
  %45 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %45, i32 0, i32 9
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @taskqueue_free(i32* %47)
  %49 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %49, i32 0, i32 9
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %38, %33
  %52 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32, i32* %2, align 4
  %58 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %58, i32 0, i32 8
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @device_delete_child(i32 %57, i32* %60)
  %62 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %62, i32 0, i32 8
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %56, %51
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @bus_generic_detach(i32 %65)
  %67 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %68 = call i32 @ale_dma_free(%struct.ale_softc* %67)
  %69 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %70 = icmp ne %struct.ifnet* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %73 = call i32 @if_free(%struct.ifnet* %72)
  %74 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %74, i32 0, i32 7
  store %struct.ifnet* null, %struct.ifnet** %75, align 8
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %78 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ALE_FLAG_MSIX, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @ALE_MSIX_MESSAGES, align 4
  store i32 %84, i32* %6, align 4
  br label %96

85:                                               ; preds = %76
  %86 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %87 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ALE_FLAG_MSI, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @ALE_MSI_MESSAGES, align 4
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
  %102 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %102, i32 0, i32 6
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %133

110:                                              ; preds = %101
  %111 = load i32, i32* %2, align 4
  %112 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %113 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %120 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %119, i32 0, i32 6
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @bus_teardown_intr(i32 %111, i32 %118, i32* %125)
  %127 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %128 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %127, i32 0, i32 6
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
  %138 = load i32, i32* %2, align 4
  %139 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %140 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %143 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @bus_release_resources(i32 %138, i32 %141, i32* %144)
  %146 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %147 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ALE_FLAG_MSI, align 4
  %150 = load i32, i32* @ALE_FLAG_MSIX, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %137
  %155 = load i32, i32* %2, align 4
  %156 = call i32 @pci_release_msi(i32 %155)
  br label %157

157:                                              ; preds = %154, %137
  %158 = load i32, i32* %2, align 4
  %159 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %160 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %163 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @bus_release_resources(i32 %158, i32 %161, i32* %164)
  %166 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %167 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %166, i32 0, i32 1
  %168 = call i32 @mtx_destroy(i32* %167)
  ret i32 0
}

declare dso_local %struct.ale_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @ALE_LOCK(%struct.ale_softc*) #1

declare dso_local i32 @ale_stop(%struct.ale_softc*) #1

declare dso_local i32 @ALE_UNLOCK(%struct.ale_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @ale_dma_free(%struct.ale_softc*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
