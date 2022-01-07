; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_apkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_apkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ATA_PDC_1B = common dso_local global i32 0, align 4
@ATA_PDC_WRITE_REG = common dso_local global i32 0, align 4
@ATA_PDC_WAIT_NBUSY = common dso_local global i32 0, align 4
@ATA_DRIVE = common dso_local global i32 0, align 4
@ATA_D_IBM = common dso_local global i32 0, align 4
@ATA_D_LBA = common dso_local global i32 0, align 4
@ATA_PDC_WRITE_CTL = common dso_local global i32 0, align 4
@ATA_A_4BIT = common dso_local global i32 0, align 4
@ATA_R_48BIT = common dso_local global i32 0, align 4
@ATA_PDC_2B = common dso_local global i32 0, align 4
@ATA_FEATURE = common dso_local global i32 0, align 4
@ATA_COUNT = common dso_local global i32 0, align 4
@ATA_SECTOR = common dso_local global i32 0, align 4
@ATA_CYL_LSB = common dso_local global i32 0, align 4
@ATA_CYL_MSB = common dso_local global i32 0, align 4
@ATA_PDC_WRITE_END = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ata_request*)* @ata_promise_apkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_promise_apkt(i32* %0, %struct.ata_request* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ata_request*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ata_request* %1, %struct.ata_request** %4, align 8
  store i32 12, i32* %5, align 4
  %6 = load i32, i32* @ATA_PDC_1B, align 4
  %7 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @ATA_PDC_WAIT_NBUSY, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ATA_DRIVE, align 4
  %12 = or i32 %10, %11
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32 %12, i32* %17, align 4
  %18 = load i32, i32* @ATA_D_IBM, align 4
  %19 = load i32, i32* @ATA_D_LBA, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %22 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ATA_DEV(i32 %23)
  %25 = or i32 %20, %24
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* @ATA_PDC_1B, align 4
  %32 = load i32, i32* @ATA_PDC_WRITE_CTL, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* @ATA_A_4BIT, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %46 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ATA_R_48BIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %230

51:                                               ; preds = %2
  %52 = load i32, i32* @ATA_PDC_2B, align 4
  %53 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ATA_FEATURE, align 4
  %56 = or i32 %54, %55
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %63 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 8
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %74 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* @ATA_PDC_2B, align 4
  %84 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @ATA_COUNT, align 4
  %87 = or i32 %85, %86
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %94 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 8
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %98, i32* %103, align 4
  %104 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %105 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %108, i32* %113, align 4
  %114 = load i32, i32* @ATA_PDC_2B, align 4
  %115 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @ATA_SECTOR, align 4
  %118 = or i32 %116, %117
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %118, i32* %123, align 4
  %124 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %125 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 24
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32 %129, i32* %134, align 4
  %135 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %136 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = load i32, i32* @ATA_PDC_2B, align 4
  %146 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @ATA_CYL_LSB, align 4
  %149 = or i32 %147, %148
  %150 = load i32*, i32** %3, align 8
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %149, i32* %154, align 4
  %155 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %156 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 32
  %161 = load i32*, i32** %3, align 8
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 %160, i32* %165, align 4
  %166 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %167 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = ashr i32 %170, 8
  %172 = load i32*, i32** %3, align 8
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %5, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load i32, i32* @ATA_PDC_2B, align 4
  %178 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @ATA_CYL_MSB, align 4
  %181 = or i32 %179, %180
  %182 = load i32*, i32** %3, align 8
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  store i32 %181, i32* %186, align 4
  %187 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %188 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = ashr i32 %191, 40
  %193 = load i32*, i32** %3, align 8
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store i32 %192, i32* %197, align 4
  %198 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %199 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 16
  %204 = load i32*, i32** %3, align 8
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %5, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  store i32 %203, i32* %208, align 4
  %209 = load i32, i32* @ATA_PDC_1B, align 4
  %210 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @ATA_DRIVE, align 4
  %213 = or i32 %211, %212
  %214 = load i32*, i32** %3, align 8
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %5, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %213, i32* %218, align 4
  %219 = load i32, i32* @ATA_D_LBA, align 4
  %220 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %221 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @ATA_DEV(i32 %222)
  %224 = or i32 %219, %223
  %225 = load i32*, i32** %3, align 8
  %226 = load i32, i32* %5, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %5, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  store i32 %224, i32* %229, align 4
  br label %364

230:                                              ; preds = %2
  %231 = load i32, i32* @ATA_PDC_1B, align 4
  %232 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @ATA_FEATURE, align 4
  %235 = or i32 %233, %234
  %236 = load i32*, i32** %3, align 8
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %5, align 4
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32 %235, i32* %240, align 4
  %241 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %242 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %3, align 8
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %5, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  store i32 %245, i32* %250, align 4
  %251 = load i32, i32* @ATA_PDC_1B, align 4
  %252 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @ATA_COUNT, align 4
  %255 = or i32 %253, %254
  %256 = load i32*, i32** %3, align 8
  %257 = load i32, i32* %5, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %5, align 4
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  store i32 %255, i32* %260, align 4
  %261 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %262 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %3, align 8
  %267 = load i32, i32* %5, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %5, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  store i32 %265, i32* %270, align 4
  %271 = load i32, i32* @ATA_PDC_1B, align 4
  %272 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* @ATA_SECTOR, align 4
  %275 = or i32 %273, %274
  %276 = load i32*, i32** %3, align 8
  %277 = load i32, i32* %5, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %5, align 4
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  store i32 %275, i32* %280, align 4
  %281 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %282 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** %3, align 8
  %287 = load i32, i32* %5, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %5, align 4
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  store i32 %285, i32* %290, align 4
  %291 = load i32, i32* @ATA_PDC_1B, align 4
  %292 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %293 = or i32 %291, %292
  %294 = load i32, i32* @ATA_CYL_LSB, align 4
  %295 = or i32 %293, %294
  %296 = load i32*, i32** %3, align 8
  %297 = load i32, i32* %5, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %5, align 4
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  store i32 %295, i32* %300, align 4
  %301 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %302 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = ashr i32 %305, 8
  %307 = load i32*, i32** %3, align 8
  %308 = load i32, i32* %5, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %5, align 4
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  store i32 %306, i32* %311, align 4
  %312 = load i32, i32* @ATA_PDC_1B, align 4
  %313 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* @ATA_CYL_MSB, align 4
  %316 = or i32 %314, %315
  %317 = load i32*, i32** %3, align 8
  %318 = load i32, i32* %5, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %5, align 4
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  store i32 %316, i32* %321, align 4
  %322 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %323 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = ashr i32 %326, 16
  %328 = load i32*, i32** %3, align 8
  %329 = load i32, i32* %5, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %5, align 4
  %331 = sext i32 %329 to i64
  %332 = getelementptr inbounds i32, i32* %328, i64 %331
  store i32 %327, i32* %332, align 4
  %333 = load i32, i32* @ATA_PDC_1B, align 4
  %334 = load i32, i32* @ATA_PDC_WRITE_REG, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @ATA_DRIVE, align 4
  %337 = or i32 %335, %336
  %338 = load i32*, i32** %3, align 8
  %339 = load i32, i32* %5, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %5, align 4
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  store i32 %337, i32* %342, align 4
  %343 = load i32, i32* @ATA_D_LBA, align 4
  %344 = load i32, i32* @ATA_D_IBM, align 4
  %345 = or i32 %343, %344
  %346 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %347 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @ATA_DEV(i32 %348)
  %350 = or i32 %345, %349
  %351 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %352 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 4
  %356 = ashr i32 %355, 24
  %357 = and i32 %356, 15
  %358 = or i32 %350, %357
  %359 = load i32*, i32** %3, align 8
  %360 = load i32, i32* %5, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %5, align 4
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i32, i32* %359, i64 %362
  store i32 %358, i32* %363, align 4
  br label %364

364:                                              ; preds = %230, %51
  %365 = load i32, i32* @ATA_PDC_1B, align 4
  %366 = load i32, i32* @ATA_PDC_WRITE_END, align 4
  %367 = or i32 %365, %366
  %368 = load i32, i32* @ATA_COMMAND, align 4
  %369 = or i32 %367, %368
  %370 = load i32*, i32** %3, align 8
  %371 = load i32, i32* %5, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %5, align 4
  %373 = sext i32 %371 to i64
  %374 = getelementptr inbounds i32, i32* %370, i64 %373
  store i32 %369, i32* %374, align 4
  %375 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %376 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = load i32*, i32** %3, align 8
  %381 = load i32, i32* %5, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %5, align 4
  %383 = sext i32 %381 to i64
  %384 = getelementptr inbounds i32, i32* %380, i64 %383
  store i32 %379, i32* %384, align 4
  %385 = load i32, i32* %5, align 4
  ret i32 %385
}

declare dso_local i32 @ATA_DEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
