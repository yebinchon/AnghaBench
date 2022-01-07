; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bfe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bfe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quicc_device = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, i32 }
%struct.quicc_softc = type { i32, i32, i32*, i32*, i32, %struct.TYPE_3__, %struct.quicc_device*, i64, i32, i64 }
%struct.resource_list_entry = type { i32* }

@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"QUICC resources\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@quicc_bfe_intr = common dso_local global i32* null, align 8
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not activate interrupt\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%sfast interrupt\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%spolled mode\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@M_QUICC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@QUICC_DEVTYPE_SCC = common dso_local global i32 0, align 4
@QUICC_REG_SIMR_L = common dso_local global i32 0, align 4
@QUICC_REG_SIPNR_H = common dso_local global i32 0, align 4
@QUICC_REG_SIPNR_L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicc_bfe_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.quicc_device*, align 8
  %5 = alloca %struct.quicc_softc*, align 8
  %6 = alloca %struct.resource_list_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.quicc_softc* @device_get_softc(i32 %11)
  store %struct.quicc_softc* %12, %struct.quicc_softc** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %15 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %18 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %17, i32 0, i32 9
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i8* @bus_alloc_resource_any(i32 %13, i32 %16, i64* %18, i32 %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %23 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %25 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %266

30:                                               ; preds = %1
  %31 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %32 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @rman_get_start(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %36 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @rman_get_size(i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %41 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %48 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @RMAN_ARRAY, align 4
  %51 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %52 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 8
  %54 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %55 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %58 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %57, i32 0, i32 5
  %59 = call i32 @rman_init(%struct.TYPE_3__* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %30
  %63 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %64 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %63, i32 0, i32 5
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @rman_manage_region(%struct.TYPE_3__* %64, i32 %65, i32 %69)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %62, %30
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %77 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %80 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %79, i32 0, i32 9
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %83 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @bus_release_resource(i32 %75, i32 %78, i64 %81, i32* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %2, align 4
  br label %266

87:                                               ; preds = %71
  %88 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %89 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %88, i32 0, i32 7
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @SYS_RES_IRQ, align 4
  %92 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %93 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %92, i32 0, i32 7
  %94 = load i32, i32* @RF_ACTIVE, align 4
  %95 = load i32, i32* @RF_SHAREABLE, align 4
  %96 = or i32 %94, %95
  %97 = call i8* @bus_alloc_resource_any(i32 %90, i32 %91, i64* %93, i32 %96)
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %100 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %99, i32 0, i32 3
  store i32* %98, i32** %100, align 8
  %101 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %102 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %152

105:                                              ; preds = %87
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %108 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @INTR_TYPE_TTY, align 4
  %111 = load i32*, i32** @quicc_bfe_intr, align 8
  %112 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %113 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %114 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %113, i32 0, i32 8
  %115 = call i32 @bus_setup_intr(i32 %106, i32* %109, i32 %110, i32* %111, i32* null, %struct.quicc_softc* %112, i32* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %105
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %121 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @INTR_TYPE_TTY, align 4
  %124 = load i32, i32* @INTR_MPSAFE, align 4
  %125 = or i32 %123, %124
  %126 = load i32*, i32** @quicc_bfe_intr, align 8
  %127 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %128 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %129 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %128, i32 0, i32 8
  %130 = call i32 @bus_setup_intr(i32 %119, i32* %122, i32 %125, i32* null, i32* %126, %struct.quicc_softc* %127, i32* %129)
  store i32 %130, i32* %10, align 4
  br label %134

131:                                              ; preds = %105
  %132 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %133 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %118
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @device_printf(i32 %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @SYS_RES_IRQ, align 4
  %142 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %143 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %142, i32 0, i32 7
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %146 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @bus_release_resource(i32 %140, i32 %141, i64 %144, i32* %147)
  %149 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %150 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %149, i32 0, i32 3
  store i32* null, i32** %150, align 8
  br label %151

151:                                              ; preds = %137, %134
  br label %152

152:                                              ; preds = %151, %87
  %153 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %154 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %159 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i64, i64* @bootverbose, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %193

163:                                              ; preds = %160
  %164 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %165 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %170 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %193

173:                                              ; preds = %168, %163
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @device_print_prettyname(i32 %174)
  %176 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %177 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %181)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %183

183:                                              ; preds = %180, %173
  %184 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %185 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %189)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %191

191:                                              ; preds = %188, %183
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %168, %160
  %194 = load i32, i32* @M_QUICC, align 4
  %195 = load i32, i32* @M_WAITOK, align 4
  %196 = load i32, i32* @M_ZERO, align 4
  %197 = or i32 %195, %196
  %198 = call %struct.quicc_device* @malloc(i32 24, i32 %194, i32 %197)
  store %struct.quicc_device* %198, %struct.quicc_device** %4, align 8
  %199 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %200 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %199, i32 0, i32 6
  store %struct.quicc_device* %198, %struct.quicc_device** %200, align 8
  %201 = load i32, i32* @QUICC_DEVTYPE_SCC, align 4
  %202 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %203 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 8
  %204 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %205 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %204, i32 0, i32 5
  %206 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %207 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %206, i32 0, i32 2
  store %struct.TYPE_3__* %205, %struct.TYPE_3__** %207, align 8
  %208 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %209 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %208, i32 0, i32 1
  %210 = call i32 @resource_list_init(i32* %209)
  %211 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %212 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %211, i32 0, i32 1
  %213 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %214 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %217, %218
  %220 = sub nsw i32 %219, 1
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @resource_list_add(i32* %212, i32 %215, i32 0, i32 %216, i32 %220, i32 %221)
  %223 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %224 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %223, i32 0, i32 1
  %225 = load i32, i32* @SYS_RES_IRQ, align 4
  %226 = call i32 @resource_list_add(i32* %224, i32 %225, i32 0, i32 3840, i32 3840, i32 1)
  %227 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %228 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %227, i32 0, i32 1
  %229 = load i32, i32* @SYS_RES_IRQ, align 4
  %230 = call %struct.resource_list_entry* @resource_list_find(i32* %228, i32 %229, i32 0)
  store %struct.resource_list_entry* %230, %struct.resource_list_entry** %6, align 8
  %231 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %232 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %235 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %234, i32 0, i32 0
  store i32* %233, i32** %235, align 8
  %236 = load i32, i32* %3, align 4
  %237 = call i32 @device_add_child(i32 %236, i32* null, i32 -1)
  %238 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %239 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %241 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %244 = bitcast %struct.quicc_device* %243 to i8*
  %245 = call i32 @device_set_ivars(i32 %242, i8* %244)
  %246 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %247 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @device_probe_and_attach(i32 %248)
  store i32 %249, i32* %10, align 4
  %250 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %251 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* @QUICC_REG_SIMR_L, align 4
  %254 = call i32 @quicc_write4(i32* %252, i32 %253, i32 15728640)
  %255 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %256 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* @QUICC_REG_SIPNR_H, align 4
  %259 = call i32 @quicc_write4(i32* %257, i32 %258, i32 -1)
  %260 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %261 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* @QUICC_REG_SIPNR_L, align 4
  %264 = call i32 @quicc_write4(i32* %262, i32 %263, i32 -1)
  %265 = load i32, i32* %10, align 4
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %193, %74, %28
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local %struct.quicc_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32 @rman_init(%struct.TYPE_3__*) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.quicc_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_print_prettyname(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.quicc_device* @malloc(i32, i32, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i32, i8*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @quicc_write4(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
