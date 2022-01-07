; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_sig_data_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_sig_data_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sig_handover_wr = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.ib_mr*, %struct.ib_sig_attrs* }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.ib_mr = type { i32 }
%struct.ib_sig_attrs = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mlx5_ib_qp = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.mlx5_bsf = type { i32 }
%struct.mlx5_klm = type { i8*, i8*, i8* }
%struct.mlx5_stride_block_ctrl_seg = type { i8*, i8*, i8*, i8* }
%struct.mlx5_stride_block_entry = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"Bad block size given: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_STRIDE_BLOCK_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sig_handover_wr*, %struct.mlx5_ib_qp*, i8**, i32*)* @set_sig_data_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sig_data_segment(%struct.ib_sig_handover_wr* %0, %struct.mlx5_ib_qp* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_sig_handover_wr*, align 8
  %7 = alloca %struct.mlx5_ib_qp*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ib_sig_attrs*, align 8
  %11 = alloca %struct.ib_mr*, align 8
  %12 = alloca %struct.mlx5_bsf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx5_klm*, align 8
  %19 = alloca %struct.mlx5_stride_block_ctrl_seg*, align 8
  %20 = alloca %struct.mlx5_stride_block_entry*, align 8
  %21 = alloca %struct.mlx5_stride_block_entry*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.ib_sig_handover_wr* %0, %struct.ib_sig_handover_wr** %6, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %26 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %26, i32 0, i32 3
  %28 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %27, align 8
  store %struct.ib_sig_attrs* %28, %struct.ib_sig_attrs** %10, align 8
  %29 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %6, align 8
  %30 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %29, i32 0, i32 2
  %31 = load %struct.ib_mr*, %struct.ib_mr** %30, align 8
  store %struct.ib_mr* %31, %struct.ib_mr** %11, align 8
  %32 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %6, align 8
  %45 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %15, align 8
  %50 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %6, align 8
  %51 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %78

54:                                               ; preds = %4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %55, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %54
  %63 = load i64, i64* %15, align 8
  %64 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %6, align 8
  %65 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %63, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %62
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %71, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %70, %4
  %79 = load i8**, i8*** %8, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = bitcast i8* %80 to %struct.mlx5_klm*
  store %struct.mlx5_klm* %81, %struct.mlx5_klm** %18, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i8* @cpu_to_be32(i32 %82)
  %84 = load %struct.mlx5_klm*, %struct.mlx5_klm** %18, align 8
  %85 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i8* @cpu_to_be32(i32 %86)
  %88 = load %struct.mlx5_klm*, %struct.mlx5_klm** %18, align 8
  %89 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i64, i64* %15, align 8
  %91 = call i8* @cpu_to_be64(i64 %90)
  %92 = load %struct.mlx5_klm*, %struct.mlx5_klm** %18, align 8
  %93 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = call i32 @ALIGN(i32 24, i32 64)
  store i32 %94, i32* %17, align 4
  br label %188

95:                                               ; preds = %70, %62, %54
  %96 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %6, align 8
  %97 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %22, align 4
  %101 = load %struct.ib_sig_handover_wr*, %struct.ib_sig_handover_wr** %6, align 8
  %102 = getelementptr inbounds %struct.ib_sig_handover_wr, %struct.ib_sig_handover_wr* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %23, align 8
  %106 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %10, align 8
  %107 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %24, align 4
  %112 = load i8**, i8*** %8, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = bitcast i8* %113 to %struct.mlx5_stride_block_ctrl_seg*
  store %struct.mlx5_stride_block_ctrl_seg* %114, %struct.mlx5_stride_block_ctrl_seg** %19, align 8
  %115 = load %struct.mlx5_stride_block_ctrl_seg*, %struct.mlx5_stride_block_ctrl_seg** %19, align 8
  %116 = bitcast %struct.mlx5_stride_block_ctrl_seg* %115 to i8*
  %117 = getelementptr i8, i8* %116, i64 32
  %118 = bitcast i8* %117 to %struct.mlx5_stride_block_entry*
  store %struct.mlx5_stride_block_entry* %118, %struct.mlx5_stride_block_entry** %20, align 8
  %119 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %20, align 8
  %120 = bitcast %struct.mlx5_stride_block_entry* %119 to i8*
  %121 = getelementptr i8, i8* %120, i64 32
  %122 = bitcast i8* %121 to %struct.mlx5_stride_block_entry*
  store %struct.mlx5_stride_block_entry* %122, %struct.mlx5_stride_block_entry** %21, align 8
  %123 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %10, align 8
  %124 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @prot_field_size(i32 %126)
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %25, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %95
  %131 = load i32, i32* %24, align 4
  %132 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %251

