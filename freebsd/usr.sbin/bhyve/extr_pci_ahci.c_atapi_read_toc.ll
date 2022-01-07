; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_atapi_read_toc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_atapi_read_toc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32 }

@ATA_SENSE_ILLEGAL_REQUEST = common dso_local global i8* null, align 8
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@ATA_I_CMD = common dso_local global i32 0, align 4
@ATA_I_IN = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @atapi_read_toc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_read_toc(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [20 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [12 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca [50 x i32], align 16
  %23 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 64
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 7
  %28 = call i32 @be16dec(i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 9
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 6
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %397 [
    i32 0, label %34
    i32 1, label %192
    i32 2, label %226
  ]

34:                                               ; preds = %3
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 1
  %39 = and i32 %38, 1
  store i32 %39, i32* %10, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %78

45:                                               ; preds = %34
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 170
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = load i8*, i8** @ATA_SENSE_ILLEGAL_REQUEST, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %52 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %54 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %53, i32 0, i32 1
  store i32 36, i32* %54, align 4
  %55 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %56 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 12
  %59 = load i32, i32* @ATA_S_READY, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ATA_S_ERROR, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %16, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, -8
  %67 = load i32, i32* @ATA_I_CMD, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ATA_I_IN, align 4
  %70 = or i32 %68, %69
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %73, i32 %74, i32* %75, i32 %76)
  br label %427

78:                                               ; preds = %45, %34
  %79 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32* %80, i32** %15, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %15, align 8
  store i32 1, i32* %81, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %15, align 8
  store i32 1, i32* %83, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp sle i32 %85, 1
  br i1 %86, label %87, label %115

87:                                               ; preds = %78
  %88 = load i32*, i32** %15, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %15, align 8
  store i32 0, i32* %88, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %15, align 8
  store i32 20, i32* %90, align 4
  %92 = load i32*, i32** %15, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %15, align 8
  store i32 1, i32* %92, align 4
  %94 = load i32*, i32** %15, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %15, align 8
  store i32 0, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %87
  %99 = load i32*, i32** %15, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %15, align 8
  store i32 0, i32* %99, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = call i32 @lba_to_msf(i32* %101, i32 0)
  %103 = load i32*, i32** %15, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32* %104, i32** %15, align 8
  br label %114

105:                                              ; preds = %87
  %106 = load i32*, i32** %15, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %15, align 8
  store i32 0, i32* %106, align 4
  %108 = load i32*, i32** %15, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %15, align 8
  store i32 0, i32* %108, align 4
  %110 = load i32*, i32** %15, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %15, align 8
  store i32 0, i32* %110, align 4
  %112 = load i32*, i32** %15, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %15, align 8
  store i32 0, i32* %112, align 4
  br label %114

114:                                              ; preds = %105, %98
  br label %115

115:                                              ; preds = %114, %78
  %116 = load i32*, i32** %15, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %15, align 8
  store i32 0, i32* %116, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %15, align 8
  store i32 20, i32* %118, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %15, align 8
  store i32 170, i32* %120, align 4
  %122 = load i32*, i32** %15, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %15, align 8
  store i32 0, i32* %122, align 4
  %124 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %125 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @blockif_size(i32 %126)
  %128 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %129 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @blockif_sectsz(i32 %130)
  %132 = sdiv i32 %127, %131
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = ashr i32 %133, 2
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %115
  %138 = load i32*, i32** %15, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %15, align 8
  store i32 0, i32* %138, align 4
  %140 = load i32*, i32** %15, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @lba_to_msf(i32* %140, i32 %141)
  %143 = load i32*, i32** %15, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  store i32* %144, i32** %15, align 8
  br label %151

145:                                              ; preds = %115
  %146 = load i32*, i32** %15, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @be32enc(i32* %146, i32 %147)
  %149 = load i32*, i32** %15, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  store i32* %150, i32** %15, align 8
  br label %151

151:                                              ; preds = %145, %137
  %152 = load i32*, i32** %15, align 8
  %153 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %154 = ptrtoint i32* %152 to i64
  %155 = ptrtoint i32* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 4
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %11, align 4
  %159 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %160 = load i32, i32* %11, align 4
  %161 = sub nsw i32 %160, 2
  %162 = call i32 @be16enc(i32* %159, i32 %161)
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %151
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %166, %151
  %169 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @write_prdt(%struct.ahci_port* %169, i32 %170, i32* %171, i32* %172, i32 %173)
  %175 = load i32*, i32** %6, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, -8
  %179 = load i32, i32* @ATA_I_CMD, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @ATA_I_IN, align 4
  %182 = or i32 %180, %181
  %183 = load i32*, i32** %6, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  store i32 %182, i32* %184, align 4
  %185 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %186 = load i32, i32* %5, align 4
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* @ATA_S_READY, align 4
  %189 = load i32, i32* @ATA_S_DSC, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %185, i32 %186, i32* %187, i32 %190)
  br label %427

192:                                              ; preds = %3
  %193 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 0
  %194 = call i32 @memset(i32* %193, i32 0, i32 48)
  %195 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 1
  store i32 10, i32* %195, align 4
  %196 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 2
  store i32 1, i32* %196, align 8
  %197 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 3
  store i32 1, i32* %197, align 4
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = icmp ugt i64 %199, 48
  br i1 %200, label %201, label %202

201:                                              ; preds = %192
  store i32 48, i32* %9, align 4
  br label %202

202:                                              ; preds = %201, %192
  %203 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load i32*, i32** %6, align 8
  %206 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 0
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @write_prdt(%struct.ahci_port* %203, i32 %204, i32* %205, i32* %206, i32 %207)
  %209 = load i32*, i32** %6, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, -8
  %213 = load i32, i32* @ATA_I_CMD, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @ATA_I_IN, align 4
  %216 = or i32 %214, %215
  %217 = load i32*, i32** %6, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 4
  store i32 %216, i32* %218, align 4
  %219 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* @ATA_S_READY, align 4
  %223 = load i32, i32* @ATA_S_DSC, align 4
  %224 = or i32 %222, %223
  %225 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %219, i32 %220, i32* %221, i32 %224)
  br label %427

226:                                              ; preds = %3
  %227 = load i32*, i32** %7, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = ashr i32 %229, 1
  %231 = and i32 %230, 1
  store i32 %231, i32* %18, align 4
  %232 = getelementptr inbounds [50 x i32], [50 x i32]* %22, i64 0, i64 0
  %233 = getelementptr inbounds i32, i32* %232, i64 2
  store i32* %233, i32** %21, align 8
  %234 = load i32*, i32** %21, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %21, align 8
  store i32 1, i32* %234, align 4
  %236 = load i32*, i32** %21, align 8
  %237 = getelementptr inbounds i32, i32* %236, i32 1
  store i32* %237, i32** %21, align 8
  store i32 1, i32* %236, align 4
  %238 = load i32*, i32** %21, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %21, align 8
  store i32 1, i32* %238, align 4
  %240 = load i32*, i32** %21, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %21, align 8
  store i32 20, i32* %240, align 4
  %242 = load i32*, i32** %21, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %21, align 8
  store i32 0, i32* %242, align 4
  %244 = load i32*, i32** %21, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %245, i32** %21, align 8
  store i32 160, i32* %244, align 4
  %246 = load i32*, i32** %21, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 1
  store i32* %247, i32** %21, align 8
  store i32 0, i32* %246, align 4
  %248 = load i32*, i32** %21, align 8
  %249 = getelementptr inbounds i32, i32* %248, i32 1
  store i32* %249, i32** %21, align 8
  store i32 0, i32* %248, align 4
  %250 = load i32*, i32** %21, align 8
  %251 = getelementptr inbounds i32, i32* %250, i32 1
  store i32* %251, i32** %21, align 8
  store i32 0, i32* %250, align 4
  %252 = load i32*, i32** %21, align 8
  %253 = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %253, i32** %21, align 8
  store i32 0, i32* %252, align 4
  %254 = load i32*, i32** %21, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** %21, align 8
  store i32 1, i32* %254, align 4
  %256 = load i32*, i32** %21, align 8
  %257 = getelementptr inbounds i32, i32* %256, i32 1
  store i32* %257, i32** %21, align 8
  store i32 0, i32* %256, align 4
  %258 = load i32*, i32** %21, align 8
  %259 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %259, i32** %21, align 8
  store i32 0, i32* %258, align 4
  %260 = load i32*, i32** %21, align 8
  %261 = getelementptr inbounds i32, i32* %260, i32 1
  store i32* %261, i32** %21, align 8
  store i32 1, i32* %260, align 4
  %262 = load i32*, i32** %21, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %21, align 8
  store i32 20, i32* %262, align 4
  %264 = load i32*, i32** %21, align 8
  %265 = getelementptr inbounds i32, i32* %264, i32 1
  store i32* %265, i32** %21, align 8
  store i32 0, i32* %264, align 4
  %266 = load i32*, i32** %21, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %267, i32** %21, align 8
  store i32 161, i32* %266, align 4
  %268 = load i32*, i32** %21, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %21, align 8
  store i32 0, i32* %268, align 4
  %270 = load i32*, i32** %21, align 8
  %271 = getelementptr inbounds i32, i32* %270, i32 1
  store i32* %271, i32** %21, align 8
  store i32 0, i32* %270, align 4
  %272 = load i32*, i32** %21, align 8
  %273 = getelementptr inbounds i32, i32* %272, i32 1
  store i32* %273, i32** %21, align 8
  store i32 0, i32* %272, align 4
  %274 = load i32*, i32** %21, align 8
  %275 = getelementptr inbounds i32, i32* %274, i32 1
  store i32* %275, i32** %21, align 8
  store i32 0, i32* %274, align 4
  %276 = load i32*, i32** %21, align 8
  %277 = getelementptr inbounds i32, i32* %276, i32 1
  store i32* %277, i32** %21, align 8
  store i32 1, i32* %276, align 4
  %278 = load i32*, i32** %21, align 8
  %279 = getelementptr inbounds i32, i32* %278, i32 1
  store i32* %279, i32** %21, align 8
  store i32 0, i32* %278, align 4
  %280 = load i32*, i32** %21, align 8
  %281 = getelementptr inbounds i32, i32* %280, i32 1
  store i32* %281, i32** %21, align 8
  store i32 0, i32* %280, align 4
  %282 = load i32*, i32** %21, align 8
  %283 = getelementptr inbounds i32, i32* %282, i32 1
  store i32* %283, i32** %21, align 8
  store i32 1, i32* %282, align 4
  %284 = load i32*, i32** %21, align 8
  %285 = getelementptr inbounds i32, i32* %284, i32 1
  store i32* %285, i32** %21, align 8
  store i32 20, i32* %284, align 4
  %286 = load i32*, i32** %21, align 8
  %287 = getelementptr inbounds i32, i32* %286, i32 1
  store i32* %287, i32** %21, align 8
  store i32 0, i32* %286, align 4
  %288 = load i32*, i32** %21, align 8
  %289 = getelementptr inbounds i32, i32* %288, i32 1
  store i32* %289, i32** %21, align 8
  store i32 162, i32* %288, align 4
  %290 = load i32*, i32** %21, align 8
  %291 = getelementptr inbounds i32, i32* %290, i32 1
  store i32* %291, i32** %21, align 8
  store i32 0, i32* %290, align 4
  %292 = load i32*, i32** %21, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %21, align 8
  store i32 0, i32* %292, align 4
  %294 = load i32*, i32** %21, align 8
  %295 = getelementptr inbounds i32, i32* %294, i32 1
  store i32* %295, i32** %21, align 8
  store i32 0, i32* %294, align 4
  %296 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %297 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @blockif_size(i32 %298)
  %300 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %301 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @blockif_sectsz(i32 %302)
  %304 = sdiv i32 %299, %303
  store i32 %304, i32* %20, align 4
  %305 = load i32, i32* %20, align 4
  %306 = ashr i32 %305, 2
  store i32 %306, i32* %20, align 4
  %307 = load i32, i32* %18, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %226
  %310 = load i32*, i32** %21, align 8
  %311 = getelementptr inbounds i32, i32* %310, i32 1
  store i32* %311, i32** %21, align 8
  store i32 0, i32* %310, align 4
  %312 = load i32*, i32** %21, align 8
  %313 = load i32, i32* %20, align 4
  %314 = call i32 @lba_to_msf(i32* %312, i32 %313)
  %315 = load i32*, i32** %21, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 3
  store i32* %316, i32** %21, align 8
  br label %323

317:                                              ; preds = %226
  %318 = load i32*, i32** %21, align 8
  %319 = load i32, i32* %20, align 4
  %320 = call i32 @be32enc(i32* %318, i32 %319)
  %321 = load i32*, i32** %21, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 4
  store i32* %322, i32** %21, align 8
  br label %323

323:                                              ; preds = %317, %309
  %324 = load i32*, i32** %21, align 8
  %325 = getelementptr inbounds i32, i32* %324, i32 1
  store i32* %325, i32** %21, align 8
  store i32 1, i32* %324, align 4
  %326 = load i32*, i32** %21, align 8
  %327 = getelementptr inbounds i32, i32* %326, i32 1
  store i32* %327, i32** %21, align 8
  store i32 20, i32* %326, align 4
  %328 = load i32*, i32** %21, align 8
  %329 = getelementptr inbounds i32, i32* %328, i32 1
  store i32* %329, i32** %21, align 8
  store i32 0, i32* %328, align 4
  %330 = load i32*, i32** %21, align 8
  %331 = getelementptr inbounds i32, i32* %330, i32 1
  store i32* %331, i32** %21, align 8
  store i32 1, i32* %330, align 4
  %332 = load i32*, i32** %21, align 8
  %333 = getelementptr inbounds i32, i32* %332, i32 1
  store i32* %333, i32** %21, align 8
  store i32 0, i32* %332, align 4
  %334 = load i32*, i32** %21, align 8
  %335 = getelementptr inbounds i32, i32* %334, i32 1
  store i32* %335, i32** %21, align 8
  store i32 0, i32* %334, align 4
  %336 = load i32*, i32** %21, align 8
  %337 = getelementptr inbounds i32, i32* %336, i32 1
  store i32* %337, i32** %21, align 8
  store i32 0, i32* %336, align 4
  %338 = load i32, i32* %18, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %347

340:                                              ; preds = %323
  %341 = load i32*, i32** %21, align 8
  %342 = getelementptr inbounds i32, i32* %341, i32 1
  store i32* %342, i32** %21, align 8
  store i32 0, i32* %341, align 4
  %343 = load i32*, i32** %21, align 8
  %344 = call i32 @lba_to_msf(i32* %343, i32 0)
  %345 = load i32*, i32** %21, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 3
  store i32* %346, i32** %21, align 8
  br label %356

347:                                              ; preds = %323
  %348 = load i32*, i32** %21, align 8
  %349 = getelementptr inbounds i32, i32* %348, i32 1
  store i32* %349, i32** %21, align 8
  store i32 0, i32* %348, align 4
  %350 = load i32*, i32** %21, align 8
  %351 = getelementptr inbounds i32, i32* %350, i32 1
  store i32* %351, i32** %21, align 8
  store i32 0, i32* %350, align 4
  %352 = load i32*, i32** %21, align 8
  %353 = getelementptr inbounds i32, i32* %352, i32 1
  store i32* %353, i32** %21, align 8
  store i32 0, i32* %352, align 4
  %354 = load i32*, i32** %21, align 8
  %355 = getelementptr inbounds i32, i32* %354, i32 1
  store i32* %355, i32** %21, align 8
  store i32 0, i32* %354, align 4
  br label %356

356:                                              ; preds = %347, %340
  %357 = load i32*, i32** %21, align 8
  %358 = getelementptr inbounds [50 x i32], [50 x i32]* %22, i64 0, i64 0
  %359 = ptrtoint i32* %357 to i64
  %360 = ptrtoint i32* %358 to i64
  %361 = sub i64 %359, %360
  %362 = sdiv exact i64 %361, 4
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %19, align 4
  %364 = getelementptr inbounds [50 x i32], [50 x i32]* %22, i64 0, i64 0
  %365 = load i32, i32* %19, align 4
  %366 = sub nsw i32 %365, 2
  %367 = call i32 @be16enc(i32* %364, i32 %366)
  %368 = load i32, i32* %9, align 4
  %369 = load i32, i32* %19, align 4
  %370 = icmp sgt i32 %368, %369
  br i1 %370, label %371, label %373

371:                                              ; preds = %356
  %372 = load i32, i32* %19, align 4
  store i32 %372, i32* %9, align 4
  br label %373

373:                                              ; preds = %371, %356
  %374 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %375 = load i32, i32* %5, align 4
  %376 = load i32*, i32** %6, align 8
  %377 = getelementptr inbounds [50 x i32], [50 x i32]* %22, i64 0, i64 0
  %378 = load i32, i32* %9, align 4
  %379 = call i32 @write_prdt(%struct.ahci_port* %374, i32 %375, i32* %376, i32* %377, i32 %378)
  %380 = load i32*, i32** %6, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 4
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, -8
  %384 = load i32, i32* @ATA_I_CMD, align 4
  %385 = or i32 %383, %384
  %386 = load i32, i32* @ATA_I_IN, align 4
  %387 = or i32 %385, %386
  %388 = load i32*, i32** %6, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 4
  store i32 %387, i32* %389, align 4
  %390 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %391 = load i32, i32* %5, align 4
  %392 = load i32*, i32** %6, align 8
  %393 = load i32, i32* @ATA_S_READY, align 4
  %394 = load i32, i32* @ATA_S_DSC, align 4
  %395 = or i32 %393, %394
  %396 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %390, i32 %391, i32* %392, i32 %395)
  br label %427

