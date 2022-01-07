; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop_ioctlcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop_ioctlcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64, i64, i8*, i32, i32, i32, i8*, i32 }
%struct.CMD_MESSAGE_FIELD = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32 }
%struct.QBUFFER = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ARCMSR\00", align 1
@ARCMSR_MAX_QBUFFER = common dso_local global i32 0, align 4
@ACB_F_IOPDATA_OVERFLOW = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_RETURNCODE_OK = common dso_local global i8* null, align 8
@ARCMSR_MESSAGE_SUCCESS = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_RETURNCODE_ERROR = common dso_local global i8* null, align 8
@ACB_F_MESSAGE_WQBUFFER_CLEARED = common dso_local global i32 0, align 4
@ACB_F_MESSAGE_RQBUFFER_CLEARED = common dso_local global i32 0, align 4
@ACB_F_MESSAGE_WQBUFFER_READ = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_RETURNCODE_3F = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Hello! I am ARCMSR\00", align 1
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterControlBlock*, i32, i64)* @arcmsr_iop_ioctlcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_iop_ioctlcmd(%struct.AdapterControlBlock* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.AdapterControlBlock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.CMD_MESSAGE_FIELD*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.QBUFFER*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %7, align 8
  %27 = inttoptr i64 %26 to %struct.CMD_MESSAGE_FIELD*
  store %struct.CMD_MESSAGE_FIELD* %27, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %28 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %29 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @memcmp(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %382

36:                                               ; preds = %3
  %37 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %38 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %37, i32 0, i32 7
  %39 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %38)
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %377 [
    i32 132, label %41
    i32 128, label %120
    i32 135, label %213
    i32 134, label %250
    i32 136, label %289
    i32 131, label %338
    i32 129, label %344
    i32 130, label %369
    i32 133, label %373
  ]

41:                                               ; preds = %36
  %42 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %43 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %58, %41
  %46 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %47 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %50 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 1031
  br label %56

56:                                               ; preds = %53, %45
  %57 = phi i1 [ false, %45 ], [ %55, %53 ]
  br i1 %57, label %58, label %83

58:                                               ; preds = %56
  %59 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %60 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %63 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %11, align 8
  store i8 %67, i8* %68, align 1
  %69 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %70 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load i32, i32* @ARCMSR_MAX_QBUFFER, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %76 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = urem i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %45

83:                                               ; preds = %56
  %84 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %85 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %83
  %91 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %94 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %98 = call %struct.QBUFFER* @arcmsr_get_iop_rqbuffer(%struct.AdapterControlBlock* %97)
  store %struct.QBUFFER* %98, %struct.QBUFFER** %13, align 8
  %99 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %100 = load %struct.QBUFFER*, %struct.QBUFFER** %13, align 8
  %101 = call i32 @arcmsr_Read_iop_rqbuffer_data(%struct.AdapterControlBlock* %99, %struct.QBUFFER* %100)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %90
  %104 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %105 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %106 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %90
  br label %110

110:                                              ; preds = %109, %83
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %113 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_OK, align 8
  %116 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %117 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i8* %115, i8** %118, align 8
  %119 = load i32, i32* @ARCMSR_MESSAGE_SUCCESS, align 4
  store i32 %119, i32* %9, align 4
  br label %377

120:                                              ; preds = %36
  %121 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %122 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %19, align 8
  %124 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %125 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %15, align 4
  %128 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %129 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %17, align 4
  %131 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %132 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %120
  %138 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %139 = call i32 @arcmsr_Write_data_2iop_wqbuffer(%struct.AdapterControlBlock* %138)
  %140 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_ERROR, align 8
  %141 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %142 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  store i8* %140, i8** %143, align 8
  br label %211

144:                                              ; preds = %120
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = sub nsw i32 %145, %146
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* @ARCMSR_MAX_QBUFFER, align 4
  %150 = sub nsw i32 %149, 1
  %151 = and i32 %148, %150
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %205

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %159, %155
  %157 = load i32, i32* %15, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %184

159:                                              ; preds = %156
  %160 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %161 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %160, i32 0, i32 6
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %164 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %162, i64 %166
  store i8* %167, i8** %18, align 8
  %168 = load i8*, i8** %19, align 8
  %169 = load i8, i8* %168, align 1
  %170 = load i8*, i8** %18, align 8
  store i8 %169, i8* %170, align 1
  %171 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %172 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* @ARCMSR_MAX_QBUFFER, align 4
  %176 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %177 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = srem i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i8*, i8** %19, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %19, align 8
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %15, align 4
  br label %156

184:                                              ; preds = %156
  %185 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %186 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_CLEARED, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %184
  %192 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_CLEARED, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %195 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %199 = call i32 @arcmsr_Write_data_2iop_wqbuffer(%struct.AdapterControlBlock* %198)
  br label %200

200:                                              ; preds = %191, %184
  %201 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_OK, align 8
  %202 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %203 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  store i8* %201, i8** %204, align 8
  br label %210

205:                                              ; preds = %144
  %206 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_ERROR, align 8
  %207 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %208 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  store i8* %206, i8** %209, align 8
  br label %210

210:                                              ; preds = %205, %200
  br label %211

211:                                              ; preds = %210, %137
  %212 = load i32, i32* @ARCMSR_MESSAGE_SUCCESS, align 4
  store i32 %212, i32* %9, align 4
  br label %377

213:                                              ; preds = %36
  %214 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %215 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  store i8* %216, i8** %20, align 8
  %217 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %218 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %213
  %224 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %225 = xor i32 %224, -1
  %226 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %227 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = and i32 %228, %225
  store i32 %229, i32* %227, align 8
  %230 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %231 = call i32 @arcmsr_iop_message_read(%struct.AdapterControlBlock* %230)
  br label %232

232:                                              ; preds = %223, %213
  %233 = load i32, i32* @ACB_F_MESSAGE_RQBUFFER_CLEARED, align 4
  %234 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %235 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  %238 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %239 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %238, i32 0, i32 0
  store i64 0, i64* %239, align 8
  %240 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %241 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %240, i32 0, i32 1
  store i64 0, i64* %241, align 8
  %242 = load i8*, i8** %20, align 8
  %243 = load i32, i32* @ARCMSR_MAX_QBUFFER, align 4
  %244 = call i32 @memset(i8* %242, i32 0, i32 %243)
  %245 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_OK, align 8
  %246 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %247 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  store i8* %245, i8** %248, align 8
  %249 = load i32, i32* @ARCMSR_MESSAGE_SUCCESS, align 4
  store i32 %249, i32* %9, align 4
  br label %377

250:                                              ; preds = %36
  %251 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %252 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %251, i32 0, i32 6
  %253 = load i8*, i8** %252, align 8
  store i8* %253, i8** %21, align 8
  %254 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %255 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %250
  %261 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %262 = xor i32 %261, -1
  %263 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %264 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = and i32 %265, %262
  store i32 %266, i32* %264, align 8
  %267 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %268 = call i32 @arcmsr_iop_message_read(%struct.AdapterControlBlock* %267)
  br label %269

269:                                              ; preds = %260, %250
  %270 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_CLEARED, align 4
  %271 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_READ, align 4
  %272 = or i32 %270, %271
  %273 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %274 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  %277 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %278 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %277, i32 0, i32 5
  store i32 0, i32* %278, align 8
  %279 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %280 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %279, i32 0, i32 4
  store i32 0, i32* %280, align 4
  %281 = load i8*, i8** %21, align 8
  %282 = load i32, i32* @ARCMSR_MAX_QBUFFER, align 4
  %283 = call i32 @memset(i8* %281, i32 0, i32 %282)
  %284 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_OK, align 8
  %285 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %286 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 1
  store i8* %284, i8** %287, align 8
  %288 = load i32, i32* @ARCMSR_MESSAGE_SUCCESS, align 4
  store i32 %288, i32* %9, align 4
  br label %377

289:                                              ; preds = %36
  %290 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %291 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %289
  %297 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %298 = xor i32 %297, -1
  %299 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %300 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = and i32 %301, %298
  store i32 %302, i32* %300, align 8
  %303 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %304 = call i32 @arcmsr_iop_message_read(%struct.AdapterControlBlock* %303)
  br label %305

305:                                              ; preds = %296, %289
  %306 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_CLEARED, align 4
  %307 = load i32, i32* @ACB_F_MESSAGE_RQBUFFER_CLEARED, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_READ, align 4
  %310 = or i32 %308, %309
  %311 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %312 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 8
  %315 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %316 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %315, i32 0, i32 0
  store i64 0, i64* %316, align 8
  %317 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %318 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %317, i32 0, i32 1
  store i64 0, i64* %318, align 8
  %319 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %320 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %319, i32 0, i32 5
  store i32 0, i32* %320, align 8
  %321 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %322 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %321, i32 0, i32 4
  store i32 0, i32* %322, align 4
  %323 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %324 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %323, i32 0, i32 2
  %325 = load i8*, i8** %324, align 8
  store i8* %325, i8** %22, align 8
  %326 = load i8*, i8** %22, align 8
  %327 = call i32 @memset(i8* %326, i32 0, i32 4)
  %328 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %329 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %328, i32 0, i32 6
  %330 = load i8*, i8** %329, align 8
  store i8* %330, i8** %22, align 8
  %331 = load i8*, i8** %22, align 8
  %332 = call i32 @memset(i8* %331, i32 0, i32 4)
  %333 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_OK, align 8
  %334 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %335 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 1
  store i8* %333, i8** %336, align 8
  %337 = load i32, i32* @ARCMSR_MESSAGE_SUCCESS, align 4
  store i32 %337, i32* %9, align 4
  br label %377

338:                                              ; preds = %36
  %339 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_3F, align 8
  %340 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %341 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 1
  store i8* %339, i8** %342, align 8
  %343 = load i32, i32* @ARCMSR_MESSAGE_SUCCESS, align 4
  store i32 %343, i32* %9, align 4
  br label %377

344:                                              ; preds = %36
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %345 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %346 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  store i8* %347, i8** %24, align 8
  %348 = load i8*, i8** %24, align 8
  %349 = load i8*, i8** %23, align 8
  %350 = load i8*, i8** %23, align 8
  %351 = call i32 @strlen(i8* %350)
  %352 = call i32 @memcpy(i8* %348, i8* %349, i32 %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %344
  %355 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_ERROR, align 8
  %356 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %357 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 1
  store i8* %355, i8** %358, align 8
  %359 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %360 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %359, i32 0, i32 7
  %361 = call i32 @ARCMSR_LOCK_RELEASE(i32* %360)
  %362 = load i32, i32* @ENOIOCTL, align 4
  store i32 %362, i32* %4, align 4
  br label %382

363:                                              ; preds = %344
  %364 = load i8*, i8** @ARCMSR_MESSAGE_RETURNCODE_OK, align 8
  %365 = load %struct.CMD_MESSAGE_FIELD*, %struct.CMD_MESSAGE_FIELD** %8, align 8
  %366 = getelementptr inbounds %struct.CMD_MESSAGE_FIELD, %struct.CMD_MESSAGE_FIELD* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 1
  store i8* %364, i8** %367, align 8
  %368 = load i32, i32* @ARCMSR_MESSAGE_SUCCESS, align 4
  store i32 %368, i32* %9, align 4
  br label %377

369:                                              ; preds = %36
  %370 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %371 = call i32 @arcmsr_iop_parking(%struct.AdapterControlBlock* %370)
  %372 = load i32, i32* @ARCMSR_MESSAGE_SUCCESS, align 4
  store i32 %372, i32* %9, align 4
  br label %377

373:                                              ; preds = %36
  %374 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %375 = call i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock* %374)
  %376 = load i32, i32* @ARCMSR_MESSAGE_SUCCESS, align 4
  store i32 %376, i32* %9, align 4
  br label %377

377:                                              ; preds = %36, %373, %369, %363, %338, %305, %269, %232, %211, %110
  %378 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  %379 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %378, i32 0, i32 7
  %380 = call i32 @ARCMSR_LOCK_RELEASE(i32* %379)
  %381 = load i32, i32* %9, align 4
  store i32 %381, i32* %4, align 4
  br label %382

382:                                              ; preds = %377, %354, %34
  %383 = load i32, i32* %4, align 4
  ret i32 %383
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @ARCMSR_LOCK_ACQUIRE(i32*) #1

declare dso_local %struct.QBUFFER* @arcmsr_get_iop_rqbuffer(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_Read_iop_rqbuffer_data(%struct.AdapterControlBlock*, %struct.QBUFFER*) #1

declare dso_local i32 @arcmsr_Write_data_2iop_wqbuffer(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_iop_message_read(%struct.AdapterControlBlock*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ARCMSR_LOCK_RELEASE(i32*) #1

declare dso_local i32 @arcmsr_iop_parking(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
