; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_dma_sbus.c_dma_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_dma_sbus.c_dma_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_softc = type { i32, i32, %struct.lsi64854_softc }
%struct.lsi64854_softc = type { i32, i32*, i32*, i32, i32 }
%struct.dma_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"espdma\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@L64854_CHANNEL_SCSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"ledma\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"cable-selection\00", align 1
@E_TP_AUI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"aui\00", align 1
@L64854_CHANNEL_ENET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"unsupported DMA channel\0A\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"cannot allocate parent DMA tag\0A\00", align 1
@SBUS_BURST_32 = common dso_local global i32 0, align 4
@SBUS_BURST_16 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"<%s>: only one child per DMA channel supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"<%s>: device_add_child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dma_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dma_softc*, align 8
  %5 = alloca %struct.lsi64854_softc*, align 8
  %6 = alloca %struct.dma_devinfo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.dma_softc* @device_get_softc(i32* %15)
  store %struct.dma_softc* %16, %struct.dma_softc** %4, align 8
  %17 = load %struct.dma_softc*, %struct.dma_softc** %4, align 8
  %18 = getelementptr inbounds %struct.dma_softc, %struct.dma_softc* %17, i32 0, i32 2
  store %struct.lsi64854_softc* %18, %struct.lsi64854_softc** %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @ofw_bus_get_name(i32* %19)
  store i8* %20, i8** %8, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @ofw_bus_get_node(i32* %21)
  store i64 %22, i64* %12, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @sbus_get_ign(i32* %23)
  %25 = load %struct.dma_softc*, %struct.dma_softc** %4, align 8
  %26 = getelementptr inbounds %struct.dma_softc, %struct.dma_softc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @sbus_get_slot(i32* %27)
  %29 = load %struct.dma_softc*, %struct.dma_softc** %4, align 8
  %30 = getelementptr inbounds %struct.dma_softc, %struct.dma_softc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %14, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load i32, i32* @RF_ACTIVE, align 4
  %34 = call i32* @bus_alloc_resource_any(i32* %31, i32 %32, i32* %14, i32 %33)
  %35 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %36 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %38 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 (i32*, i8*, ...) @device_printf(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %199

45:                                               ; preds = %1
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @L64854_CHANNEL_SCSI, align 4
  %55 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %56 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  br label %100

57:                                               ; preds = %49
  %58 = load i8*, i8** %8, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %57
  %62 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %63 = call i32 @L64854_GCSR(%struct.lsi64854_softc* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @OF_getprop_alloc(i64 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %9)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @E_TP_AUI, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %87

71:                                               ; preds = %61
  %72 = load i8*, i8** %9, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* @E_TP_AUI, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @E_TP_AUI, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @OF_prop_free(i8* %85)
  br label %87

87:                                               ; preds = %84, %67
  %88 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @L64854_SCSR(%struct.lsi64854_softc* %88, i32 %89)
  %91 = call i32 @DELAY(i32 20000)
  %92 = load i32, i32* @L64854_CHANNEL_ENET, align 4
  %93 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %94 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  br label %99

95:                                               ; preds = %57
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 (i32*, i8*, ...) @device_printf(i32* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %13, align 4
  br label %187

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %53
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @bus_get_dma_tag(i32* %101)
  %103 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %104 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %105 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %106 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %107 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %108 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %109 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %108, i32 0, i32 3
  %110 = call i32 @bus_dma_tag_create(i32 %102, i32 1, i32 0, i32 %103, i32 %104, i32* null, i32* null, i32 %105, i32 %106, i32 %107, i32 0, i32* null, i32* null, i32* %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 (i32*, i8*, ...) @device_printf(i32* %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %187

116:                                              ; preds = %100
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @sbus_get_burstsz(i32* %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @SBUS_BURST_32, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %131

124:                                              ; preds = %116
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @SBUS_BURST_16, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 16, i32 0
  br label %131

131:                                              ; preds = %124, %123
  %132 = phi i32 [ 32, %123 ], [ %130, %124 ]
  %133 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %134 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32*, i32** %3, align 8
  %136 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %137 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %136, i32 0, i32 2
  store i32* %135, i32** %137, align 8
  store i32 0, i32* %14, align 4
  %138 = load i64, i64* %12, align 8
  %139 = call i64 @OF_child(i64 %138)
  store i64 %139, i64* %11, align 8
  br label %140

140:                                              ; preds = %181, %131
  %141 = load i64, i64* %11, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %184

143:                                              ; preds = %140
  %144 = load i32*, i32** %3, align 8
  %145 = load %struct.dma_softc*, %struct.dma_softc** %4, align 8
  %146 = load i64, i64* %11, align 8
  %147 = call %struct.dma_devinfo* @dma_setup_dinfo(i32* %144, %struct.dma_softc* %145, i64 %146)
  store %struct.dma_devinfo* %147, %struct.dma_devinfo** %6, align 8
  %148 = icmp eq %struct.dma_devinfo* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %181

150:                                              ; preds = %143
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i32*, i32** %3, align 8
  %155 = load %struct.dma_devinfo*, %struct.dma_devinfo** %6, align 8
  %156 = getelementptr inbounds %struct.dma_devinfo, %struct.dma_devinfo* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32*, i8*, ...) @device_printf(i32* %154, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %158)
  %160 = load %struct.dma_devinfo*, %struct.dma_devinfo** %6, align 8
  %161 = call i32 @dma_destroy_dinfo(%struct.dma_devinfo* %160)
  br label %181

162:                                              ; preds = %150
  %163 = load i32*, i32** %3, align 8
  %164 = call i32* @device_add_child(i32* %163, i32* null, i32 -1)
  store i32* %164, i32** %7, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load i32*, i32** %3, align 8
  %168 = load %struct.dma_devinfo*, %struct.dma_devinfo** %6, align 8
  %169 = getelementptr inbounds %struct.dma_devinfo, %struct.dma_devinfo* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32*, i8*, ...) @device_printf(i32* %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %171)
  %173 = load %struct.dma_devinfo*, %struct.dma_devinfo** %6, align 8
  %174 = call i32 @dma_destroy_dinfo(%struct.dma_devinfo* %173)
  br label %181

175:                                              ; preds = %162
  %176 = load i32*, i32** %7, align 8
  %177 = load %struct.dma_devinfo*, %struct.dma_devinfo** %6, align 8
  %178 = call i32 @device_set_ivars(i32* %176, %struct.dma_devinfo* %177)
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %175, %166, %153, %149
  %182 = load i64, i64* %11, align 8
  %183 = call i64 @OF_peer(i64 %182)
  store i64 %183, i64* %11, align 8
  br label %140

184:                                              ; preds = %140
  %185 = load i32*, i32** %3, align 8
  %186 = call i32 @bus_generic_attach(i32* %185)
  store i32 %186, i32* %2, align 4
  br label %199

187:                                              ; preds = %113, %95
  %188 = load i32*, i32** %3, align 8
  %189 = load i32, i32* @SYS_RES_MEMORY, align 4
  %190 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %191 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @rman_get_rid(i32* %192)
  %194 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %195 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @bus_release_resource(i32* %188, i32 %189, i32 %193, i32* %196)
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %187, %184, %41
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.dma_softc* @device_get_softc(i32*) #1

declare dso_local i8* @ofw_bus_get_name(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i32 @sbus_get_ign(i32*) #1

declare dso_local i32 @sbus_get_slot(i32*) #1

declare dso_local i32* @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @L64854_GCSR(%struct.lsi64854_softc*) #1

declare dso_local i32 @OF_getprop_alloc(i64, i8*, i8**) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i32 @L64854_SCSR(%struct.lsi64854_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32*) #1

declare dso_local i32 @sbus_get_burstsz(i32*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.dma_devinfo* @dma_setup_dinfo(i32*, %struct.dma_softc*, i64) #1

declare dso_local i32 @dma_destroy_dinfo(%struct.dma_devinfo*) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.dma_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
