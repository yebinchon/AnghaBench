; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { i32, i32, i32*, i32, i32*, i32, i32**, %struct.ifnet*, i32*, i32*, i32, i32, i32 }
%struct.ifnet = type { i32 }

@AGE_FLAG_DETACH = common dso_local global i32 0, align 4
@taskqueue_swi = common dso_local global i32* null, align 8
@AGE_FLAG_MSIX = common dso_local global i32 0, align 4
@AGE_MSIX_MESSAGES = common dso_local global i32 0, align 4
@AGE_FLAG_MSI = common dso_local global i32 0, align 4
@AGE_MSI_MESSAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @age_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @age_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.age_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.age_softc* @device_get_softc(i32 %7)
  store %struct.age_softc* %8, %struct.age_softc** %3, align 8
  %9 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %10 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %9, i32 0, i32 7
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @device_is_attached(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %17 = call i32 @AGE_LOCK(%struct.age_softc* %16)
  %18 = load i32, i32* @AGE_FLAG_DETACH, align 4
  %19 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %20 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %24 = call i32 @age_stop(%struct.age_softc* %23)
  %25 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %26 = call i32 @AGE_UNLOCK(%struct.age_softc* %25)
  %27 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %28 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %27, i32 0, i32 12
  %29 = call i32 @callout_drain(i32* %28)
  %30 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %31 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %30, i32 0, i32 9
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %34 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %33, i32 0, i32 10
  %35 = call i32 @taskqueue_drain(i32* %32, i32* %34)
  %36 = load i32*, i32** @taskqueue_swi, align 8
  %37 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %38 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %37, i32 0, i32 11
  %39 = call i32 @taskqueue_drain(i32* %36, i32* %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = call i32 @ether_ifdetach(%struct.ifnet* %40)
  br label %42

42:                                               ; preds = %15, %1
  %43 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %44 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %43, i32 0, i32 9
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %49 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %48, i32 0, i32 9
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %52 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %51, i32 0, i32 10
  %53 = call i32 @taskqueue_drain(i32* %50, i32* %52)
  %54 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %55 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %54, i32 0, i32 9
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @taskqueue_free(i32* %56)
  %58 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %59 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %58, i32 0, i32 9
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %47, %42
  %61 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %62 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %61, i32 0, i32 8
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* %2, align 4
  %67 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %68 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %67, i32 0, i32 8
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @device_delete_child(i32 %66, i32* %69)
  %71 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %72 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %71, i32 0, i32 8
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %65, %60
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @bus_generic_detach(i32 %74)
  %76 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %77 = call i32 @age_dma_free(%struct.age_softc* %76)
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = icmp ne %struct.ifnet* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = call i32 @if_free(%struct.ifnet* %81)
  %83 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %84 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %83, i32 0, i32 7
  store %struct.ifnet* null, %struct.ifnet** %84, align 8
  br label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %87 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @AGE_FLAG_MSIX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @AGE_MSIX_MESSAGES, align 4
  store i32 %93, i32* %6, align 4
  br label %105

94:                                               ; preds = %85
  %95 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %96 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AGE_FLAG_MSI, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* @AGE_MSI_MESSAGES, align 4
  store i32 %102, i32* %6, align 4
  br label %104

103:                                              ; preds = %94
  store i32 1, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %101
  br label %105

105:                                              ; preds = %104, %92
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %143, %105
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %146

110:                                              ; preds = %106
  %111 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %112 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %111, i32 0, i32 6
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %142

119:                                              ; preds = %110
  %120 = load i32, i32* %2, align 4
  %121 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %122 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %129 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %128, i32 0, i32 6
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @bus_teardown_intr(i32 %120, i32 %127, i32* %134)
  %136 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %137 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %136, i32 0, i32 6
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %119, %110
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %106

146:                                              ; preds = %106
  %147 = load i32, i32* %2, align 4
  %148 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %149 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %152 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @bus_release_resources(i32 %147, i32 %150, i32* %153)
  %155 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %156 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @AGE_FLAG_MSI, align 4
  %159 = load i32, i32* @AGE_FLAG_MSIX, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %157, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %146
  %164 = load i32, i32* %2, align 4
  %165 = call i32 @pci_release_msi(i32 %164)
  br label %166

166:                                              ; preds = %163, %146
  %167 = load i32, i32* %2, align 4
  %168 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %169 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %172 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @bus_release_resources(i32 %167, i32 %170, i32* %173)
  %175 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %176 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %175, i32 0, i32 1
  %177 = call i32 @mtx_destroy(i32* %176)
  ret i32 0
}

declare dso_local %struct.age_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @AGE_LOCK(%struct.age_softc*) #1

declare dso_local i32 @age_stop(%struct.age_softc*) #1

declare dso_local i32 @AGE_UNLOCK(%struct.age_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @age_dma_free(%struct.age_softc*) #1

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
