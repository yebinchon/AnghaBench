; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32, i64, i32, i32, i64, i32, i64, i64, i64, i64, i64, %struct.hpt_iop_srb**, i64, i64, i32, i64, i64, i64, i64 }
%struct.hpt_iop_srb = type { i32, i64 }
%struct.ccb_setasync = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.ccb = type { i32 }

@XPT_SASYNC_CB = common dso_local global i32 0, align 4
@hptiop_async = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HPT_SRB_MAX_QUEUE_SIZE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpt_iop_hba*)* @hptiop_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_release_resource(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca %struct.hpt_iop_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccb_setasync, align 8
  %5 = alloca %struct.hpt_iop_srb*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %2, align 8
  %6 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %7 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %6, i32 0, i32 18
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %12 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %11, i32 0, i32 18
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @destroy_dev(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %17 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %16, i32 0, i32 17
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 3
  %22 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %23 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %22, i32 0, i32 17
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %21, i64 %24, i32 5)
  %26 = load i32, i32* @XPT_SASYNC_CB, align 4
  %27 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @hptiop_async, align 4
  %31 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %33 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %32, i32 0, i32 15
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %4, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = bitcast %struct.ccb_setasync* %4 to %union.ccb*
  %37 = call i32 @xpt_action(%union.ccb* %36)
  %38 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %39 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %38, i32 0, i32 17
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @xpt_free_path(i64 %40)
  br label %42

42:                                               ; preds = %20, %15
  %43 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %44 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %43, i32 0, i32 16
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %49 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %52 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %55 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %54, i32 0, i32 16
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @bus_teardown_intr(i32 %50, i64 %53, i64 %56)
  br label %58

58:                                               ; preds = %47, %42
  %59 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %60 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %59, i32 0, i32 15
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %65 = call i32 @hptiop_lock_adapter(%struct.hpt_iop_hba* %64)
  %66 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %67 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %66, i32 0, i32 15
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @cam_sim_path(i64 %68)
  %70 = call i32 @xpt_bus_deregister(i32 %69)
  %71 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %72 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %71, i32 0, i32 15
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @cam_sim_free(i64 %73, i32 %74)
  %76 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %77 = call i32 @hptiop_unlock_adapter(%struct.hpt_iop_hba* %76)
  br label %78

78:                                               ; preds = %63, %58
  %79 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %80 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %79, i32 0, i32 12
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %78
  %84 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %85 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %84, i32 0, i32 12
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %88 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %87, i32 0, i32 13
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @bus_dmamap_unload(i64 %86, i64 %89)
  %91 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %92 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %91, i32 0, i32 12
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %95 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %94, i32 0, i32 14
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %98 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %97, i32 0, i32 13
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @bus_dmamem_free(i64 %93, i32 %96, i64 %99)
  %101 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %102 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %101, i32 0, i32 12
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @bus_dma_tag_destroy(i64 %103)
  br label %105

105:                                              ; preds = %83, %78
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %134, %105
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @HPT_SRB_MAX_QUEUE_SIZE, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %137

110:                                              ; preds = %106
  %111 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %112 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %111, i32 0, i32 11
  %113 = load %struct.hpt_iop_srb**, %struct.hpt_iop_srb*** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %113, i64 %115
  %117 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %116, align 8
  store %struct.hpt_iop_srb* %117, %struct.hpt_iop_srb** %5, align 8
  %118 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %5, align 8
  %119 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %110
  %123 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %124 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %123, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %5, align 8
  %127 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @bus_dmamap_destroy(i64 %125, i64 %128)
  br label %130

130:                                              ; preds = %122, %110
  %131 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %5, align 8
  %132 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %131, i32 0, i32 0
  %133 = call i32 @callout_drain(i32* %132)
  br label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %106

137:                                              ; preds = %106
  %138 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %139 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %138, i32 0, i32 9
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %137
  %143 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %144 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %147 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %146, i32 0, i32 10
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @bus_dmamap_unload(i64 %145, i64 %148)
  %150 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %151 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %150, i32 0, i32 9
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %154 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %153, i32 0, i32 10
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @bus_dmamap_destroy(i64 %152, i64 %155)
  %157 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %158 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %157, i32 0, i32 9
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @bus_dma_tag_destroy(i64 %159)
  br label %161

161:                                              ; preds = %142, %137
  %162 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %163 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %162, i32 0, i32 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %168 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %167, i32 0, i32 8
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @bus_dma_tag_destroy(i64 %169)
  br label %171

171:                                              ; preds = %166, %161
  %172 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %173 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %172, i32 0, i32 7
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %178 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %177, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @bus_dma_tag_destroy(i64 %179)
  br label %181

181:                                              ; preds = %176, %171
  %182 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %183 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %182, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %188 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @SYS_RES_IRQ, align 4
  %191 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %192 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @bus_release_resource(i32 %189, i32 %190, i32 0, i64 %193)
  br label %195

195:                                              ; preds = %186, %181
  %196 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %197 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %195
  %201 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %202 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SYS_RES_MEMORY, align 4
  %205 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %206 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %209 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @bus_release_resource(i32 %203, i32 %204, i32 %207, i64 %210)
  br label %212

212:                                              ; preds = %200, %195
  %213 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %214 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %212
  %218 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %219 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @SYS_RES_MEMORY, align 4
  %222 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %223 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %226 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @bus_release_resource(i32 %220, i32 %221, i32 %224, i64 %227)
  br label %229

229:                                              ; preds = %217, %212
  %230 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %231 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %230, i32 0, i32 0
  %232 = call i32 @mtx_destroy(i32* %231)
  ret void
}

declare dso_local i32 @destroy_dev(i64) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, i64, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_free_path(i64) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @hptiop_lock_adapter(%struct.hpt_iop_hba*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i64) #1

declare dso_local i32 @cam_sim_free(i64, i32) #1

declare dso_local i32 @hptiop_unlock_adapter(%struct.hpt_iop_hba*) #1

declare dso_local i32 @bus_dmamap_unload(i64, i64) #1

declare dso_local i32 @bus_dmamem_free(i64, i32, i64) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_dmamap_destroy(i64, i64) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
