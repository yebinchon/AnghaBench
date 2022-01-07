; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vi_pci_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vi_pci_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.virtio_softc* }
%struct.virtio_softc = type { i32, i64, i64, %struct.vqueue_info*, i64, i64, i64, %struct.virtio_consts* }
%struct.vqueue_info = type { i64, i32 (i32, %struct.vqueue_info*)* }
%struct.virtio_consts = type { i8*, i32, i32 (i32, i32, i32, i64)*, i64, i64, i32 (i32)*, i32 (i32, %struct.vqueue_info*)*, i32 (i32, i64)* }
%struct.config_reg = type { i32, i8*, i64 }

@VIRTIO_USE_MSIX = common dso_local global i32 0, align 4
@VTCFG_R_CFG1 = common dso_local global i64 0, align 8
@VTCFG_R_CFG0 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: write to %s: bad size %d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: write to read-only reg %s\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: write to bad offset/size %jd/%d\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: queue %d notify out of range\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%s: qnotify queue %d: missing vq/vc notify\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"%s: write config reg %s: curq %d >= max %d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vi_pci_write(%struct.vmctx* %0, i32 %1, %struct.pci_devinst* %2, i32 %3, i64 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_devinst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.virtio_softc*, align 8
  %16 = alloca %struct.vqueue_info*, align 8
  %17 = alloca %struct.virtio_consts*, align 8
  %18 = alloca %struct.config_reg*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pci_devinst* %2, %struct.pci_devinst** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %24 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %25 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %24, i32 0, i32 0
  %26 = load %struct.virtio_softc*, %struct.virtio_softc** %25, align 8
  store %struct.virtio_softc* %26, %struct.virtio_softc** %15, align 8
  %27 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %28 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VIRTIO_USE_MSIX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %7
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %36 = call i32 @pci_msix_table_bar(%struct.pci_devinst* %35)
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %41 = call i32 @pci_msix_pba_bar(%struct.pci_devinst* %40)
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %33
  %44 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @pci_emul_msix_twrite(%struct.pci_devinst* %44, i64 %45, i32 %46, i64 %47)
  br label %340

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %7
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %56 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %61 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @pthread_mutex_lock(i64 %62)
  br label %64

64:                                               ; preds = %59, %50
  %65 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %66 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %65, i32 0, i32 7
  %67 = load %struct.virtio_consts*, %struct.virtio_consts** %66, align 8
  store %struct.virtio_consts* %67, %struct.virtio_consts** %17, align 8
  %68 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %69 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %21, align 8
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 2
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 4
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %131

80:                                               ; preds = %76, %73, %64
  %81 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %82 = call i64 @pci_msix_enabled(%struct.pci_devinst* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i64, i64* @VTCFG_R_CFG1, align 8
  store i64 %85, i64* %19, align 8
  br label %88

86:                                               ; preds = %80
  %87 = load i64, i64* @VTCFG_R_CFG0, align 8
  store i64 %87, i64* %19, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %19, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %130

92:                                               ; preds = %88
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %19, align 8
  %95 = sub nsw i64 %93, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %22, align 4
  %97 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %98 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %103 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  br label %107

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %101
  %108 = phi i64 [ %105, %101 ], [ 4294967296, %106 ]
  store i64 %108, i64* %20, align 8
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %20, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %131

116:                                              ; preds = %107
  %117 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %118 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %117, i32 0, i32 2
  %119 = load i32 (i32, i32, i32, i64)*, i32 (i32, i32, i32, i64)** %118, align 8
  %120 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %121 = call i32 @DEV_SOFTC(%struct.virtio_softc* %120)
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i64, i64* %14, align 8
  %125 = call i32 %119(i32 %121, i32 %122, i32 %123, i64 %124)
  store i32 %125, i32* %23, align 4
  %126 = load i32, i32* %23, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %116
  br label %330

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129, %88
  br label %131

131:                                              ; preds = %130, %115, %79
  %132 = load i64, i64* %12, align 8
  %133 = call %struct.config_reg* @vi_find_cr(i64 %132)
  store %struct.config_reg* %133, %struct.config_reg** %18, align 8
  %134 = load %struct.config_reg*, %struct.config_reg** %18, align 8
  %135 = icmp eq %struct.config_reg* %134, null
  br i1 %135, label %147, label %136

136:                                              ; preds = %131
  %137 = load %struct.config_reg*, %struct.config_reg** %18, align 8
  %138 = getelementptr inbounds %struct.config_reg, %struct.config_reg* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load %struct.config_reg*, %struct.config_reg** %18, align 8
  %144 = getelementptr inbounds %struct.config_reg, %struct.config_reg* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %185

147:                                              ; preds = %142, %136, %131
  %148 = load %struct.config_reg*, %struct.config_reg** %18, align 8
  %149 = icmp ne %struct.config_reg* %148, null
  br i1 %149, label %150, label %177

150:                                              ; preds = %147
  %151 = load %struct.config_reg*, %struct.config_reg** %18, align 8
  %152 = getelementptr inbounds %struct.config_reg, %struct.config_reg* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load i32, i32* @stderr, align 4
  %158 = load i8*, i8** %21, align 8
  %159 = load %struct.config_reg*, %struct.config_reg** %18, align 8
  %160 = getelementptr inbounds %struct.config_reg, %struct.config_reg* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %158, i8* %161, i32 %162)
  br label %164

