; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_alloc_qp_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_alloc_qp_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_pd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mthca_cq = type { i32 }
%struct.mthca_qp = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, i64, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i32 }
%struct.mthca_next_seg = type { i8*, i8* }
%struct.mthca_data_seg = type { i8* }

@IB_QPS_RESET = common dso_local global i32 0, align 4
@MTHCA_INVAL_LKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_cq*, %struct.mthca_cq*, i32, %struct.mthca_qp*)* @mthca_alloc_qp_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_alloc_qp_common(%struct.mthca_dev* %0, %struct.mthca_pd* %1, %struct.mthca_cq* %2, %struct.mthca_cq* %3, i32 %4, %struct.mthca_qp* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mthca_dev*, align 8
  %9 = alloca %struct.mthca_pd*, align 8
  %10 = alloca %struct.mthca_cq*, align 8
  %11 = alloca %struct.mthca_cq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mthca_qp*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mthca_next_seg*, align 8
  %17 = alloca %struct.mthca_data_seg*, align 8
  %18 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %8, align 8
  store %struct.mthca_pd* %1, %struct.mthca_pd** %9, align 8
  store %struct.mthca_cq* %2, %struct.mthca_cq** %10, align 8
  store %struct.mthca_cq* %3, %struct.mthca_cq** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.mthca_qp* %5, %struct.mthca_qp** %13, align 8
  %19 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %20 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %22 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %21, i32 0, i32 9
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %25 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %24, i32 0, i32 8
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load i32, i32* @IB_QPS_RESET, align 4
  %28 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %29 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %31 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %33 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %36 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %38 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %37, i32 0, i32 4
  %39 = call i32 @mthca_wq_reset(%struct.TYPE_4__* %38)
  %40 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %41 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %40, i32 0, i32 3
  %42 = call i32 @mthca_wq_reset(%struct.TYPE_4__* %41)
  %43 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %44 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %48 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %52 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %53 = call i32 @mthca_map_memfree(%struct.mthca_dev* %51, %struct.mthca_qp* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %6
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %7, align 4
  br label %261

58:                                               ; preds = %6
  %59 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %60 = load %struct.mthca_pd*, %struct.mthca_pd** %9, align 8
  %61 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %62 = call i32 @mthca_alloc_wqe_buf(%struct.mthca_dev* %59, %struct.mthca_pd* %60, %struct.mthca_qp* %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %67 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %68 = call i32 @mthca_unmap_memfree(%struct.mthca_dev* %66, %struct.mthca_qp* %67)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %7, align 4
  br label %261

70:                                               ; preds = %58
  %71 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %72 = load %struct.mthca_pd*, %struct.mthca_pd** %9, align 8
  %73 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %74 = call i32 @mthca_adjust_qp_caps(%struct.mthca_dev* %71, %struct.mthca_pd* %72, %struct.mthca_qp* %73)
  %75 = load %struct.mthca_pd*, %struct.mthca_pd** %9, align 8
  %76 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %261

81:                                               ; preds = %70
  %82 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %83 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %84 = call i32 @mthca_alloc_memfree(%struct.mthca_dev* %82, %struct.mthca_qp* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %89 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %90 = call i32 @mthca_free_wqe_buf(%struct.mthca_dev* %88, %struct.mthca_qp* %89)
  %91 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %92 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %93 = call i32 @mthca_unmap_memfree(%struct.mthca_dev* %91, %struct.mthca_qp* %92)
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %7, align 4
  br label %261

95:                                               ; preds = %81
  %96 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %97 = call i64 @mthca_is_memfree(%struct.mthca_dev* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %207

99:                                               ; preds = %95
  %100 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %101 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 8
  %106 = add i64 16, %105
  %107 = udiv i64 %106, 16
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %167, %99
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %112 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %110, %114
  br i1 %115, label %116, label %170

116:                                              ; preds = %109
  %117 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i8* @get_recv_wqe(%struct.mthca_qp* %117, i32 %118)
  %120 = bitcast i8* %119 to %struct.mthca_next_seg*
  store %struct.mthca_next_seg* %120, %struct.mthca_next_seg** %16, align 8
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  %123 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %124 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = and i32 %122, %127
  %129 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %130 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = shl i32 %128, %132
  %134 = call i8* @cpu_to_be32(i32 %133)
  %135 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %16, align 8
  %136 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %18, align 4
  %138 = call i8* @cpu_to_be32(i32 %137)
  %139 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %16, align 8
  %140 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %16, align 8
  %142 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %141, i64 1
  %143 = bitcast %struct.mthca_next_seg* %142 to i8*
  %144 = bitcast i8* %143 to %struct.mthca_data_seg*
  store %struct.mthca_data_seg* %144, %struct.mthca_data_seg** %17, align 8
  br label %145

145:                                              ; preds = %163, %116
  %146 = load %struct.mthca_data_seg*, %struct.mthca_data_seg** %17, align 8
  %147 = bitcast %struct.mthca_data_seg* %146 to i8*
  %148 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %16, align 8
  %149 = bitcast %struct.mthca_next_seg* %148 to i8*
  %150 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %151 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = shl i32 1, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr i8, i8* %149, i64 %155
  %157 = icmp ult i8* %147, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %145
  %159 = load i32, i32* @MTHCA_INVAL_LKEY, align 4
  %160 = call i8* @cpu_to_be32(i32 %159)
  %161 = load %struct.mthca_data_seg*, %struct.mthca_data_seg** %17, align 8
  %162 = getelementptr inbounds %struct.mthca_data_seg, %struct.mthca_data_seg* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %158
  %164 = load %struct.mthca_data_seg*, %struct.mthca_data_seg** %17, align 8
  %165 = getelementptr inbounds %struct.mthca_data_seg, %struct.mthca_data_seg* %164, i32 1
  store %struct.mthca_data_seg* %165, %struct.mthca_data_seg** %17, align 8
  br label %145

166:                                              ; preds = %145
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  br label %109

170:                                              ; preds = %109
  store i32 0, i32* %15, align 4
  br label %171

171:                                              ; preds = %203, %170
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %174 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %172, %176
  br i1 %177, label %178, label %206

178:                                              ; preds = %171
  %179 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %180 = load i32, i32* %15, align 4
  %181 = call i8* @get_send_wqe(%struct.mthca_qp* %179, i32 %180)
  %182 = bitcast i8* %181 to %struct.mthca_next_seg*
  store %struct.mthca_next_seg* %182, %struct.mthca_next_seg** %16, align 8
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  %185 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %186 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %188, 1
  %190 = and i32 %184, %189
  %191 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %192 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = shl i32 %190, %194
  %196 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %197 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %195, %198
  %200 = call i8* @cpu_to_be32(i32 %199)
  %201 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %16, align 8
  %202 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %178
  %204 = load i32, i32* %15, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %15, align 4
  br label %171

206:                                              ; preds = %171
  br label %240

207:                                              ; preds = %95
  store i32 0, i32* %15, align 4
  br label %208

208:                                              ; preds = %236, %207
  %209 = load i32, i32* %15, align 4
  %210 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %211 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %209, %213
  br i1 %214, label %215, label %239

215:                                              ; preds = %208
  %216 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %217 = load i32, i32* %15, align 4
  %218 = call i8* @get_recv_wqe(%struct.mthca_qp* %216, i32 %217)
  %219 = bitcast i8* %218 to %struct.mthca_next_seg*
  store %struct.mthca_next_seg* %219, %struct.mthca_next_seg** %16, align 8
  %220 = load i32, i32* %15, align 4
  %221 = add nsw i32 %220, 1
  %222 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %223 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = srem i32 %221, %225
  %227 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %228 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = shl i32 %226, %230
  %232 = or i32 %231, 1
  %233 = call i8* @htonl(i32 %232)
  %234 = load %struct.mthca_next_seg*, %struct.mthca_next_seg** %16, align 8
  %235 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %234, i32 0, i32 0
  store i8* %233, i8** %235, align 8
  br label %236

236:                                              ; preds = %215
  %237 = load i32, i32* %15, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %15, align 4
  br label %208

239:                                              ; preds = %208
  br label %240

240:                                              ; preds = %239, %206
  %241 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %242 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %243 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %245, 1
  %247 = call i8* @get_send_wqe(%struct.mthca_qp* %241, i32 %246)
  %248 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %249 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 3
  store i8* %247, i8** %250, align 8
  %251 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %252 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %253 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %255, 1
  %257 = call i8* @get_recv_wqe(%struct.mthca_qp* %251, i32 %256)
  %258 = load %struct.mthca_qp*, %struct.mthca_qp** %13, align 8
  %259 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 3
  store i8* %257, i8** %260, align 8
  store i32 0, i32* %7, align 4
  br label %261

261:                                              ; preds = %240, %87, %80, %65, %56
  %262 = load i32, i32* %7, align 4
  ret i32 %262
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mthca_wq_reset(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mthca_map_memfree(%struct.mthca_dev*, %struct.mthca_qp*) #1

declare dso_local i32 @mthca_alloc_wqe_buf(%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_qp*) #1

declare dso_local i32 @mthca_unmap_memfree(%struct.mthca_dev*, %struct.mthca_qp*) #1

declare dso_local i32 @mthca_adjust_qp_caps(%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_qp*) #1

declare dso_local i32 @mthca_alloc_memfree(%struct.mthca_dev*, %struct.mthca_qp*) #1

declare dso_local i32 @mthca_free_wqe_buf(%struct.mthca_dev*, %struct.mthca_qp*) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i8* @get_recv_wqe(%struct.mthca_qp*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @get_send_wqe(%struct.mthca_qp*, i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
