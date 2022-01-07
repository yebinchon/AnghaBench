; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_xfer.c_exec_more.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_xfer.c_exec_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfer_state = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.xfer_transaction = type { %struct.TYPE_6__, %struct.xfer_state* }
%struct.TYPE_6__ = type { i64, i32*, i32, %struct.TYPE_4__*, i32, i64 }

@MLX5_FPGA_TRANSACTION_SEND_PAGE_BITS = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_FPGA_TRANSACTION_MAX_SIZE = common dso_local global i64 0, align 8
@trans_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Starting %zu bytes at %p done; %u started %u inflight %u done %u error\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"Transfer failed to start transaction: %d. %u started %u done %u error\0A\00", align 1
@IB_WC_GENERAL_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfer_state*)* @exec_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_more(%struct.xfer_state* %0) #0 {
  %2 = alloca %struct.xfer_state*, align 8
  %3 = alloca %struct.xfer_transaction*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.xfer_state* %0, %struct.xfer_state** %2, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %12 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %11, i32 0, i32 7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @mlx5_fpga_ddr_base_get(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %20 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %19, i32 0, i32 7
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %25 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load i64, i64* %8, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @MLX5_FPGA_TRANSACTION_SEND_PAGE_BITS, align 4
  %33 = shl i32 1, %32
  %34 = sext i32 %33 to i64
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i64 [ 4, %30 ], [ %34, %31 ]
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %237, %35
  %38 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %39 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IB_WC_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %241

46:                                               ; preds = %37
  %47 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %48 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %47, i32 0, i32 7
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %53 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %51, %54
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %241

59:                                               ; preds = %46
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call %struct.xfer_transaction* @kzalloc(i32 56, i32 %60)
  store %struct.xfer_transaction* %61, %struct.xfer_transaction** %3, align 8
  %62 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %63 = icmp ne %struct.xfer_transaction* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %241

67:                                               ; preds = %59
  %68 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %69 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %68, i32 0, i32 7
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %74 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  store i64 %76, i64* %7, align 8
  %77 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %78 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %77, i32 0, i32 7
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %83 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32* %85, i32** %9, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %6, align 8
  %89 = sub i64 %88, 1
  %90 = and i64 %87, %89
  %91 = sub i64 %86, %90
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @MLX5_FPGA_TRANSACTION_MAX_SIZE, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %67
  %96 = load i64, i64* @MLX5_FPGA_TRANSACTION_MAX_SIZE, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %95, %67
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %4, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i64, i64* %4, align 8
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %101, %97
  %104 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %105 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %106 = getelementptr inbounds %struct.xfer_transaction, %struct.xfer_transaction* %105, i32 0, i32 1
  store %struct.xfer_state* %104, %struct.xfer_state** %106, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %109 = getelementptr inbounds %struct.xfer_transaction, %struct.xfer_transaction* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 5
  store i64 %107, i64* %110, align 8
  %111 = load i32, i32* @trans_complete, align 4
  %112 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %113 = getelementptr inbounds %struct.xfer_transaction, %struct.xfer_transaction* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  store i32 %111, i32* %114, align 8
  %115 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %116 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %115, i32 0, i32 7
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %121 = getelementptr inbounds %struct.xfer_transaction, %struct.xfer_transaction* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  store %struct.TYPE_4__* %119, %struct.TYPE_4__** %122, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %125 = getelementptr inbounds %struct.xfer_transaction, %struct.xfer_transaction* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i32* %123, i32** %126, align 8
  %127 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %128 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %127, i32 0, i32 7
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %133 = getelementptr inbounds %struct.xfer_transaction, %struct.xfer_transaction* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %137 = getelementptr inbounds %struct.xfer_transaction, %struct.xfer_transaction* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i64 %135, i64* %138, align 8
  %139 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %140 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %144 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %148 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %147, i32 0, i32 7
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %155 = getelementptr inbounds %struct.xfer_transaction, %struct.xfer_transaction* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %159 = getelementptr inbounds %struct.xfer_transaction, %struct.xfer_transaction* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %163 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %166 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %169 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %172 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @mlx5_fpga_dbg(i32 %153, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %157, i32* %161, i32 %164, i32 %167, i32 %170, i32 %173)
  %175 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %176 = getelementptr inbounds %struct.xfer_transaction, %struct.xfer_transaction* %175, i32 0, i32 0
  %177 = call i32 @mlx5_fpga_trans_exec(%struct.TYPE_6__* %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %222

180:                                              ; preds = %103
  %181 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %182 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %182, align 8
  %185 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %186 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @EBUSY, align 4
  %191 = sub nsw i32 0, %190
  %192 = icmp eq i32 %189, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %180
  store i32 0, i32* %10, align 4
  br label %194

194:                                              ; preds = %193, %180
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %219

197:                                              ; preds = %194
  %198 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %199 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %198, i32 0, i32 7
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %207 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %210 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %213 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @mlx5_fpga_warn(i32 %204, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %205, i32 %208, i32 %211, i32 %214)
  %216 = load i64, i64* @IB_WC_GENERAL_ERR, align 8
  %217 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %218 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %197, %194
  %220 = load %struct.xfer_transaction*, %struct.xfer_transaction** %3, align 8
  %221 = call i32 @kfree(%struct.xfer_transaction* %220)
  br label %241

222:                                              ; preds = %103
  %223 = load i64, i64* %5, align 8
  %224 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %225 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = add i64 %226, %223
  store i64 %227, i64* %225, align 8
  %228 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %229 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.xfer_state*, %struct.xfer_state** %2, align 8
  %232 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp sge i32 %230, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %222
  br label %241

236:                                              ; preds = %222
  br label %237

237:                                              ; preds = %236
  %238 = load i64, i64* %5, align 8
  %239 = load i64, i64* %4, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %37, label %241

241:                                              ; preds = %237, %235, %219, %64, %58, %43
  %242 = load i32, i32* %10, align 4
  ret i32 %242
}

declare dso_local i64 @mlx5_fpga_ddr_base_get(i32) #1

declare dso_local %struct.xfer_transaction* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_fpga_dbg(i32, i8*, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_fpga_trans_exec(%struct.TYPE_6__*) #1

declare dso_local i32 @mlx5_fpga_warn(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.xfer_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
