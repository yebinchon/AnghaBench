; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i8*, %struct.TYPE_14__, i8*, %struct.TYPE_13__*, %struct.TYPE_16__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_16__ = type { i32*, i8*, i32*, i8*, i32*, i8* }
%struct.sndcard_func = type { i32, %struct.TYPE_14__* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"csa: card is %s\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@csa_intr = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCF_PCM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@SCF_MIDI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"midi\00", align 1
@BA0_HICR = common dso_local global i32 0, align 4
@BA0_HISR = common dso_local global i32 0, align 4
@HICR_CHGM = common dso_local global i32 0, align 4
@HICR_IEV = common dso_local global i32 0, align 4
@HISR_INTENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @csa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.sndcard_func*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @ENXIO, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.TYPE_15__* @device_get_softc(i32 %9)
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = call i32 @bzero(%struct.TYPE_15__* %11, i32 96)
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @pci_enable_busmaster(i32 %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 5
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.TYPE_13__* @csa_findsubcard(i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 4
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %23, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = call i8* @PCIR_BAR(i32 0)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SYS_RES_MEMORY, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i32, i32* @RF_ACTIVE, align 4
  %44 = call i8* @bus_alloc_resource_any(i32 %39, i32 %40, i8** %42, i32 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %210

54:                                               ; preds = %1
  %55 = call i8* @PCIR_BAR(i32 1)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @SYS_RES_MEMORY, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 3
  %62 = load i32, i32* @RF_ACTIVE, align 4
  %63 = call i8* @bus_alloc_resource_any(i32 %58, i32 %59, i8** %61, i32 %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %54
  br label %199

72:                                               ; preds = %54
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 5
  store i8* null, i8** %74, align 8
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @SYS_RES_IRQ, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 5
  %79 = load i32, i32* @RF_ACTIVE, align 4
  %80 = load i32, i32* @RF_SHAREABLE, align 4
  %81 = or i32 %79, %80
  %82 = call i8* @bus_alloc_resource_any(i32 %75, i32 %76, i8** %78, i32 %81)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 4
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  br label %189

91:                                               ; preds = %72
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @csa_intr, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = call i64 @snd_setup_intr(i32 %92, i32* %95, i32 0, i32 %96, %struct.TYPE_15__* %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %179

103:                                              ; preds = %91
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = call i64 @csa_initialize(%struct.TYPE_15__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %170

108:                                              ; preds = %103
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = call i32 @csa_resetdsp(%struct.TYPE_16__* %109)
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = call i64 @csa_downloadimage(%struct.TYPE_16__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %170

115:                                              ; preds = %108
  %116 = load i32, i32* @M_DEVBUF, align 4
  %117 = load i32, i32* @M_NOWAIT, align 4
  %118 = load i32, i32* @M_ZERO, align 4
  %119 = or i32 %117, %118
  %120 = call %struct.sndcard_func* @malloc(i32 16, i32 %116, i32 %119)
  store %struct.sndcard_func* %120, %struct.sndcard_func** %6, align 8
  %121 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %122 = icmp eq %struct.sndcard_func* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* @ENOMEM, align 4
  store i32 %124, i32* %7, align 4
  br label %170

125:                                              ; preds = %115
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %129 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %128, i32 0, i32 1
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %129, align 8
  %130 = load i32, i32* @SCF_PCM, align 4
  %131 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %132 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %3, align 4
  %134 = call i8* @device_add_child(i32 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %141 = call i32 @device_set_ivars(i8* %139, %struct.sndcard_func* %140)
  %142 = load i32, i32* @M_DEVBUF, align 4
  %143 = load i32, i32* @M_NOWAIT, align 4
  %144 = load i32, i32* @M_ZERO, align 4
  %145 = or i32 %143, %144
  %146 = call %struct.sndcard_func* @malloc(i32 16, i32 %142, i32 %145)
  store %struct.sndcard_func* %146, %struct.sndcard_func** %6, align 8
  %147 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %148 = icmp eq %struct.sndcard_func* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %125
  %150 = load i32, i32* @ENOMEM, align 4
  store i32 %150, i32* %7, align 4
  br label %170

151:                                              ; preds = %125
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %155 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %154, i32 0, i32 1
  store %struct.TYPE_14__* %153, %struct.TYPE_14__** %155, align 8
  %156 = load i32, i32* @SCF_MIDI, align 4
  %157 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %158 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %3, align 4
  %160 = call i8* @device_add_child(i32 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.sndcard_func*, %struct.sndcard_func** %6, align 8
  %167 = call i32 @device_set_ivars(i8* %165, %struct.sndcard_func* %166)
  %168 = load i32, i32* %3, align 4
  %169 = call i32 @bus_generic_attach(i32 %168)
  store i32 0, i32* %2, align 4
  br label %210

170:                                              ; preds = %149, %123, %114, %107
  %171 = load i32, i32* %3, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @bus_teardown_intr(i32 %171, i32* %174, i32 %177)
  br label %179

179:                                              ; preds = %170, %102
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* @SYS_RES_IRQ, align 4
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 5
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @bus_release_resource(i32 %180, i32 %181, i8* %184, i32* %187)
  br label %189

189:                                              ; preds = %179, %90
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* @SYS_RES_MEMORY, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 3
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @bus_release_resource(i32 %190, i32 %191, i8* %194, i32* %197)
  br label %199

199:                                              ; preds = %189, %71
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* @SYS_RES_MEMORY, align 4
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @bus_release_resource(i32 %200, i32 %201, i8* %204, i32* %207)
  %209 = load i32, i32* %7, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %199, %151, %52
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.TYPE_15__* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local %struct.TYPE_13__* @csa_findsubcard(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i8**, i32) #1

declare dso_local i64 @snd_setup_intr(i32, i32*, i32, i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @csa_initialize(%struct.TYPE_15__*) #1

declare dso_local i32 @csa_resetdsp(%struct.TYPE_16__*) #1

declare dso_local i64 @csa_downloadimage(%struct.TYPE_16__*) #1

declare dso_local %struct.sndcard_func* @malloc(i32, i32, i32) #1

declare dso_local i8* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i8*, %struct.sndcard_func*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
