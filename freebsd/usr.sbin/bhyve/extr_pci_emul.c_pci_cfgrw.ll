; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_cfgrw.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_cfgrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.businfo = type { %struct.slotinfo* }
%struct.slotinfo = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_devinst* }
%struct.pci_devinst = type { %struct.TYPE_4__*, %struct.pci_devemu* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.pci_devemu = type { i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32*)*, i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)* }
%struct.vmctx = type { i32 }

@pci_businfo = common dso_local global %struct.businfo** null, align 8
@PCI_REGMAX = common dso_local global i32 0, align 4
@PCI_BARMAX = common dso_local global i64 0, align 8
@PCIM_BAR_IO_SPACE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_SPACE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_32 = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_64 = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_PREFETCH = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIR_REVID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmctx*, i32, i32, i32, i32, i32, i32, i32, i32*)* @pci_cfgrw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_cfgrw(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.vmctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.businfo*, align 8
  %20 = alloca %struct.slotinfo*, align 8
  %21 = alloca %struct.pci_devinst*, align 8
  %22 = alloca %struct.pci_devemu*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %28 = load %struct.businfo**, %struct.businfo*** @pci_businfo, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.businfo*, %struct.businfo** %28, i64 %30
  %32 = load %struct.businfo*, %struct.businfo** %31, align 8
  store %struct.businfo* %32, %struct.businfo** %19, align 8
  %33 = icmp ne %struct.businfo* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %9
  %35 = load %struct.businfo*, %struct.businfo** %19, align 8
  %36 = getelementptr inbounds %struct.businfo, %struct.businfo* %35, i32 0, i32 0
  %37 = load %struct.slotinfo*, %struct.slotinfo** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %37, i64 %39
  store %struct.slotinfo* %40, %struct.slotinfo** %20, align 8
  %41 = load %struct.slotinfo*, %struct.slotinfo** %20, align 8
  %42 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.pci_devinst*, %struct.pci_devinst** %47, align 8
  store %struct.pci_devinst* %48, %struct.pci_devinst** %21, align 8
  br label %50

49:                                               ; preds = %9
  store %struct.pci_devinst* null, %struct.pci_devinst** %21, align 8
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %52 = icmp eq %struct.pci_devinst* %51, null
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 4
  br i1 %61, label %68, label %62

62:                                               ; preds = %59, %56, %53
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62, %59, %50
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32*, i32** %18, align 8
  store i32 -1, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %68
  br label %361

74:                                               ; preds = %62
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @PCI_REGMAX, align 4
  %77 = add nsw i32 %76, 1
  %78 = icmp sge i32 %75, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i32*, i32** %18, align 8
  store i32 -1, i32* %83, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @PCI_REGMAX, align 4
  %86 = add nsw i32 %85, 4
  %87 = icmp sle i32 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32*, i32** %18, align 8
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %88, %82
  br label %91

91:                                               ; preds = %90, %79
  br label %361

92:                                               ; preds = %74
  %93 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %94 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %93, i32 0, i32 1
  %95 = load %struct.pci_devemu*, %struct.pci_devemu** %94, align 8
  store %struct.pci_devemu* %95, %struct.pci_devemu** %22, align 8
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %92
  %99 = load %struct.pci_devemu*, %struct.pci_devemu** %22, align 8
  %100 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %99, i32 0, i32 0
  %101 = load i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32*)*, i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32*)** %100, align 8
  %102 = icmp ne i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32*)* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.pci_devemu*, %struct.pci_devemu** %22, align 8
  %105 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %104, i32 0, i32 0
  %106 = load i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32*)*, i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32*)** %105, align 8
  %107 = load %struct.vmctx*, %struct.vmctx** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32*, i32** %18, align 8
  %113 = call i32 %106(%struct.vmctx* %107, i32 %108, %struct.pci_devinst* %109, i32 %110, i32 %111, i32* %112)
  store i32 %113, i32* %24, align 4
  br label %115

114:                                              ; preds = %98
  store i32 1, i32* %24, align 4
  br label %115

115:                                              ; preds = %114, %103
  %116 = load i32, i32* %24, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @CFGREAD(%struct.pci_devinst* %119, i32 %120, i32 %121)
  %123 = load i32*, i32** %18, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %118, %115
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32*, i32** %18, align 8
  %130 = call i32 @pci_emul_hdrtype_fixup(i32 %125, i32 %126, i32 %127, i32 %128, i32* %129)
  br label %361

