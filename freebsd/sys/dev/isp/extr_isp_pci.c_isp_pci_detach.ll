; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_pcisoftc = type { %struct.TYPE_13__, i64, i32, i32, i64, i32, i32, i64, i32, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isp_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_pcisoftc*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.isp_pcisoftc* @device_get_softc(i32 %8)
  store %struct.isp_pcisoftc* %9, %struct.isp_pcisoftc** %4, align 8
  %10 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %11 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %10, i32 0, i32 0
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = call i32 @isp_detach(%struct.TYPE_13__* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %169

18:                                               ; preds = %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = call i32 @ISP_LOCK(%struct.TYPE_13__* %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = call i32 @isp_shutdown(%struct.TYPE_13__* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = call i32 @ISP_UNLOCK(%struct.TYPE_13__* %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %69, %18
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %34 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %33, i32 0, i32 11
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %42 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %41, i32 0, i32 11
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bus_teardown_intr(i32 %32, i64 %40, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SYS_RES_IRQ, align 4
  %52 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %53 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %52, i32 0, i32 11
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %61 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %60, i32 0, i32 11
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 %59, i64 %67)
  br label %69

69:                                               ; preds = %31
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %25

72:                                               ; preds = %25
  %73 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %74 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %73, i32 0, i32 10
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @pci_release_msi(i32 %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %83 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %86 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %89 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @bus_release_resource(i32 %81, i32 %84, i32 %87, i64 %90)
  %92 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %93 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %80
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %99 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %102 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %105 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @bus_release_resource(i32 %97, i32 %100, i32 %103, i64 %106)
  br label %108

108:                                              ; preds = %96, %80
  %109 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %110 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %116 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %119 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %122 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @bus_release_resource(i32 %114, i32 %117, i32 %120, i64 %123)
  br label %125

125:                                              ; preds = %113, %108
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = call i32 @isp_pci_mbxdmafree(%struct.TYPE_13__* %126)
  %128 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %129 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %143

133:                                              ; preds = %125
  %134 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %135 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* @M_DEVBUF, align 4
  %139 = call i32 @free(i32* %137, i32 %138)
  %140 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %141 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 3
  store i32* null, i32** %142, align 8
  br label %143

143:                                              ; preds = %133, %125
  %144 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %145 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %165

151:                                              ; preds = %143
  %152 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %153 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* @M_DEVBUF, align 4
  %159 = call i32 @free(i32* %157, i32 %158)
  %160 = load %struct.isp_pcisoftc*, %struct.isp_pcisoftc** %4, align 8
  %161 = getelementptr inbounds %struct.isp_pcisoftc, %struct.isp_pcisoftc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %151, %143
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = call i32 @mtx_destroy(i32* %167)
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %165, %16
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.isp_pcisoftc* @device_get_softc(i32) #1

declare dso_local i32 @isp_detach(%struct.TYPE_13__*) #1

declare dso_local i32 @ISP_LOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @isp_shutdown(%struct.TYPE_13__*) #1

declare dso_local i32 @ISP_UNLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @isp_pci_mbxdmafree(%struct.TYPE_13__*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