135:                                              ; preds = %95
  %136 = load i32, i32* %24, align 4
  %137 = load i32, i32* %25, align 4
  %138 = add nsw i32 %136, %137
  %139 = call i8* @cpu_to_be32(i32 %138)
  %140 = load %struct.mlx5_stride_block_ctrl_seg*, %struct.mlx5_stride_block_ctrl_seg** %19, align 8
  %141 = getelementptr inbounds %struct.mlx5_stride_block_ctrl_seg, %struct.mlx5_stride_block_ctrl_seg* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* @MLX5_STRIDE_BLOCK_OP, align 4
  %143 = call i8* @cpu_to_be32(i32 %142)
  %144 = load %struct.mlx5_stride_block_ctrl_seg*, %struct.mlx5_stride_block_ctrl_seg** %19, align 8
  %145 = getelementptr inbounds %struct.mlx5_stride_block_ctrl_seg, %struct.mlx5_stride_block_ctrl_seg* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %24, align 4
  %148 = sdiv i32 %146, %147
  %149 = call i8* @cpu_to_be32(i32 %148)
  %150 = load %struct.mlx5_stride_block_ctrl_seg*, %struct.mlx5_stride_block_ctrl_seg** %19, align 8
  %151 = getelementptr inbounds %struct.mlx5_stride_block_ctrl_seg, %struct.mlx5_stride_block_ctrl_seg* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = call i8* @cpu_to_be16(i32 2)
  %153 = load %struct.mlx5_stride_block_ctrl_seg*, %struct.mlx5_stride_block_ctrl_seg** %19, align 8
  %154 = getelementptr inbounds %struct.mlx5_stride_block_ctrl_seg, %struct.mlx5_stride_block_ctrl_seg* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %24, align 4
  %156 = call i8* @cpu_to_be16(i32 %155)
  %157 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %20, align 8
  %158 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* %14, align 4
  %160 = call i8* @cpu_to_be32(i32 %159)
  %161 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %20, align 8
  %162 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load i64, i64* %15, align 8
  %164 = call i8* @cpu_to_be64(i64 %163)
  %165 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %20, align 8
  %166 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %24, align 4
  %168 = call i8* @cpu_to_be16(i32 %167)
  %169 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %20, align 8
  %170 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* %25, align 4
  %172 = call i8* @cpu_to_be16(i32 %171)
  %173 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %21, align 8
  %174 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %173, i32 0, i32 3
  store i8* %172, i8** %174, align 8
  %175 = load i32, i32* %22, align 4
  %176 = call i8* @cpu_to_be32(i32 %175)
  %177 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %21, align 8
  %178 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  %179 = load i64, i64* %23, align 8
  %180 = call i8* @cpu_to_be64(i64 %179)
  %181 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %21, align 8
  %182 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %181, i32 0, i32 1
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* %25, align 4
  %184 = call i8* @cpu_to_be16(i32 %183)
  %185 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %21, align 8
  %186 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = call i32 @ALIGN(i32 96, i32 64)
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %135, %78
  %189 = load i32, i32* %17, align 4
  %190 = load i8**, i8*** %8, align 8
  %191 = load i8*, i8** %190, align 8
  %192 = sext i32 %189 to i64
  %193 = getelementptr i8, i8* %191, i64 %192
  store i8* %193, i8** %190, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sdiv i32 %194, 16
  %196 = load i32*, i32** %9, align 8
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %195
  store i32 %198, i32* %196, align 4
  %199 = load i8**, i8*** %8, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %202 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = icmp eq i8* %200, %204
  %206 = zext i1 %205 to i32
  %207 = call i64 @unlikely(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %188
  %210 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %211 = call i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp* %210, i32 0)
  %212 = load i8**, i8*** %8, align 8
  store i8* %211, i8** %212, align 8
  br label %213

213:                                              ; preds = %209, %188
  %214 = load i8**, i8*** %8, align 8
  %215 = load i8*, i8** %214, align 8
  %216 = bitcast i8* %215 to %struct.mlx5_bsf*
  store %struct.mlx5_bsf* %216, %struct.mlx5_bsf** %12, align 8
  %217 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %218 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %10, align 8
  %219 = load %struct.mlx5_bsf*, %struct.mlx5_bsf** %12, align 8
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @mlx5_set_bsf(%struct.ib_mr* %217, %struct.ib_sig_attrs* %218, %struct.mlx5_bsf* %219, i32 %220)
  store i32 %221, i32* %16, align 4
  %222 = load i32, i32* %16, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %213
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %5, align 4
  br label %251

227:                                              ; preds = %213
  %228 = load i8**, i8*** %8, align 8
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr i8, i8* %229, i64 4
  store i8* %230, i8** %228, align 8
  %231 = load i32*, i32** %9, align 8
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = add i64 %233, 0
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %231, align 4
  %236 = load i8**, i8*** %8, align 8
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %239 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = icmp eq i8* %237, %241
  %243 = zext i1 %242 to i32
  %244 = call i64 @unlikely(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %227
  %247 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %248 = call i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp* %247, i32 0)
  %249 = load i8**, i8*** %8, align 8
  store i8* %248, i8** %249, align 8
  br label %250

250:                                              ; preds = %246, %227
  store i32 0, i32* %5, align 4
  br label %251

251:                                              ; preds = %250, %224, %130
  %252 = load i32, i32* %5, align 4
  ret i32 %252
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @prot_field_size(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp*, i32) #1

declare dso_local i32 @mlx5_set_bsf(%struct.ib_mr*, %struct.ib_sig_attrs*, %struct.mlx5_bsf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