164:                                              ; preds = %156, %150
  %165 = load %struct.config_reg*, %struct.config_reg** %18, align 8
  %166 = getelementptr inbounds %struct.config_reg, %struct.config_reg* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load i32, i32* @stderr, align 4
  %171 = load i8*, i8** %21, align 8
  %172 = load %struct.config_reg*, %struct.config_reg** %18, align 8
  %173 = getelementptr inbounds %struct.config_reg, %struct.config_reg* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %171, i8* %174)
  br label %176

176:                                              ; preds = %169, %164
  br label %184

177:                                              ; preds = %147
  %178 = load i32, i32* @stderr, align 4
  %179 = load i8*, i8** %21, align 8
  %180 = load i64, i64* %12, align 8
  %181 = trunc i64 %180 to i32
  %182 = load i32, i32* %13, align 4
  %183 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %179, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %177, %176
  br label %330

185:                                              ; preds = %142
  %186 = load i64, i64* %12, align 8
  switch i64 %186, label %316 [
    i64 133, label %187
    i64 132, label %210
    i64 130, label %223
    i64 131, label %227
    i64 128, label %278
    i64 134, label %292
    i64 129, label %296
  ]

187:                                              ; preds = %185
  %188 = load i64, i64* %14, align 8
  %189 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %190 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = and i64 %188, %191
  %193 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %194 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %193, i32 0, i32 6
  store i64 %192, i64* %194, align 8
  %195 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %196 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %195, i32 0, i32 7
  %197 = load i32 (i32, i64)*, i32 (i32, i64)** %196, align 8
  %198 = icmp ne i32 (i32, i64)* %197, null
  br i1 %198, label %199, label %209

199:                                              ; preds = %187
  %200 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %201 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %200, i32 0, i32 7
  %202 = load i32 (i32, i64)*, i32 (i32, i64)** %201, align 8
  %203 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %204 = call i32 @DEV_SOFTC(%struct.virtio_softc* %203)
  %205 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %206 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = call i32 %202(i32 %204, i64 %207)
  br label %209

209:                                              ; preds = %199, %187
  br label %316

210:                                              ; preds = %185
  %211 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %212 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %215 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp sge i64 %213, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %317

219:                                              ; preds = %210
  %220 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %221 = load i64, i64* %14, align 8
  %222 = call i32 @vi_vq_init(%struct.virtio_softc* %220, i64 %221)
  br label %316

223:                                              ; preds = %185
  %224 = load i64, i64* %14, align 8
  %225 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %226 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  br label %316

227:                                              ; preds = %185
  %228 = load i64, i64* %14, align 8
  %229 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %230 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = icmp sge i64 %228, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %227
  %234 = load i32, i32* @stderr, align 4
  %235 = load i8*, i8** %21, align 8
  %236 = load i64, i64* %14, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %235, i32 %237)
  br label %330

239:                                              ; preds = %227
  %240 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %241 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %240, i32 0, i32 3
  %242 = load %struct.vqueue_info*, %struct.vqueue_info** %241, align 8
  %243 = load i64, i64* %14, align 8
  %244 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %242, i64 %243
  store %struct.vqueue_info* %244, %struct.vqueue_info** %16, align 8
  %245 = load %struct.vqueue_info*, %struct.vqueue_info** %16, align 8
  %246 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %245, i32 0, i32 1
  %247 = load i32 (i32, %struct.vqueue_info*)*, i32 (i32, %struct.vqueue_info*)** %246, align 8
  %248 = icmp ne i32 (i32, %struct.vqueue_info*)* %247, null
  br i1 %248, label %249, label %257

249:                                              ; preds = %239
  %250 = load %struct.vqueue_info*, %struct.vqueue_info** %16, align 8
  %251 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %250, i32 0, i32 1
  %252 = load i32 (i32, %struct.vqueue_info*)*, i32 (i32, %struct.vqueue_info*)** %251, align 8
  %253 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %254 = call i32 @DEV_SOFTC(%struct.virtio_softc* %253)
  %255 = load %struct.vqueue_info*, %struct.vqueue_info** %16, align 8
  %256 = call i32 %252(i32 %254, %struct.vqueue_info* %255)
  br label %277

