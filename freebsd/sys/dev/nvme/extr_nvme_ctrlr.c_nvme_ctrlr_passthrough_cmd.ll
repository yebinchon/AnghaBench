; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_passthrough_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_passthrough_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i64 }
%struct.nvme_pt_command = type { i64, %struct.mtx*, %struct.TYPE_3__, i64, i64 }
%struct.mtx = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvme_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf = type { i64, i64, i32 }

@MAXPHYS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pt->len (%d) exceeds max_xfer_size (%d)\0A\00", align 1
@curproc = common dso_local global i32 0, align 4
@pbuf_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@nvme_pt_done = common dso_local global i32 0, align 4
@mtxpool_sleep = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"nvme_pt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_ctrlr_passthrough_cmd(%struct.nvme_controller* %0, %struct.nvme_pt_command* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_controller*, align 8
  %8 = alloca %struct.nvme_pt_command*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvme_request*, align 8
  %13 = alloca %struct.mtx*, align 8
  %14 = alloca %struct.buf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %7, align 8
  store %struct.nvme_pt_command* %1, %struct.nvme_pt_command** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.buf* null, %struct.buf** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %19 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %116

22:                                               ; preds = %5
  %23 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %24 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* %16, align 8
  %27 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %28 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call i64 @round_page(i64 %30)
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* %16, align 8
  %33 = call i64 @trunc_page(i64 %32)
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %17, align 8
  %35 = load i64, i64* %16, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i64, i64* @MAXPHYS, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %22
  %40 = load i32, i32* @EIO, align 4
  store i32 %40, i32* %6, align 4
  br label %239

41:                                               ; preds = %22
  %42 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %43 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %46 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %51 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %52 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %55 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @nvme_printf(%struct.nvme_controller* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %56)
  %58 = load i32, i32* @EIO, align 4
  store i32 %58, i32* %6, align 4
  br label %239

59:                                               ; preds = %41
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %105

62:                                               ; preds = %59
  %63 = load i32, i32* @curproc, align 4
  %64 = call i32 @PHOLD(i32 %63)
  %65 = load i32, i32* @pbuf_zone, align 4
  %66 = load i32, i32* @M_WAITOK, align 4
  %67 = call %struct.buf* @uma_zalloc(i32 %65, i32 %66)
  store %struct.buf* %67, %struct.buf** %14, align 8
  %68 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %69 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.buf*, %struct.buf** %14, align 8
  %72 = getelementptr inbounds %struct.buf, %struct.buf* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %74 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.buf*, %struct.buf** %14, align 8
  %77 = getelementptr inbounds %struct.buf, %struct.buf* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %79 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %62
  %83 = load i32, i32* @BIO_READ, align 4
  br label %86

84:                                               ; preds = %62
  %85 = load i32, i32* @BIO_WRITE, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load %struct.buf*, %struct.buf** %14, align 8
  %89 = getelementptr inbounds %struct.buf, %struct.buf* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.buf*, %struct.buf** %14, align 8
  %91 = call i64 @vmapbuf(%struct.buf* %90, i32 1)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @EFAULT, align 4
  store i32 %94, i32* %15, align 4
  br label %228

95:                                               ; preds = %86
  %96 = load %struct.buf*, %struct.buf** %14, align 8
  %97 = getelementptr inbounds %struct.buf, %struct.buf* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %100 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @nvme_pt_done, align 4
  %103 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %104 = call %struct.nvme_request* @nvme_allocate_request_vaddr(i64 %98, i64 %101, i32 %102, %struct.nvme_pt_command* %103)
  store %struct.nvme_request* %104, %struct.nvme_request** %12, align 8
  br label %115

105:                                              ; preds = %59
  %106 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %107 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %110 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* @nvme_pt_done, align 4
  %113 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %114 = call %struct.nvme_request* @nvme_allocate_request_vaddr(i64 %108, i64 %111, i32 %112, %struct.nvme_pt_command* %113)
  store %struct.nvme_request* %114, %struct.nvme_request** %12, align 8
  br label %115

115:                                              ; preds = %105, %95
  br label %120

116:                                              ; preds = %5
  %117 = load i32, i32* @nvme_pt_done, align 4
  %118 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %119 = call %struct.nvme_request* @nvme_allocate_request_null(i32 %117, %struct.nvme_pt_command* %118)
  store %struct.nvme_request* %119, %struct.nvme_request** %12, align 8
  br label %120

