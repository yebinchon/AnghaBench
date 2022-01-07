; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_davbus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_davbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davbus_softc = type { i8, i32*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.resource = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"interrupting at irq %d\0A\00", align 1
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@aoa_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DAVbus\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"codec: <%s>\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@davbus_cint = common dso_local global i32 0, align 4
@DAVBUS_SOUND_CTRL = common dso_local global i32 0, align 4
@DAVBUS_INPUT_SUBFRAME0 = common dso_local global i32 0, align 4
@DAVBUS_OUTPUT_SUBFRAME0 = common dso_local global i32 0, align 4
@DAVBUS_RATE_44100 = common dso_local global i32 0, align 4
@DAVBUS_INTR_PORTCHG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"screamer\00", align 1
@screamer_mixer_class = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"burgundy\00", align 1
@burgundy_mixer_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @davbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davbus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.davbus_softc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.davbus_softc* @malloc(i32 48, i32 %12, i32 %15)
  store %struct.davbus_softc* %16, %struct.davbus_softc** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %19 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ofw_bus_get_node(i32 %21)
  %23 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %24 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %26 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @OF_child(i32 %27)
  %29 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %30 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %9, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load i32, i32* @RF_ACTIVE, align 4
  %34 = call i8* @bus_alloc_resource_any(i32 %31, i32 %32, i32* %9, i32 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %37 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %39 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %169

44:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SYS_RES_MEMORY, align 4
  %47 = load i32, i32* @RF_ACTIVE, align 4
  %48 = call i8* @bus_alloc_resource_any(i32 %45, i32 %46, i32* %9, i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %51 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32* %49, i32** %52, align 8
  %53 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %54 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %169

60:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @SYS_RES_IRQ, align 4
  %63 = load i32, i32* @RF_SHAREABLE, align 4
  %64 = load i32, i32* @RF_ACTIVE, align 4
  %65 = or i32 %63, %64
  %66 = call i8* @bus_alloc_resource_any(i32 %61, i32 %62, i32* %9, i32 %65)
  %67 = bitcast i8* %66 to %struct.resource*
  store %struct.resource* %67, %struct.resource** %5, align 8
  %68 = load %struct.resource*, %struct.resource** %5, align 8
  %69 = icmp eq %struct.resource* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %2, align 4
  br label %169

72:                                               ; preds = %60
  %73 = load %struct.resource*, %struct.resource** %5, align 8
  %74 = call i32 @rman_get_start(%struct.resource* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @DPRINTF(i8* %77)
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %81 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %82 = call i32 @powerpc_config_intr(i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %2, align 4
  br label %169

87:                                               ; preds = %72
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.resource*, %struct.resource** %5, align 8
  %90 = load i32, i32* @INTR_MPSAFE, align 4
  %91 = load i32, i32* @aoa_interrupt, align 4
  %92 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %93 = call i32 @snd_setup_intr(i32 %88, %struct.resource* %89, i32 %90, i32 %91, %struct.davbus_softc* %92, i8** %7)
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %95 = call i32 @bzero(i8* %94, i32 64)
  %96 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %97 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %100 = call i32 @OF_getprop(i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %99, i32 64)
  %101 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %102 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %105 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %104, i32 0, i32 0
  %106 = call i32 @OF_getprop(i32 %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %105, i32 4)
  %107 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %108 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %107, i32 0, i32 2
  %109 = load i32, i32* @MTX_DEF, align 4
  %110 = call i32 @mtx_init(i32* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %113 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %112)
  store i32 0, i32* %9, align 4
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @SYS_RES_IRQ, align 4
  %116 = load i32, i32* @RF_SHAREABLE, align 4
  %117 = load i32, i32* @RF_ACTIVE, align 4
  %118 = or i32 %116, %117
  %119 = call i8* @bus_alloc_resource_any(i32 %114, i32 %115, i32* %9, i32 %118)
  %120 = bitcast i8* %119 to %struct.resource*
  store %struct.resource* %120, %struct.resource** %6, align 8
  %121 = load %struct.resource*, %struct.resource** %6, align 8
  %122 = icmp ne %struct.resource* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %87
  %124 = load i32, i32* %3, align 4
  %125 = load %struct.resource*, %struct.resource** %6, align 8
  %126 = load i32, i32* @INTR_TYPE_MISC, align 4
  %127 = load i32, i32* @INTR_MPSAFE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @davbus_cint, align 4
  %130 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %131 = call i32 @bus_setup_intr(i32 %124, %struct.resource* %125, i32 %128, i32* null, i32 %129, %struct.davbus_softc* %130, i8** %7)
  br label %132

132:                                              ; preds = %123, %87
  %133 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %134 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @DAVBUS_SOUND_CTRL, align 4
  %137 = load i32, i32* @DAVBUS_INPUT_SUBFRAME0, align 4
  %138 = load i32, i32* @DAVBUS_OUTPUT_SUBFRAME0, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @DAVBUS_RATE_44100, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @DAVBUS_INTR_PORTCHG, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @bus_write_4(i32* %135, i32 %136, i32 %143)
  %145 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %146 = call i32 @aoa_attach(%struct.davbus_softc* %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %132
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %2, align 4
  br label %169

151:                                              ; preds = %132
  %152 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* %3, align 4
  %157 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %158 = call i32 @mixer_init(i32 %156, i32* @screamer_mixer_class, %struct.davbus_softc* %157)
  br label %168

159:                                              ; preds = %151
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i32, i32* %3, align 4
  %165 = load %struct.davbus_softc*, %struct.davbus_softc** %4, align 8
  %166 = call i32 @mixer_init(i32 %164, i32* @burgundy_mixer_class, %struct.davbus_softc* %165)
  br label %167

167:                                              ; preds = %163, %159
  br label %168

168:                                              ; preds = %167, %155
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %149, %85, %70, %58, %42
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.davbus_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @powerpc_config_intr(i32, i32, i32) #1

declare dso_local i32 @snd_setup_intr(i32, %struct.resource*, i32, i32, %struct.davbus_softc*, i8**) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, %struct.resource*, i32, i32*, i32, %struct.davbus_softc*, i8**) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

declare dso_local i32 @aoa_attach(%struct.davbus_softc*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mixer_init(i32, i32*, %struct.davbus_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