257:                                              ; preds = %239
  %258 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %259 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %258, i32 0, i32 6
  %260 = load i32 (i32, %struct.vqueue_info*)*, i32 (i32, %struct.vqueue_info*)** %259, align 8
  %261 = icmp ne i32 (i32, %struct.vqueue_info*)* %260, null
  br i1 %261, label %262, label %270

262:                                              ; preds = %257
  %263 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %264 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %263, i32 0, i32 6
  %265 = load i32 (i32, %struct.vqueue_info*)*, i32 (i32, %struct.vqueue_info*)** %264, align 8
  %266 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %267 = call i32 @DEV_SOFTC(%struct.virtio_softc* %266)
  %268 = load %struct.vqueue_info*, %struct.vqueue_info** %16, align 8
  %269 = call i32 %265(i32 %267, %struct.vqueue_info* %268)
  br label %276

270:                                              ; preds = %257
  %271 = load i32, i32* @stderr, align 4
  %272 = load i8*, i8** %21, align 8
  %273 = load i64, i64* %14, align 8
  %274 = trunc i64 %273 to i32
  %275 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %271, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %272, i32 %274)
  br label %276

276:                                              ; preds = %270, %262
  br label %277

277:                                              ; preds = %276, %249
  br label %316

278:                                              ; preds = %185
  %279 = load i64, i64* %14, align 8
  %280 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %281 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %280, i32 0, i32 5
  store i64 %279, i64* %281, align 8
  %282 = load i64, i64* %14, align 8
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %278
  %285 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %286 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %285, i32 0, i32 5
  %287 = load i32 (i32)*, i32 (i32)** %286, align 8
  %288 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %289 = call i32 @DEV_SOFTC(%struct.virtio_softc* %288)
  %290 = call i32 %287(i32 %289)
  br label %291

291:                                              ; preds = %284, %278
  br label %316

292:                                              ; preds = %185
  %293 = load i64, i64* %14, align 8
  %294 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %295 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %294, i32 0, i32 4
  store i64 %293, i64* %295, align 8
  br label %316

296:                                              ; preds = %185
  %297 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %298 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %301 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %300, i32 0, i32 4
  %302 = load i64, i64* %301, align 8
  %303 = icmp sge i64 %299, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %296
  br label %317

305:                                              ; preds = %296
  %306 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %307 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %306, i32 0, i32 3
  %308 = load %struct.vqueue_info*, %struct.vqueue_info** %307, align 8
  %309 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %310 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %308, i64 %311
  store %struct.vqueue_info* %312, %struct.vqueue_info** %16, align 8
  %313 = load i64, i64* %14, align 8
  %314 = load %struct.vqueue_info*, %struct.vqueue_info** %16, align 8
  %315 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %314, i32 0, i32 0
  store i64 %313, i64* %315, align 8
  br label %316

316:                                              ; preds = %185, %305, %292, %291, %277, %223, %219, %209
  br label %330

317:                                              ; preds = %304, %218
  %318 = load i32, i32* @stderr, align 4
  %319 = load i8*, i8** %21, align 8
  %320 = load %struct.config_reg*, %struct.config_reg** %18, align 8
  %321 = getelementptr inbounds %struct.config_reg, %struct.config_reg* %320, i32 0, i32 1
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %324 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.virtio_consts*, %struct.virtio_consts** %17, align 8
  %327 = getelementptr inbounds %struct.virtio_consts, %struct.virtio_consts* %326, i32 0, i32 4
  %328 = load i64, i64* %327, align 8
  %329 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %318, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %319, i8* %322, i64 %325, i64 %328)
  br label %330

330:                                              ; preds = %317, %316, %233, %184, %128
  %331 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %332 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %330
  %336 = load %struct.virtio_softc*, %struct.virtio_softc** %15, align 8
  %337 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = call i32 @pthread_mutex_unlock(i64 %338)
  br label %340

340:                                              ; preds = %43, %335, %330
  ret void
}

declare dso_local i32 @pci_msix_table_bar(%struct.pci_devinst*) #1

declare dso_local i32 @pci_msix_pba_bar(%struct.pci_devinst*) #1

declare dso_local i32 @pci_emul_msix_twrite(%struct.pci_devinst*, i64, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i64) #1

declare dso_local i64 @pci_msix_enabled(%struct.pci_devinst*) #1

declare dso_local i32 @DEV_SOFTC(%struct.virtio_softc*) #1

declare dso_local %struct.config_reg* @vi_find_cr(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @vi_vq_init(%struct.virtio_softc*, i64) #1

declare dso_local i32 @pthread_mutex_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
