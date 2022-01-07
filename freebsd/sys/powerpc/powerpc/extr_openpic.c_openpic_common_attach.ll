; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_openpic.c_openpic_common_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_openpic.c_openpic_common_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic_softc = type { i8*, i32, i32, i32, i32*, i64, i32, i64, i32*, i32, i32, i64, i8* }
%struct.resource_list = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not alloc mem resource!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@OPENPIC_CONFIG = common dso_local global i32 0, align 4
@OPENPIC_CONFIG_RESET = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@openpic_intr = common dso_local global i32 0, align 4
@OPENPIC_FEATURE = common dso_local global i32 0, align 4
@OPENPIC_FEATURE_VERSION_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@OPENPIC_FEATURE_LAST_CPU_MASK = common dso_local global i32 0, align 4
@OPENPIC_FEATURE_LAST_CPU_SHIFT = common dso_local global i32 0, align 4
@OPENPIC_FEATURE_LAST_IRQ_MASK = common dso_local global i32 0, align 4
@OPENPIC_FEATURE_LAST_IRQ_SHIFT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"Version %s, supports %d CPUs and %d irqs\0A\00", align 1
@OPENPIC_QUIRK_HIDDEN_IRQS = common dso_local global i32 0, align 4
@OPENPIC_IRQMAX = common dso_local global i8* null, align 8
@OPENPIC_NIPIS = common dso_local global i8* null, align 8
@OPENPIC_IMASK = common dso_local global i32 0, align 4
@OPENPIC_POLARITY_NEGATIVE = common dso_local global i32 0, align 4
@OPENPIC_SENSE_LEVEL = common dso_local global i32 0, align 4
@OPENPIC_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@OPENPIC_CONFIG_8259_PASSTHRU_DISABLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@root_pic = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpic_common_attach(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.openpic_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource_list*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.openpic_softc* @device_get_softc(i8* %12)
  store %struct.openpic_softc* %13, %struct.openpic_softc** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %16 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %15, i32 0, i32 12
  store i8* %14, i8** %16, align 8
  %17 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %18 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %17, i32 0, i32 11
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @SYS_RES_MEMORY, align 4
  %21 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %22 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %21, i32 0, i32 11
  %23 = load i32, i32* @RF_ACTIVE, align 4
  %24 = call i8* @bus_alloc_resource_any(i8* %19, i32 %20, i64* %22, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %27 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %26, i32 0, i32 8
  store i32* %25, i32** %27, align 8
  %28 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %29 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i8*, i8*, ...) @device_printf(i8* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %3, align 4
  br label %370

36:                                               ; preds = %2
  %37 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %38 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %37, i32 0, i32 8
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @rman_get_bustag(i32* %39)
  %41 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %42 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 4
  %43 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %44 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @rman_get_bushandle(i32* %45)
  %47 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %48 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 8
  %49 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %50 = load i32, i32* @OPENPIC_CONFIG, align 4
  %51 = call i32 @openpic_read(%struct.openpic_softc* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @OPENPIC_CONFIG_RESET, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %56 = load i32, i32* @OPENPIC_CONFIG, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @openpic_write(%struct.openpic_softc* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %66, %36
  %60 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %61 = load i32, i32* @OPENPIC_CONFIG, align 4
  %62 = call i32 @openpic_read(%struct.openpic_softc* %60, i32 %61)
  %63 = load i32, i32* @OPENPIC_CONFIG_RESET, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = call i32 (...) @powerpc_sync()
  %68 = call i32 @DELAY(i32 100)
  br label %59

69:                                               ; preds = %59
  %70 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %71 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %73 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %72, i32 0, i32 4
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @device_get_parent(i8* %75)
  %77 = load i8*, i8** %4, align 8
  %78 = call %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32 %76, i8* %77)
  store %struct.resource_list* %78, %struct.resource_list** %11, align 8
  %79 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %80 = icmp eq %struct.resource_list* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %110

82:                                               ; preds = %74
  %83 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %84 = load i32, i32* @SYS_RES_IRQ, align 4
  %85 = call i32* @resource_list_find(%struct.resource_list* %83, i32 %84, i32 0)
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %110

88:                                               ; preds = %82
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* @SYS_RES_IRQ, align 4
  %91 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %92 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %91, i32 0, i32 7
  %93 = load i32, i32* @RF_ACTIVE, align 4
  %94 = call i8* @bus_alloc_resource_any(i8* %89, i32 %90, i64* %92, i32 %93)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %97 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %96, i32 0, i32 4
  store i32* %95, i32** %97, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %100 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @INTR_TYPE_MISC, align 4
  %103 = load i32, i32* @INTR_MPSAFE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @openpic_intr, align 4
  %106 = load i8*, i8** %4, align 8
  %107 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %108 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %107, i32 0, i32 6
  %109 = call i32 @bus_setup_intr(i8* %98, i32* %101, i32 %104, i32 %105, i32* null, i8* %106, i32* %108)
  br label %110

110:                                              ; preds = %88, %87, %81
  %111 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %112 = load i32, i32* @OPENPIC_CONFIG, align 4
  %113 = call i32 @openpic_read(%struct.openpic_softc* %111, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* @OPENPIC_CONFIG_RESET, align 4
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %118 = load i32, i32* @OPENPIC_CONFIG, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @openpic_write(%struct.openpic_softc* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %128, %110
  %122 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %123 = load i32, i32* @OPENPIC_CONFIG, align 4
  %124 = call i32 @openpic_read(%struct.openpic_softc* %122, i32 %123)
  %125 = load i32, i32* @OPENPIC_CONFIG_RESET, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = call i32 (...) @powerpc_sync()
  %130 = call i32 @DELAY(i32 100)
  br label %121

131:                                              ; preds = %121
  %132 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %133 = load i32, i32* @OPENPIC_FEATURE, align 4
  %134 = call i32 @openpic_read(%struct.openpic_softc* %132, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @OPENPIC_FEATURE_VERSION_MASK, align 4
  %137 = and i32 %135, %136
  switch i32 %137, label %147 [
    i32 1, label %138
    i32 2, label %141
    i32 3, label %144
  ]

138:                                              ; preds = %131
  %139 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %140 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %139, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %140, align 8
  br label %150

141:                                              ; preds = %131
  %142 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %143 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %142, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %143, align 8
  br label %150

144:                                              ; preds = %131
  %145 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %146 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %145, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %146, align 8
  br label %150

147:                                              ; preds = %131
  %148 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %149 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %148, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %149, align 8
  br label %150

150:                                              ; preds = %147, %144, %141, %138
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @OPENPIC_FEATURE_LAST_CPU_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* @OPENPIC_FEATURE_LAST_CPU_SHIFT, align 4
  %155 = ashr i32 %153, %154
  %156 = add nsw i32 %155, 1
  %157 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %158 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @OPENPIC_FEATURE_LAST_IRQ_MASK, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @OPENPIC_FEATURE_LAST_IRQ_SHIFT, align 4
  %163 = ashr i32 %161, %162
  %164 = add nsw i32 %163, 1
  %165 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %166 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  %167 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %168 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %150
  %172 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %173 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %173, align 4
  %176 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %177 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %171, %150
  %181 = load i64, i64* @bootverbose, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = load i8*, i8** %4, align 8
  %185 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %186 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %189 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %192 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i8*, i8*, ...) @device_printf(i8* %184, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %187, i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %183, %180
  %196 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %197 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @OPENPIC_QUIRK_HIDDEN_IRQS, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %195
  %203 = load i8*, i8** @OPENPIC_IRQMAX, align 8
  %204 = load i8*, i8** @OPENPIC_NIPIS, align 8
  %205 = ptrtoint i8* %203 to i64
  %206 = ptrtoint i8* %204 to i64
  %207 = sub i64 %205, %206
  %208 = trunc i64 %207 to i32
  %209 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %210 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %202, %195
  store i8* null, i8** %7, align 8
  br label %212

212:                                              ; preds = %225, %211
  %213 = load i8*, i8** %7, align 8
  %214 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %215 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  %219 = icmp ult i8* %213, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %212
  %221 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %222 = load i8*, i8** %7, align 8
  %223 = call i32 @OPENPIC_PCPU_TPR(i8* %222)
  %224 = call i32 @openpic_write(%struct.openpic_softc* %221, i32 %223, i32 15)
  br label %225

225:                                              ; preds = %220
  %226 = load i8*, i8** %7, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %7, align 8
  br label %212

228:                                              ; preds = %212
  store i8* null, i8** %9, align 8
  br label %229

229:                                              ; preds = %258, %228
  %230 = load i8*, i8** %9, align 8
  %231 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %232 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  %236 = icmp ult i8* %230, %235
  br i1 %236, label %237, label %261

237:                                              ; preds = %229
  %238 = load i8*, i8** %9, align 8
  %239 = ptrtoint i8* %238 to i32
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* @OPENPIC_IMASK, align 4
  %241 = load i32, i32* %10, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* @OPENPIC_POLARITY_NEGATIVE, align 4
  %244 = load i32, i32* %10, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* @OPENPIC_SENSE_LEVEL, align 4
  %247 = load i32, i32* %10, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %10, align 4
  %249 = load i32, i32* @OPENPIC_PRIORITY_SHIFT, align 4
  %250 = shl i32 8, %249
  %251 = load i32, i32* %10, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %10, align 4
  %253 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %254 = load i8*, i8** %9, align 8
  %255 = call i32 @OPENPIC_SRC_VECTOR(i8* %254)
  %256 = load i32, i32* %10, align 4
  %257 = call i32 @openpic_write(%struct.openpic_softc* %253, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %237
  %259 = load i8*, i8** %9, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %9, align 8
  br label %229

261:                                              ; preds = %229
  store i8* null, i8** %8, align 8
  br label %262

262:                                              ; preds = %286, %261
  %263 = load i8*, i8** %8, align 8
  %264 = load i8*, i8** @OPENPIC_NIPIS, align 8
  %265 = icmp ult i8* %263, %264
  br i1 %265, label %266, label %289

266:                                              ; preds = %262
  %267 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %268 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load i8*, i8** %8, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr i8, i8* %270, i64 %271
  %273 = ptrtoint i8* %272 to i32
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* @OPENPIC_IMASK, align 4
  %275 = load i32, i32* %10, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* @OPENPIC_PRIORITY_SHIFT, align 4
  %278 = shl i32 15, %277
  %279 = load i32, i32* %10, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %10, align 4
  %281 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %282 = load i8*, i8** %8, align 8
  %283 = call i32 @OPENPIC_IPI_VECTOR(i8* %282)
  %284 = load i32, i32* %10, align 4
  %285 = call i32 @openpic_write(%struct.openpic_softc* %281, i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %266
  %287 = load i8*, i8** %8, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %8, align 8
  br label %262

289:                                              ; preds = %262
  %290 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %291 = load i32, i32* @OPENPIC_CONFIG, align 4
  %292 = call i32 @openpic_read(%struct.openpic_softc* %290, i32 %291)
  store i32 %292, i32* %10, align 4
  %293 = load i32, i32* @OPENPIC_CONFIG_8259_PASSTHRU_DISABLE, align 4
  %294 = load i32, i32* %10, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %10, align 4
  %296 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %297 = load i32, i32* @OPENPIC_CONFIG, align 4
  %298 = load i32, i32* %10, align 4
  %299 = call i32 @openpic_write(%struct.openpic_softc* %296, i32 %297, i32 %298)
  store i8* null, i8** %9, align 8
  br label %300

300:                                              ; preds = %313, %289
  %301 = load i8*, i8** %9, align 8
  %302 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %303 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = inttoptr i64 %305 to i8*
  %307 = icmp ult i8* %301, %306
  br i1 %307, label %308, label %316

308:                                              ; preds = %300
  %309 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %310 = load i8*, i8** %9, align 8
  %311 = call i32 @OPENPIC_IDEST(i8* %310)
  %312 = call i32 @openpic_write(%struct.openpic_softc* %309, i32 %311, i32 1)
  br label %313

313:                                              ; preds = %308
  %314 = load i8*, i8** %9, align 8
  %315 = getelementptr inbounds i8, i8* %314, i32 1
  store i8* %315, i8** %9, align 8
  br label %300

316:                                              ; preds = %300
  store i8* null, i8** %9, align 8
  br label %317

317:                                              ; preds = %332, %316
  %318 = load i8*, i8** %9, align 8
  %319 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %320 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = inttoptr i64 %322 to i8*
  %324 = icmp ult i8* %318, %323
  br i1 %324, label %325, label %335

325:                                              ; preds = %317
  %326 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %327 = call i32 @OPENPIC_PCPU_IACK(i32 0)
  %328 = call i32 @openpic_read(%struct.openpic_softc* %326, i32 %327)
  %329 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %330 = call i32 @OPENPIC_PCPU_EOI(i32 0)
  %331 = call i32 @openpic_write(%struct.openpic_softc* %329, i32 %330, i32 0)
  br label %332

332:                                              ; preds = %325
  %333 = load i8*, i8** %9, align 8
  %334 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %334, i8** %9, align 8
  br label %317

335:                                              ; preds = %317
  store i8* null, i8** %7, align 8
  br label %336

336:                                              ; preds = %349, %335
  %337 = load i8*, i8** %7, align 8
  %338 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %339 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = sext i32 %340 to i64
  %342 = inttoptr i64 %341 to i8*
  %343 = icmp ult i8* %337, %342
  br i1 %343, label %344, label %352

344:                                              ; preds = %336
  %345 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %346 = load i8*, i8** %7, align 8
  %347 = call i32 @OPENPIC_PCPU_TPR(i8* %346)
  %348 = call i32 @openpic_write(%struct.openpic_softc* %345, i32 %347, i32 0)
  br label %349

349:                                              ; preds = %344
  %350 = load i8*, i8** %7, align 8
  %351 = getelementptr inbounds i8, i8* %350, i32 1
  store i8* %351, i8** %7, align 8
  br label %336

352:                                              ; preds = %336
  %353 = load i8*, i8** %4, align 8
  %354 = load i32, i32* %5, align 4
  %355 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %356 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = inttoptr i64 %358 to i8*
  %360 = load i8*, i8** @OPENPIC_NIPIS, align 8
  %361 = load i32, i32* @FALSE, align 4
  %362 = call i32 @powerpc_register_pic(i8* %353, i32 %354, i8* %359, i8* %360, i32 %361)
  %363 = load %struct.openpic_softc*, %struct.openpic_softc** %6, align 8
  %364 = getelementptr inbounds %struct.openpic_softc, %struct.openpic_softc* %363, i32 0, i32 4
  %365 = load i32*, i32** %364, align 8
  %366 = icmp eq i32* %365, null
  br i1 %366, label %367, label %369

367:                                              ; preds = %352
  %368 = load i8*, i8** %4, align 8
  store i8* %368, i8** @root_pic, align 8
  br label %369

369:                                              ; preds = %367, %352
  store i32 0, i32* %3, align 4
  br label %370

370:                                              ; preds = %369, %32
  %371 = load i32, i32* %3, align 4
  ret i32 %371
}

declare dso_local %struct.openpic_softc* @device_get_softc(i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @openpic_read(%struct.openpic_softc*, i32) #1

declare dso_local i32 @openpic_write(%struct.openpic_softc*, i32, i32) #1

declare dso_local i32 @powerpc_sync(...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32, i8*) #1

declare dso_local i32 @device_get_parent(i8*) #1

declare dso_local i32* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i8*, i32*, i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @OPENPIC_PCPU_TPR(i8*) #1

declare dso_local i32 @OPENPIC_SRC_VECTOR(i8*) #1

declare dso_local i32 @OPENPIC_IPI_VECTOR(i8*) #1

declare dso_local i32 @OPENPIC_IDEST(i8*) #1

declare dso_local i32 @OPENPIC_PCPU_IACK(i32) #1

declare dso_local i32 @OPENPIC_PCPU_EOI(i32) #1

declare dso_local i32 @powerpc_register_pic(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
