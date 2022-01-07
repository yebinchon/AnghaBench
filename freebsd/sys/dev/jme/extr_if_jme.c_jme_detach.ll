; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32, i32**, i32, i32**, i32, i32**, %struct.ifnet*, i32*, i32*, i32, i32, i32, i32 }
%struct.ifnet = type { i32 }

@JME_FLAG_DETACH = common dso_local global i32 0, align 4
@taskqueue_swi = common dso_local global i32* null, align 8
@JME_FLAG_EFUSE = common dso_local global i32 0, align 4
@JME_FLAG_MSIX = common dso_local global i32 0, align 4
@JME_FLAG_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jme_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jme_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.jme_softc* @device_get_softc(i32 %6)
  store %struct.jme_softc* %7, %struct.jme_softc** %3, align 8
  %8 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %9 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %8, i32 0, i32 7
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @device_is_attached(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %1
  %15 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %16 = call i32 @JME_LOCK(%struct.jme_softc* %15)
  %17 = load i32, i32* @JME_FLAG_DETACH, align 4
  %18 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %19 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %23 = call i32 @jme_stop(%struct.jme_softc* %22)
  %24 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %25 = call i32 @JME_UNLOCK(%struct.jme_softc* %24)
  %26 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %27 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %26, i32 0, i32 13
  %28 = call i32 @callout_drain(i32* %27)
  %29 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %30 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %29, i32 0, i32 9
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %33 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %32, i32 0, i32 10
  %34 = call i32 @taskqueue_drain(i32* %31, i32* %33)
  %35 = load i32*, i32** @taskqueue_swi, align 8
  %36 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %37 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %36, i32 0, i32 12
  %38 = call i32 @taskqueue_drain(i32* %35, i32* %37)
  %39 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %40 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @JME_FLAG_EFUSE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %14
  %46 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %47 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %48 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @jme_set_macaddr(%struct.jme_softc* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %14
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = call i32 @ether_ifdetach(%struct.ifnet* %52)
  br label %54

54:                                               ; preds = %51, %1
  %55 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %56 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %55, i32 0, i32 9
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %61 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %60, i32 0, i32 9
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %64 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %63, i32 0, i32 10
  %65 = call i32 @taskqueue_drain(i32* %62, i32* %64)
  %66 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %67 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %66, i32 0, i32 9
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @taskqueue_free(i32* %68)
  %70 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %71 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %70, i32 0, i32 9
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %59, %54
  %73 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %74 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %73, i32 0, i32 8
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i32, i32* %2, align 4
  %79 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %80 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %79, i32 0, i32 8
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @device_delete_child(i32 %78, i32* %81)
  %83 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %84 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %83, i32 0, i32 8
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %77, %72
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @bus_generic_detach(i32 %86)
  %88 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %89 = call i32 @jme_dma_free(%struct.jme_softc* %88)
  %90 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %91 = icmp ne %struct.ifnet* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = call i32 @if_free(%struct.ifnet* %93)
  %95 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %96 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %95, i32 0, i32 7
  store %struct.ifnet* null, %struct.ifnet** %96, align 8
  br label %97

97:                                               ; preds = %92, %85
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %134, %97
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %137

101:                                              ; preds = %98
  %102 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %103 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %102, i32 0, i32 6
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %133

110:                                              ; preds = %101
  %111 = load i32, i32* %2, align 4
  %112 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %113 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %112, i32 0, i32 4
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %120 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %119, i32 0, i32 6
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @bus_teardown_intr(i32 %111, i32* %118, i32* %125)
  %127 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %128 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %127, i32 0, i32 6
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
  br label %98

137:                                              ; preds = %98
  %138 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %139 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %138, i32 0, i32 4
  %140 = load i32**, i32*** %139, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 0
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %137
  %145 = load i32, i32* %2, align 4
  %146 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %147 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %150 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %149, i32 0, i32 4
  %151 = load i32**, i32*** %150, align 8
  %152 = call i32 @bus_release_resources(i32 %145, i32 %148, i32** %151)
  br label %153

153:                                              ; preds = %144, %137
  %154 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %155 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @JME_FLAG_MSIX, align 4
  %158 = load i32, i32* @JME_FLAG_MSI, align 4
  %159 = or i32 %157, %158
  %160 = and i32 %156, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %153
  %163 = load i32, i32* %2, align 4
  %164 = call i32 @pci_release_msi(i32 %163)
  br label %165

165:                                              ; preds = %162, %153
  %166 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %167 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %166, i32 0, i32 2
  %168 = load i32**, i32*** %167, align 8
  %169 = getelementptr inbounds i32*, i32** %168, i64 0
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %181

172:                                              ; preds = %165
  %173 = load i32, i32* %2, align 4
  %174 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %175 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %178 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %177, i32 0, i32 2
  %179 = load i32**, i32*** %178, align 8
  %180 = call i32 @bus_release_resources(i32 %173, i32 %176, i32** %179)
  br label %181

181:                                              ; preds = %172, %165
  %182 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %183 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %182, i32 0, i32 1
  %184 = call i32 @mtx_destroy(i32* %183)
  ret i32 0
}

declare dso_local %struct.jme_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @JME_LOCK(%struct.jme_softc*) #1

declare dso_local i32 @jme_stop(%struct.jme_softc*) #1

declare dso_local i32 @JME_UNLOCK(%struct.jme_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @jme_set_macaddr(%struct.jme_softc*, i32) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @jme_dma_free(%struct.jme_softc*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32**) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
