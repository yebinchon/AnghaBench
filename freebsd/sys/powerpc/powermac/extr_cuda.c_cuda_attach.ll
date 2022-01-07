; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuda_softc = type { i32, i32, i32, i32*, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32*, i64, i32*, i64, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not alloc mem resource!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate interrupt\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@cuda_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"could not setup interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cuda\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@CUDA_NOTREADY = common dso_local global i32 0, align 4
@CUDA_MAXPACKETS = common dso_local global i32 0, align 4
@pkt_q = common dso_local global i32 0, align 4
@vDirB = common dso_local global i32 0, align 4
@vACR = common dso_local global i32 0, align 4
@vSR_OUT = common dso_local global i32 0, align 4
@CUDA_IDLE = common dso_local global i32 0, align 4
@vIER = common dso_local global i32 0, align 4
@vSR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"CUDA child <%s>\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"adb\00", align 1
@shutdown_final = common dso_local global i32 0, align 4
@cuda_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cuda_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuda_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cuda_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [32 x i8], align 16
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.cuda_softc* @device_get_softc(i32 %10)
  store %struct.cuda_softc* %11, %struct.cuda_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %14 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %13, i32 0, i32 18
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %16 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %15, i32 0, i32 16
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %20 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %19, i32 0, i32 16
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call i8* @bus_alloc_resource_any(i32 %17, i32 %18, i64* %20, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %25 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %24, i32 0, i32 15
  store i32* %23, i32** %25, align 8
  %26 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %27 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %26, i32 0, i32 15
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %264

34:                                               ; preds = %1
  %35 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %36 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %35, i32 0, i32 14
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SYS_RES_IRQ, align 4
  %39 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %40 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %39, i32 0, i32 14
  %41 = load i32, i32* @RF_ACTIVE, align 4
  %42 = call i8* @bus_alloc_resource_any(i32 %37, i32 %38, i64* %40, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %45 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %44, i32 0, i32 13
  store i32* %43, i32** %45, align 8
  %46 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %47 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %46, i32 0, i32 13
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %34
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SYS_RES_MEMORY, align 4
  %55 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %56 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %55, i32 0, i32 16
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %59 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %58, i32 0, i32 15
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @bus_release_resource(i32 %53, i32 %54, i64 %57, i32* %60)
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %2, align 4
  br label %264

63:                                               ; preds = %34
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %66 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %65, i32 0, i32 13
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @INTR_TYPE_MISC, align 4
  %69 = load i32, i32* @INTR_MPSAFE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @INTR_ENTROPY, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @cuda_intr, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %76 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %75, i32 0, i32 17
  %77 = call i64 @bus_setup_intr(i32 %64, i32* %67, i32 %72, i32* null, i32 %73, i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %63
  %80 = load i32, i32* %3, align 4
  %81 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @SYS_RES_MEMORY, align 4
  %84 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %85 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %84, i32 0, i32 16
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %88 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %87, i32 0, i32 15
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @bus_release_resource(i32 %82, i32 %83, i64 %86, i32* %89)
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @SYS_RES_IRQ, align 4
  %93 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %94 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %93, i32 0, i32 14
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %97 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %96, i32 0, i32 13
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_release_resource(i32 %91, i32 %92, i64 %95, i32* %98)
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %2, align 4
  br label %264

101:                                              ; preds = %63
  %102 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %103 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %102, i32 0, i32 12
  %104 = load i32, i32* @MTX_DEF, align 4
  %105 = load i32, i32* @MTX_RECURSE, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @mtx_init(i32* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %106)
  %108 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %109 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %108, i32 0, i32 11
  store i64 0, i64* %109, align 8
  %110 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %111 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %110, i32 0, i32 10
  store i64 0, i64* %111, align 8
  %112 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %113 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %112, i32 0, i32 9
  store i64 0, i64* %113, align 8
  %114 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %115 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %114, i32 0, i32 8
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* @CUDA_NOTREADY, align 4
  %117 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %118 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %120 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %119, i32 0, i32 7
  store i64 0, i64* %120, align 8
  %121 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %122 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %121, i32 0, i32 0
  store i32 -1, i32* %122, align 8
  %123 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %124 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %123, i32 0, i32 6
  %125 = call i32 @STAILQ_INIT(i32* %124)
  %126 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %127 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %126, i32 0, i32 5
  %128 = call i32 @STAILQ_INIT(i32* %127)
  %129 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %130 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %129, i32 0, i32 4
  %131 = call i32 @STAILQ_INIT(i32* %130)
  store volatile i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %147, %101
  %133 = load volatile i32, i32* %5, align 4
  %134 = load volatile i32, i32* @CUDA_MAXPACKETS, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %132
  %137 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %138 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %137, i32 0, i32 4
  %139 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %140 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load volatile i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* @pkt_q, align 4
  %146 = call i32 @STAILQ_INSERT_TAIL(i32* %138, i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %136
  %148 = load volatile i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store volatile i32 %149, i32* %5, align 4
  br label %132

150:                                              ; preds = %132
  %151 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %152 = load i32, i32* @vDirB, align 4
  %153 = call i32 @cuda_read_reg(%struct.cuda_softc* %151, i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = or i32 %154, 48
  store i32 %155, i32* %6, align 4
  %156 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %157 = load i32, i32* @vDirB, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @cuda_write_reg(%struct.cuda_softc* %156, i32 %157, i32 %158)
  %160 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %161 = load i32, i32* @vDirB, align 4
  %162 = call i32 @cuda_read_reg(%struct.cuda_softc* %160, i32 %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = and i32 %163, 247
  store i32 %164, i32* %6, align 4
  %165 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %166 = load i32, i32* @vDirB, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @cuda_write_reg(%struct.cuda_softc* %165, i32 %166, i32 %167)
  %169 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %170 = load i32, i32* @vACR, align 4
  %171 = call i32 @cuda_read_reg(%struct.cuda_softc* %169, i32 %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* @vSR_OUT, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %6, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %6, align 4
  %176 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %177 = load i32, i32* @vACR, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @cuda_write_reg(%struct.cuda_softc* %176, i32 %177, i32 %178)
  %180 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %181 = load i32, i32* @vACR, align 4
  %182 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %183 = load i32, i32* @vACR, align 4
  %184 = call i32 @cuda_read_reg(%struct.cuda_softc* %182, i32 %183)
  %185 = or i32 %184, 12
  %186 = and i32 %185, -17
  %187 = call i32 @cuda_write_reg(%struct.cuda_softc* %180, i32 %181, i32 %186)
  %188 = load i32, i32* @CUDA_IDLE, align 4
  %189 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %190 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %192 = load i32, i32* @vIER, align 4
  %193 = call i32 @cuda_write_reg(%struct.cuda_softc* %191, i32 %192, i32 132)
  %194 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %195 = call i32 @cuda_idle(%struct.cuda_softc* %194)
  %196 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %197 = load i32, i32* @vSR, align 4
  %198 = call i32 @cuda_read_reg(%struct.cuda_softc* %196, i32 %197)
  store volatile i32 %198, i32* %5, align 4
  %199 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %200 = load i32, i32* @vIER, align 4
  %201 = call i32 @cuda_write_reg(%struct.cuda_softc* %199, i32 %200, i32 4)
  %202 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %203 = call i32 @cuda_idle(%struct.cuda_softc* %202)
  %204 = call i32 @DELAY(i32 150)
  %205 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %206 = call i32 @cuda_tip(%struct.cuda_softc* %205)
  %207 = call i32 @DELAY(i32 150)
  %208 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %209 = call i32 @cuda_toggle_ack(%struct.cuda_softc* %208)
  %210 = call i32 @DELAY(i32 150)
  %211 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %212 = call i32 @cuda_clear_tip(%struct.cuda_softc* %211)
  %213 = call i32 @DELAY(i32 150)
  %214 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %215 = call i32 @cuda_idle(%struct.cuda_softc* %214)
  %216 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %217 = load i32, i32* @vSR, align 4
  %218 = call i32 @cuda_read_reg(%struct.cuda_softc* %216, i32 %217)
  store volatile i32 %218, i32* %5, align 4
  %219 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %220 = load i32, i32* @vIER, align 4
  %221 = call i32 @cuda_write_reg(%struct.cuda_softc* %219, i32 %220, i32 132)
  %222 = load i32, i32* %3, align 4
  %223 = call i64 @ofw_bus_get_node(i32 %222)
  store i64 %223, i64* %7, align 8
  %224 = load i64, i64* %7, align 8
  %225 = call i64 @OF_child(i64 %224)
  store i64 %225, i64* %8, align 8
  br label %226

226:                                              ; preds = %251, %150
  %227 = load i64, i64* %8, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %254

229:                                              ; preds = %226
  %230 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %231 = call i32 @memset(i8* %230, i32 0, i32 32)
  %232 = load i64, i64* %8, align 8
  %233 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %234 = call i32 @OF_getprop(i64 %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %233, i32 32)
  %235 = load i64, i64* @bootverbose, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %229
  %238 = load i32, i32* %3, align 4
  %239 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %240 = call i32 (i32, i8*, ...) @device_printf(i32 %238, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %239)
  br label %241

241:                                              ; preds = %237, %229
  %242 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %243 = call i64 @strncmp(i8* %242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load i32, i32* %3, align 4
  %247 = call i32 @device_add_child(i32 %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %248 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %249 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  br label %250

250:                                              ; preds = %245, %241
  br label %251

251:                                              ; preds = %250
  %252 = load i64, i64* %8, align 8
  %253 = call i64 @OF_peer(i64 %252)
  store i64 %253, i64* %8, align 8
  br label %226

254:                                              ; preds = %226
  %255 = load i32, i32* %3, align 4
  %256 = call i32 @clock_register(i32 %255, i32 1000)
  %257 = load i32, i32* @shutdown_final, align 4
  %258 = load i32, i32* @cuda_shutdown, align 4
  %259 = load %struct.cuda_softc*, %struct.cuda_softc** %4, align 8
  %260 = load i32, i32* @SHUTDOWN_PRI_LAST, align 4
  %261 = call i32 @EVENTHANDLER_REGISTER(i32 %257, i32 %258, %struct.cuda_softc* %259, i32 %260)
  %262 = load i32, i32* %3, align 4
  %263 = call i32 @bus_generic_attach(i32 %262)
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %254, %79, %50, %30
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local %struct.cuda_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i32 @cuda_read_reg(%struct.cuda_softc*, i32) #1

declare dso_local i32 @cuda_write_reg(%struct.cuda_softc*, i32, i32) #1

declare dso_local i32 @cuda_idle(%struct.cuda_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @cuda_tip(%struct.cuda_softc*) #1

declare dso_local i32 @cuda_toggle_ack(%struct.cuda_softc*) #1

declare dso_local i32 @cuda_clear_tip(%struct.cuda_softc*) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @clock_register(i32, i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.cuda_softc*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
