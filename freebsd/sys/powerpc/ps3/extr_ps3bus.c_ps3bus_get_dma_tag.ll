; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3bus.c_ps3bus_get_dma_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3bus.c_ps3bus_get_dma_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3bus_devinfo = type { i64, i64, i32*, i32, i32*, i32, i32 }
%struct.ps3bus_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PS3_BUSTYPE_SYSBUS = common dso_local global i64 0, align 8
@PS3_BUSTYPE_STORAGE = common dso_local global i64 0, align 8
@PS3_DEVTYPE_USB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"could not allocate DMA region %d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"could not map DMA region %d: %d\0A\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @ps3bus_get_dma_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ps3bus_get_dma_tag(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps3bus_devinfo*, align 8
  %7 = alloca %struct.ps3bus_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.ps3bus_devinfo* @device_get_ivars(i32 %12)
  store %struct.ps3bus_devinfo* %13, %struct.ps3bus_devinfo** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.ps3bus_softc* @device_get_softc(i32 %14)
  store %struct.ps3bus_softc* %15, %struct.ps3bus_softc** %7, align 8
  %16 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %17 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PS3_BUSTYPE_SYSBUS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %23 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PS3_BUSTYPE_STORAGE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i32* @bus_get_dma_tag(i32 %28)
  store i32* %29, i32** %3, align 8
  br label %179

30:                                               ; preds = %21, %2
  %31 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %32 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %31, i32 0, i32 3
  %33 = call i32 @mtx_lock(i32* %32)
  %34 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %35 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %40 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %39, i32 0, i32 3
  %41 = call i32 @mtx_unlock(i32* %40)
  %42 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %43 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %3, align 8
  br label %179

45:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  %46 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %47 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PS3_BUSTYPE_SYSBUS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %53 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PS3_DEVTYPE_USB, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 2, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %51, %45
  store i32 24, i32* %11, align 4
  %59 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %60 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PS3_BUSTYPE_STORAGE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 12, i32* %11, align 4
  br label %65

65:                                               ; preds = %64, %58
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %142, %65
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %7, align 8
  %69 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %145

72:                                               ; preds = %66
  %73 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %74 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %77 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %7, align 8
  %80 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %90 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i32 @lv1_allocate_device_dma_region(i32 %75, i32 %78, i32 %86, i32 %87, i32 %88, i32* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %72
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101)
  br label %168

103:                                              ; preds = %72
  %104 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %105 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %108 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %7, align 8
  %111 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %119 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ps3bus_softc*, %struct.ps3bus_softc** %7, align 8
  %126 = getelementptr inbounds %struct.ps3bus_softc, %struct.ps3bus_softc* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @lv1_map_device_dma_region(i32 %106, i32 %109, i32 %117, i32 %124, i32 %132, i32 2048)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %103
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @device_printf(i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %139)
  br label %168

141:                                              ; preds = %103
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %66

145:                                              ; preds = %66
  %146 = load i32, i32* %4, align 4
  %147 = call i32* @bus_get_dma_tag(i32 %146)
  %148 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %149 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %150 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %151 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %152 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %153 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %152, i32 0, i32 2
  %154 = call i32 @bus_dma_tag_create(i32* %147, i32 1, i32 0, i32 %148, i32 %149, i32* null, i32* null, i32 %150, i32 0, i32 %151, i32 0, i32* null, i32* null, i32** %153)
  store i32 %154, i32* %9, align 4
  %155 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %156 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @PS3_BUSTYPE_STORAGE, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %145
  %161 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %162 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %166 = call i32 @bus_dma_tag_set_iommu(i32* %163, i32 %164, %struct.ps3bus_devinfo* %165)
  br label %167

167:                                              ; preds = %160, %145
  br label %168

168:                                              ; preds = %167, %136, %98
  %169 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %170 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %169, i32 0, i32 3
  %171 = call i32 @mtx_unlock(i32* %170)
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i32* null, i32** %3, align 8
  br label %179

175:                                              ; preds = %168
  %176 = load %struct.ps3bus_devinfo*, %struct.ps3bus_devinfo** %6, align 8
  %177 = getelementptr inbounds %struct.ps3bus_devinfo, %struct.ps3bus_devinfo* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %3, align 8
  br label %179

179:                                              ; preds = %175, %174, %38, %27
  %180 = load i32*, i32** %3, align 8
  ret i32* %180
}

declare dso_local %struct.ps3bus_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.ps3bus_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_get_dma_tag(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @lv1_allocate_device_dma_region(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @lv1_map_device_dma_region(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @bus_dma_tag_set_iommu(i32*, i32, %struct.ps3bus_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