131:                                              ; preds = %92
  %132 = load %struct.pci_devemu*, %struct.pci_devemu** %22, align 8
  %133 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %132, i32 0, i32 1
  %134 = load i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)*, i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)** %133, align 8
  %135 = icmp ne i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)* %134, null
  br i1 %135, label %136, label %150

136:                                              ; preds = %131
  %137 = load %struct.pci_devemu*, %struct.pci_devemu** %22, align 8
  %138 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %137, i32 0, i32 1
  %139 = load i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)*, i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)** %138, align 8
  %140 = load %struct.vmctx*, %struct.vmctx** %10, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32*, i32** %18, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i64 %139(%struct.vmctx* %140, i32 %141, %struct.pci_devinst* %142, i32 %143, i32 %144, i32 %146)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  br label %361

150:                                              ; preds = %136, %131
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @PCIR_BAR(i64 0)
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %324

154:                                              ; preds = %150
  %155 = load i32, i32* %16, align 4
  %156 = load i64, i64* @PCI_BARMAX, align 8
  %157 = add nsw i64 %156, 1
  %158 = call i32 @PCIR_BAR(i64 %157)
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %324

160:                                              ; preds = %154
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 4
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %16, align 4
  %165 = and i32 %164, 3
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163, %160
  br label %361

168:                                              ; preds = %163
  %169 = load i32, i32* %16, align 4
  %170 = call i32 @PCIR_BAR(i64 0)
  %171 = sub nsw i32 %169, %170
  %172 = sdiv i32 %171, 4
  store i32 %172, i32* %23, align 4
  %173 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %174 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %23, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 1
  %182 = xor i32 %181, -1
  store i32 %182, i32* %27, align 4
  %183 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %184 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = load i32, i32* %23, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  switch i32 %190, label %317 [
    i32 128, label %191
    i32 132, label %199
    i32 131, label %225
    i32 130, label %251
    i32 129, label %279
  ]

191:                                              ; preds = %168
  store i32 0, i32* %26, align 4
  %192 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %193 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %192, i32 0, i32 0
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load i32, i32* %23, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  store i32 0, i32* %198, align 4
  br label %319

199:                                              ; preds = %168
  %200 = load i32*, i32** %18, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %27, align 4
  %203 = and i32 %201, %202
  store i32 %203, i32* %25, align 4
  %204 = load i32, i32* %25, align 4
  %205 = and i32 %204, 65535
  store i32 %205, i32* %25, align 4
  %206 = load i32, i32* %25, align 4
  %207 = load i32, i32* @PCIM_BAR_IO_SPACE, align 4
  %208 = or i32 %206, %207
  store i32 %208, i32* %26, align 4
  %209 = load i32, i32* %25, align 4
  %210 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %211 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %210, i32 0, i32 0
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load i32, i32* %23, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %209, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %199
  %220 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %221 = load i32, i32* %25, align 4
  %222 = load i32, i32* %23, align 4
  %223 = call i32 @update_bar_address(%struct.pci_devinst* %220, i32 %221, i32 %222, i32 132)
  br label %224

224:                                              ; preds = %219, %199
  br label %319

225:                                              ; preds = %168
  %226 = load i32*, i32** %18, align 8
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %27, align 4
  %229 = and i32 %227, %228
  store i32 %229, i32* %26, align 4
  store i32 %229, i32* %25, align 4
  %230 = load i32, i32* @PCIM_BAR_MEM_SPACE, align 4
  %231 = load i32, i32* @PCIM_BAR_MEM_32, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* %26, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %26, align 4
  %235 = load i32, i32* %25, align 4
  %236 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %237 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %236, i32 0, i32 0
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = load i32, i32* %23, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %235, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %225
  %246 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %247 = load i32, i32* %25, align 4
  %248 = load i32, i32* %23, align 4
  %249 = call i32 @update_bar_address(%struct.pci_devinst* %246, i32 %247, i32 %248, i32 131)
  br label %250

250:                                              ; preds = %245, %225
  br label %319

251:                                              ; preds = %168
  %252 = load i32*, i32** %18, align 8
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %27, align 4
  %255 = and i32 %253, %254
  store i32 %255, i32* %26, align 4
  store i32 %255, i32* %25, align 4
  %256 = load i32, i32* @PCIM_BAR_MEM_SPACE, align 4
  %257 = load i32, i32* @PCIM_BAR_MEM_64, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @PCIM_BAR_MEM_PREFETCH, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* %26, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %26, align 4
  %263 = load i32, i32* %25, align 4
  %264 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %265 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %264, i32 0, i32 0
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = load i32, i32* %23, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %263, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %251
  %274 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %275 = load i32, i32* %25, align 4
  %276 = load i32, i32* %23, align 4
  %277 = call i32 @update_bar_address(%struct.pci_devinst* %274, i32 %275, i32 %276, i32 130)
  br label %278