120:                                              ; preds = %116, %115
  %121 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %122 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %126 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 10
  store i32 %124, i32* %127, align 4
  %128 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %129 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %133 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 9
  store i32 %131, i32* %134, align 4
  %135 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %136 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %140 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 8
  store i32 %138, i32* %141, align 4
  %142 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %143 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %147 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 7
  store i32 %145, i32* %148, align 4
  %149 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %150 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %154 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 6
  store i32 %152, i32* %155, align 4
  %156 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %157 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %161 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 5
  store i32 %159, i32* %162, align 4
  %163 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %164 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %168 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 4
  store i32 %166, i32* %169, align 4
  %170 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %171 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %175 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  store i32 %173, i32* %176, align 4
  %177 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %178 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %182 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  store i32 %180, i32* %183, align 4
  %184 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %185 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %189 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @htole32(i32 %191)
  %193 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %194 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 4
  %196 = load i32, i32* @mtxpool_sleep, align 4
  %197 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %198 = call %struct.mtx* @mtx_pool_find(i32 %196, %struct.nvme_pt_command* %197)
  store %struct.mtx* %198, %struct.mtx** %13, align 8
  %199 = load %struct.mtx*, %struct.mtx** %13, align 8
  %200 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %201 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %200, i32 0, i32 1
  store %struct.mtx* %199, %struct.mtx** %201, align 8
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %120
  %205 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %206 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %207 = call i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller* %205, %struct.nvme_request* %206)
  br label %212

208:                                              ; preds = %120
  %209 = load %struct.nvme_controller*, %struct.nvme_controller** %7, align 8
  %210 = load %struct.nvme_request*, %struct.nvme_request** %12, align 8
  %211 = call i32 @nvme_ctrlr_submit_io_request(%struct.nvme_controller* %209, %struct.nvme_request* %210)
  br label %212

212:                                              ; preds = %208, %204
  %213 = load %struct.mtx*, %struct.mtx** %13, align 8
  %214 = call i32 @mtx_lock(%struct.mtx* %213)
  br label %215

215:                                              ; preds = %220, %212
  %216 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %217 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %216, i32 0, i32 1
  %218 = load %struct.mtx*, %struct.mtx** %217, align 8
  %219 = icmp ne %struct.mtx* %218, null
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %8, align 8
  %222 = load %struct.mtx*, %struct.mtx** %13, align 8
  %223 = load i32, i32* @PRIBIO, align 4
  %224 = call i32 @mtx_sleep(%struct.nvme_pt_command* %221, %struct.mtx* %222, i32 %223, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %215

225:                                              ; preds = %215
  %226 = load %struct.mtx*, %struct.mtx** %13, align 8
  %227 = call i32 @mtx_unlock(%struct.mtx* %226)
  br label %228

228:                                              ; preds = %225, %93
  %229 = load %struct.buf*, %struct.buf** %14, align 8
  %230 = icmp ne %struct.buf* %229, null
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = load i32, i32* @pbuf_zone, align 4
  %233 = load %struct.buf*, %struct.buf** %14, align 8
  %234 = call i32 @uma_zfree(i32 %232, %struct.buf* %233)
  %235 = load i32, i32* @curproc, align 4
  %236 = call i32 @PRELE(i32 %235)
  br label %237

237:                                              ; preds = %231, %228
  %238 = load i32, i32* %15, align 4
  store i32 %238, i32* %6, align 4
  br label %239

239:                                              ; preds = %237, %49, %39
  %240 = load i32, i32* %6, align 4
  ret i32 %240
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*, i64, i64) #1

declare dso_local i32 @PHOLD(i32) #1

declare dso_local %struct.buf* @uma_zalloc(i32, i32) #1

declare dso_local i64 @vmapbuf(%struct.buf*, i32) #1

declare dso_local %struct.nvme_request* @nvme_allocate_request_vaddr(i64, i64, i32, %struct.nvme_pt_command*) #1

declare dso_local %struct.nvme_request* @nvme_allocate_request_null(i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @nvme_ctrlr_submit_admin_request(%struct.nvme_controller*, %struct.nvme_request*) #1

declare dso_local i32 @nvme_ctrlr_submit_io_request(%struct.nvme_controller*, %struct.nvme_request*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @mtx_sleep(%struct.nvme_pt_command*, %struct.mtx*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @uma_zfree(i32, %struct.buf*) #1

declare dso_local i32 @PRELE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
