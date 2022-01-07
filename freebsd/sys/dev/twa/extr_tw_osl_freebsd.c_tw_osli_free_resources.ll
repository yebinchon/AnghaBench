; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_free_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twa_softc = type { i32, %struct.cdev*, i32*, i32, i32, i32*, i32, i64, i64, i64, i64, i32, i64, i64, i64, i64 }
%struct.cdev = type { i32 }
%struct.tw_osli_req_context = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_OSLI_FREE_Q = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"dmamap_destroy(dma) returned %d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"dmamap_destroy(ioctl) returned %d\00", align 1
@TW_OSLI_MALLOC_CLASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"dma_tag_destroy(cmd) returned %d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"dma_tag_destroy(dma) returned %d\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"dma_tag_destroy(ioctl) returned %d\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"dma_tag_destroy(parent) returned %d\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"teardown_intr returned %d\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"release_resource(irq) returned %d\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"release_resource(io) returned %d\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"sysctl_ctx_free returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twa_softc*)* @tw_osli_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw_osli_free_resources(%struct.twa_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twa_softc*, align 8
  %4 = alloca %struct.tw_osli_req_context*, align 8
  %5 = alloca i32, align 4
  store %struct.twa_softc* %0, %struct.twa_softc** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %7 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %9 = call i32 @tw_osli_cam_detach(%struct.twa_softc* %8)
  %10 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %11 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %10, i32 0, i32 14
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %37, %14
  %16 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %17 = load i32, i32* @TW_OSLI_FREE_Q, align 4
  %18 = call %struct.tw_osli_req_context* @tw_osli_req_q_remove_head(%struct.twa_softc* %16, i32 %17)
  store %struct.tw_osli_req_context* %18, %struct.tw_osli_req_context** %4, align 8
  %19 = icmp ne %struct.tw_osli_req_context* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %22 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mtx_destroy(i32 %23)
  %25 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %26 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %25, i32 0, i32 9
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %29 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @bus_dmamap_destroy(i64 %27, i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 1, %struct.twa_softc* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %20
  br label %15

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %41 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %46 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %45, i32 0, i32 15
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %51 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %54 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %53, i32 0, i32 15
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @bus_dmamap_destroy(i64 %52, i64 %55)
  store i32 %56, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 1, %struct.twa_softc* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %49
  br label %63

63:                                               ; preds = %62, %44, %39
  %64 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %65 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %64, i32 0, i32 14
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %70 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %69, i32 0, i32 14
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @TW_OSLI_MALLOC_CLASS, align 4
  %73 = call i32 @free(i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %76 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %75, i32 0, i32 13
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %81 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %80, i32 0, i32 13
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @TW_OSLI_MALLOC_CLASS, align 4
  %84 = call i32 @free(i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %87 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %86, i32 0, i32 12
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %92 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %91, i32 0, i32 10
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %95 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %94, i32 0, i32 11
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @bus_dmamap_unload(i64 %93, i32 %96)
  %98 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %99 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %98, i32 0, i32 10
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %102 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %101, i32 0, i32 12
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %105 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @bus_dmamem_free(i64 %100, i64 %103, i32 %106)
  br label %108

108:                                              ; preds = %90, %85
  %109 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %110 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %109, i32 0, i32 10
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %115 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %114, i32 0, i32 10
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @bus_dma_tag_destroy(i64 %116)
  store i32 %117, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 1, %struct.twa_softc* %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %113
  br label %124

124:                                              ; preds = %123, %108
  %125 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %126 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %131 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %130, i32 0, i32 9
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @bus_dma_tag_destroy(i64 %132)
  store i32 %133, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 1, %struct.twa_softc* %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %135, %129
  br label %140

140:                                              ; preds = %139, %124
  %141 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %142 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %141, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %147 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %146, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @bus_dma_tag_destroy(i64 %148)
  store i32 %149, i32* %5, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 1, %struct.twa_softc* %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %151, %145
  br label %156

156:                                              ; preds = %155, %140
  %157 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %158 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %163 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @bus_dma_tag_destroy(i64 %164)
  store i32 %165, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %169 = load i32, i32* %5, align 4
  %170 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 1, %struct.twa_softc* %168, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %167, %161
  br label %172

172:                                              ; preds = %171, %156
  %173 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %174 = call i32 @twa_teardown_intr(%struct.twa_softc* %173)
  store i32 %174, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %178 = load i32, i32* %5, align 4
  %179 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 1, %struct.twa_softc* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %176, %172
  %181 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %182 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %203

185:                                              ; preds = %180
  %186 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %187 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @SYS_RES_IRQ, align 4
  %190 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %191 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %194 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %193, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @bus_release_resource(i32 %188, i32 %189, i32 %192, i32* %195)
  store i32 %196, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %185
  %199 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %200 = load i32, i32* %5, align 4
  %201 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 1, %struct.twa_softc* %199, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %198, %185
  br label %203

203:                                              ; preds = %202, %180
  %204 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %205 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %226

208:                                              ; preds = %203
  %209 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %210 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @SYS_RES_MEMORY, align 4
  %213 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %214 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %217 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @bus_release_resource(i32 %211, i32 %212, i32 %215, i32* %218)
  store i32 %219, i32* %5, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %208
  %222 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %223 = load i32, i32* %5, align 4
  %224 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 1, %struct.twa_softc* %222, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %221, %208
  br label %226

226:                                              ; preds = %225, %203
  %227 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %228 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %227, i32 0, i32 1
  %229 = load %struct.cdev*, %struct.cdev** %228, align 8
  %230 = icmp ne %struct.cdev* %229, null
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %233 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %232, i32 0, i32 1
  %234 = load %struct.cdev*, %struct.cdev** %233, align 8
  %235 = call i32 @destroy_dev(%struct.cdev* %234)
  br label %236

236:                                              ; preds = %231, %226
  %237 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %238 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %237, i32 0, i32 0
  %239 = call i32 @sysctl_ctx_free(i32* %238)
  store i32 %239, i32* %5, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %243 = load i32, i32* %5, align 4
  %244 = call i32 (i32, %struct.twa_softc*, i8*, ...) @tw_osli_dbg_dprintf(i32 1, %struct.twa_softc* %242, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %241, %236
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*, ...) #1

declare dso_local i32 @tw_osli_cam_detach(%struct.twa_softc*) #1

declare dso_local %struct.tw_osli_req_context* @tw_osli_req_q_remove_head(%struct.twa_softc*, i32) #1

declare dso_local i32 @mtx_destroy(i32) #1

declare dso_local i32 @bus_dmamap_destroy(i64, i64) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @twa_teardown_intr(%struct.twa_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @destroy_dev(%struct.cdev*) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