278:                                              ; preds = %273, %251
  br label %319

279:                                              ; preds = %168
  %280 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %281 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %280, i32 0, i32 0
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = load i32, i32* %23, align 4
  %284 = sub nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = sub nsw i32 %288, 1
  %290 = xor i32 %289, -1
  store i32 %290, i32* %27, align 4
  %291 = load i32*, i32** %18, align 8
  %292 = load i32, i32* %291, align 4
  %293 = shl i32 %292, 32
  %294 = load i32, i32* %27, align 4
  %295 = and i32 %293, %294
  store i32 %295, i32* %25, align 4
  %296 = load i32, i32* %25, align 4
  %297 = ashr i32 %296, 32
  store i32 %297, i32* %26, align 4
  %298 = load i32, i32* %26, align 4
  %299 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %300 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %299, i32 0, i32 0
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %300, align 8
  %302 = load i32, i32* %23, align 4
  %303 = sub nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = ashr i32 %307, 32
  %309 = icmp ne i32 %298, %308
  br i1 %309, label %310, label %316

310:                                              ; preds = %279
  %311 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %312 = load i32, i32* %25, align 4
  %313 = load i32, i32* %23, align 4
  %314 = sub nsw i32 %313, 1
  %315 = call i32 @update_bar_address(%struct.pci_devinst* %311, i32 %312, i32 %314, i32 129)
  br label %316

316:                                              ; preds = %310, %279
  br label %319

317:                                              ; preds = %168
  %318 = call i32 @assert(i32 0)
  br label %319

319:                                              ; preds = %317, %316, %278, %250, %224, %191
  %320 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %321 = load i32, i32* %16, align 4
  %322 = load i32, i32* %26, align 4
  %323 = call i32 @pci_set_cfgdata32(%struct.pci_devinst* %320, i32 %321, i32 %322)
  br label %360

324:                                              ; preds = %154, %150
  %325 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %326 = load i32, i32* %16, align 4
  %327 = call i64 @pci_emul_iscap(%struct.pci_devinst* %325, i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %324
  %330 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %331 = load i32, i32* %16, align 4
  %332 = load i32, i32* %17, align 4
  %333 = load i32*, i32** %18, align 8
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @pci_emul_capwrite(%struct.pci_devinst* %330, i32 %331, i32 %332, i32 %334)
  br label %359

336:                                              ; preds = %324
  %337 = load i32, i32* %16, align 4
  %338 = load i32, i32* @PCIR_COMMAND, align 4
  %339 = icmp sge i32 %337, %338
  br i1 %339, label %340, label %351

340:                                              ; preds = %336
  %341 = load i32, i32* %16, align 4
  %342 = load i32, i32* @PCIR_REVID, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %351

344:                                              ; preds = %340
  %345 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %346 = load i32, i32* %16, align 4
  %347 = load i32*, i32** %18, align 8
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %17, align 4
  %350 = call i32 @pci_emul_cmdsts_write(%struct.pci_devinst* %345, i32 %346, i32 %348, i32 %349)
  br label %358

351:                                              ; preds = %340, %336
  %352 = load %struct.pci_devinst*, %struct.pci_devinst** %21, align 8
  %353 = load i32, i32* %16, align 4
  %354 = load i32*, i32** %18, align 8
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %17, align 4
  %357 = call i32 @CFGWRITE(%struct.pci_devinst* %352, i32 %353, i32 %355, i32 %356)
  br label %358

358:                                              ; preds = %351, %344
  br label %359

359:                                              ; preds = %358, %329
  br label %360

360:                                              ; preds = %359, %319
  br label %361

361:                                              ; preds = %73, %91, %149, %167, %360, %124
  ret void
}

declare dso_local i32 @CFGREAD(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_emul_hdrtype_fixup(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PCIR_BAR(i64) #1

declare dso_local i32 @update_bar_address(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_set_cfgdata32(%struct.pci_devinst*, i32, i32) #1

declare dso_local i64 @pci_emul_iscap(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_emul_capwrite(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @pci_emul_cmdsts_write(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @CFGWRITE(%struct.pci_devinst*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
