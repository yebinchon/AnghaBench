; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_mbxdmafree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_pci_mbxdmafree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i64, i64, i64, i32*, %struct.TYPE_9__, i32*, i32*, i32*, %struct.isp_nexus* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.isp_nexus*, i32 }
%struct.isp_nexus = type { %struct.isp_nexus*, i32 }
%struct.isp_fc = type { %struct.isp_nexus*, i32 }
%struct.TYPE_11__ = type { i64, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @isp_pci_mbxdmafree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_pci_mbxdmafree(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_fc*, align 8
  %5 = alloca %struct.isp_nexus*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 11
  %8 = load %struct.isp_nexus*, %struct.isp_nexus** %7, align 8
  %9 = icmp ne %struct.isp_nexus* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 11
  %13 = load %struct.isp_nexus*, %struct.isp_nexus** %12, align 8
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = call i32 @free(%struct.isp_nexus* %13, i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 11
  store %struct.isp_nexus* null, %struct.isp_nexus** %17, align 8
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 9
  %22 = load %struct.isp_nexus*, %struct.isp_nexus** %21, align 8
  %23 = icmp ne %struct.isp_nexus* %22, null
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 9
  %39 = load %struct.isp_nexus*, %struct.isp_nexus** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %39, i64 %41
  %43 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bus_dmamap_destroy(i32 %35, i32 %44)
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 9
  %53 = load %struct.isp_nexus*, %struct.isp_nexus** %52, align 8
  %54 = load i32, i32* @M_DEVBUF, align 4
  %55 = call i32 @free(%struct.isp_nexus* %53, i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 9
  store %struct.isp_nexus* null, %struct.isp_nexus** %58, align 8
  br label %59

59:                                               ; preds = %49, %18
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = call i64 @IS_FC(%struct.TYPE_10__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %186

63:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %137, %63
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %140

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = call %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_10__* %71, i32 %72)
  store %struct.isp_fc* %73, %struct.isp_fc** %4, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call %struct.TYPE_11__* @FCPARAM(%struct.TYPE_10__* %74, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %70
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.isp_fc*, %struct.isp_fc** %4, align 8
  %86 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bus_dmamap_unload(i32 %84, i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = call %struct.TYPE_11__* @FCPARAM(%struct.TYPE_10__* %89, i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %80, %70
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %95 = load i32, i32* %3, align 4
  %96 = call %struct.TYPE_11__* @FCPARAM(%struct.TYPE_10__* %94, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %118

100:                                              ; preds = %93
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %106 = load i32, i32* %3, align 4
  %107 = call %struct.TYPE_11__* @FCPARAM(%struct.TYPE_10__* %105, i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.isp_fc*, %struct.isp_fc** %4, align 8
  %111 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @bus_dmamem_free(i32 %104, i32* %109, i32 %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %115 = load i32, i32* %3, align 4
  %116 = call %struct.TYPE_11__* @FCPARAM(%struct.TYPE_10__* %114, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %100, %93
  br label %119

119:                                              ; preds = %124, %118
  %120 = load %struct.isp_fc*, %struct.isp_fc** %4, align 8
  %121 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %120, i32 0, i32 0
  %122 = load %struct.isp_nexus*, %struct.isp_nexus** %121, align 8
  %123 = icmp ne %struct.isp_nexus* %122, null
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load %struct.isp_fc*, %struct.isp_fc** %4, align 8
  %126 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %125, i32 0, i32 0
  %127 = load %struct.isp_nexus*, %struct.isp_nexus** %126, align 8
  store %struct.isp_nexus* %127, %struct.isp_nexus** %5, align 8
  %128 = load %struct.isp_nexus*, %struct.isp_nexus** %5, align 8
  %129 = getelementptr inbounds %struct.isp_nexus, %struct.isp_nexus* %128, i32 0, i32 0
  %130 = load %struct.isp_nexus*, %struct.isp_nexus** %129, align 8
  %131 = load %struct.isp_fc*, %struct.isp_fc** %4, align 8
  %132 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %131, i32 0, i32 0
  store %struct.isp_nexus* %130, %struct.isp_nexus** %132, align 8
  %133 = load %struct.isp_nexus*, %struct.isp_nexus** %5, align 8
  %134 = load i32, i32* @M_DEVBUF, align 4
  %135 = call i32 @free(%struct.isp_nexus* %133, i32 %134)
  br label %119

136:                                              ; preds = %119
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %3, align 4
  br label %64

140:                                              ; preds = %64
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 7
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @bus_dma_tag_destroy(i32 %149)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 7
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @bus_dmamap_unload(i32 %154, i32 %158)
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %145, %140
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 10
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %185

167:                                              ; preds = %162
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 10
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @bus_dmamem_free(i32 %171, i32* %174, i32 %178)
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @bus_dma_tag_destroy(i32 %183)
  br label %185

185:                                              ; preds = %167, %162
  br label %186

186:                                              ; preds = %185, %59
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %186
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @bus_dmamap_unload(i32 %195, i32 %199)
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 4
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %191, %186
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 8
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %228

208:                                              ; preds = %203
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 8
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 7
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @bus_dmamem_free(i32 %212, i32* %215, i32 %219)
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @bus_dma_tag_destroy(i32 %224)
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 8
  store i32* null, i32** %227, align 8
  br label %228

228:                                              ; preds = %208, %203
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %245

233:                                              ; preds = %228
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 7
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @bus_dmamap_unload(i32 %237, i32 %241)
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 5
  store i64 0, i64* %244, align 8
  br label %245

245:                                              ; preds = %233, %228
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 6
  %248 = load i32*, i32** %247, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %270

250:                                              ; preds = %245
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 7
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 6
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 7
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @bus_dmamem_free(i32 %254, i32* %257, i32 %261)
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 7
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @bus_dma_tag_destroy(i32 %266)
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 6
  store i32* null, i32** %269, align 8
  br label %270

270:                                              ; preds = %250, %245
  ret void
}

declare dso_local i32 @free(%struct.isp_nexus*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i64 @IS_FC(%struct.TYPE_10__*) #1

declare dso_local %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_11__* @FCPARAM(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
