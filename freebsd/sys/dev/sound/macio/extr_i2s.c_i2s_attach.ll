; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.i2s_softc*, i32 }
%struct.i2s_softc = type { i32, i32, %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.resource = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"i2s-a\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"port_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@aoa_interrupt = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@i2s_delayed_attach = common dso_local global %struct.TYPE_5__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@i2s_postattach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i2s_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2s_softc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i8* @malloc(i32 40, i32 %11, i32 %14)
  %16 = bitcast i8* %15 to %struct.i2s_softc*
  store %struct.i2s_softc* %16, %struct.i2s_softc** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %19 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ofw_bus_get_node(i32 %21)
  %23 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %24 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %26 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @of_find_firstchild_byname(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %141

34:                                               ; preds = %1
  %35 = load i32, i32* %10, align 4
  %36 = call i8* @of_find_firstchild_byname(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %39 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %41 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %141

46:                                               ; preds = %34
  %47 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %48 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %47, i32 0, i32 4
  %49 = load i32, i32* @MTX_DEF, align 4
  %50 = call i32 @mtx_init(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %49)
  store i32 0, i32* %7, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SYS_RES_MEMORY, align 4
  %53 = load i32, i32* @RF_ACTIVE, align 4
  %54 = call i8* @bus_alloc_resource_any(i32 %51, i32 %52, i32* %7, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %57 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %56, i32 0, i32 3
  store i32* %55, i32** %57, align 8
  %58 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %59 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %46
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %141

64:                                               ; preds = %46
  store i32 1, i32* %7, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @SYS_RES_MEMORY, align 4
  %67 = load i32, i32* @RF_ACTIVE, align 4
  %68 = call i8* @bus_alloc_resource_any(i32 %65, i32 %66, i32* %7, i32 %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %71 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32* %69, i32** %72, align 8
  %73 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %74 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %2, align 4
  br label %141

80:                                               ; preds = %64
  store i32 1, i32* %7, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @SYS_RES_IRQ, align 4
  %83 = load i32, i32* @RF_SHAREABLE, align 4
  %84 = load i32, i32* @RF_ACTIVE, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @bus_alloc_resource_any(i32 %81, i32 %82, i32* %7, i32 %85)
  %87 = bitcast i8* %86 to %struct.resource*
  store %struct.resource* %87, %struct.resource** %5, align 8
  %88 = load %struct.resource*, %struct.resource** %5, align 8
  %89 = icmp eq %struct.resource* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %141

92:                                               ; preds = %80
  %93 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %94 = call i32 @i2s_setup(%struct.i2s_softc* %93, i32 44100, i32 16, i32 64)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %2, align 4
  br label %141

99:                                               ; preds = %92
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.resource*, %struct.resource** %5, align 8
  %102 = load i32, i32* @INTR_MPSAFE, align 4
  %103 = load i32, i32* @aoa_interrupt, align 4
  %104 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %105 = call i32 @snd_setup_intr(i32 %100, %struct.resource* %101, i32 %102, i32 %103, %struct.i2s_softc* %104, i8** %6)
  %106 = load %struct.resource*, %struct.resource** %5, align 8
  %107 = call i32 @rman_get_start(%struct.resource* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %110 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %111 = call i32 @powerpc_config_intr(i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %99
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %2, align 4
  br label %141

116:                                              ; preds = %99
  %117 = load i32, i32* @M_TEMP, align 4
  %118 = load i32, i32* @M_WAITOK, align 4
  %119 = load i32, i32* @M_ZERO, align 4
  %120 = or i32 %118, %119
  %121 = call i8* @malloc(i32 4, i32 %117, i32 %120)
  %122 = bitcast i8* %121 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %122, %struct.TYPE_5__** @i2s_delayed_attach, align 8
  %123 = icmp eq %struct.TYPE_5__* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* @ENOMEM, align 4
  store i32 %125, i32* %2, align 4
  br label %141

126:                                              ; preds = %116
  %127 = load i32, i32* @i2s_postattach, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** @i2s_delayed_attach, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** @i2s_delayed_attach, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store %struct.i2s_softc* %130, %struct.i2s_softc** %132, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @i2s_delayed_attach, align 8
  %134 = call i64 @config_intrhook_establish(%struct.TYPE_5__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* @ENOMEM, align 4
  store i32 %137, i32* %2, align 4
  br label %141

138:                                              ; preds = %126
  %139 = load %struct.i2s_softc*, %struct.i2s_softc** %4, align 8
  %140 = call i32 @aoa_attach(%struct.i2s_softc* %139)
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %138, %136, %124, %114, %97, %90, %78, %62, %44, %32
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i8* @of_find_firstchild_byname(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @i2s_setup(%struct.i2s_softc*, i32, i32, i32) #1

declare dso_local i32 @snd_setup_intr(i32, %struct.resource*, i32, i32, %struct.i2s_softc*, i8**) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @powerpc_config_intr(i32, i32, i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_5__*) #1

declare dso_local i32 @aoa_attach(%struct.i2s_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