397:                                              ; preds = %3
  %398 = load i8*, i8** @ATA_SENSE_ILLEGAL_REQUEST, align 8
  %399 = ptrtoint i8* %398 to i32
  %400 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %401 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 4
  %402 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %403 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %402, i32 0, i32 1
  store i32 36, i32* %403, align 4
  %404 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %405 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = shl i32 %406, 12
  %408 = load i32, i32* @ATA_S_READY, align 4
  %409 = or i32 %407, %408
  %410 = load i32, i32* @ATA_S_ERROR, align 4
  %411 = or i32 %409, %410
  store i32 %411, i32* %23, align 4
  %412 = load i32*, i32** %6, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 4
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %414, -8
  %416 = load i32, i32* @ATA_I_CMD, align 4
  %417 = or i32 %415, %416
  %418 = load i32, i32* @ATA_I_IN, align 4
  %419 = or i32 %417, %418
  %420 = load i32*, i32** %6, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 4
  store i32 %419, i32* %421, align 4
  %422 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %423 = load i32, i32* %5, align 4
  %424 = load i32*, i32** %6, align 8
  %425 = load i32, i32* %23, align 4
  %426 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %422, i32 %423, i32* %424, i32 %425)
  br label %427

427:                                              ; preds = %48, %397, %373, %202, %168
  ret void
}

declare dso_local i32 @be16dec(i32*) #1

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @lba_to_msf(i32*, i32) #1

declare dso_local i32 @blockif_size(i32) #1

declare dso_local i32 @blockif_sectsz(i32) #1

declare dso_local i32 @be32enc(i32*, i32) #1

declare dso_local i32 @be16enc(i32*, i32) #1

declare dso_local i32 @write_prdt(%struct.ahci_port*, i32, i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
