; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_qbio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_qbio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.proc = type { %struct.kaioinfo* }
%struct.kaioinfo = type { i64 }
%struct.kaiocb = type { %struct.bio*, %struct.buf*, i32, i32, %struct.file*, %struct.aiocb }
%struct.bio = type { i32, i32, i32, i32, i8*, i32, i32, i8*, %struct.cdev*, i32, i32, i32 }
%struct.cdev = type { i32, i32 }
%struct.buf = type { i8* }
%struct.file = type { i64, %struct.vnode* }
%struct.vnode = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.aiocb = type { i64, i32, i32, i64 }
%struct.cdevsw = type { i32, i32 (%struct.bio*)* }

@LIO_WRITE = common dso_local global i64 0, align 8
@LIO_READ = common dso_local global i64 0, align 8
@DTYPE_VNODE = common dso_local global i64 0, align 8
@VCHR = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@D_DISK = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@SI_UNMAPPED = common dso_local global i32 0, align 4
@unmapped_buf_allowed = common dso_local global i64 0, align 8
@MAXPHYS = common dso_local global i32 0, align 4
@max_buf_aio = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@pbuf_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@aio_biowakeup = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_6__* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@num_buf_aio = common dso_local global i32 0, align 4
@unmapped_buf = common dso_local global i8* null, align 8
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@num_unmapped_aio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.kaiocb*)* @aio_qbio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_qbio(%struct.proc* %0, %struct.kaiocb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.kaiocb*, align 8
  %6 = alloca %struct.aiocb*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.cdevsw*, align 8
  %12 = alloca %struct.cdev*, align 8
  %13 = alloca %struct.kaioinfo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.kaiocb* %1, %struct.kaiocb** %5, align 8
  %18 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %19 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %18, i32 0, i32 5
  store %struct.aiocb* %19, %struct.aiocb** %6, align 8
  %20 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %21 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %20, i32 0, i32 4
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %7, align 8
  %23 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %24 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LIO_WRITE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %30 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LIO_READ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %327

35:                                               ; preds = %28, %2
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = icmp eq %struct.file* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DTYPE_VNODE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %35
  store i32 -1, i32* %3, align 4
  br label %327

45:                                               ; preds = %38
  %46 = load %struct.file*, %struct.file** %7, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 1
  %48 = load %struct.vnode*, %struct.vnode** %47, align 8
  store %struct.vnode* %48, %struct.vnode** %10, align 8
  %49 = load %struct.vnode*, %struct.vnode** %10, align 8
  %50 = getelementptr inbounds %struct.vnode, %struct.vnode* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VCHR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %327

55:                                               ; preds = %45
  %56 = load %struct.vnode*, %struct.vnode** %10, align 8
  %57 = getelementptr inbounds %struct.vnode, %struct.vnode* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %327

62:                                               ; preds = %55
  %63 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %64 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.vnode*, %struct.vnode** %10, align 8
  %67 = getelementptr inbounds %struct.vnode, %struct.vnode* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = srem i32 %65, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %327

73:                                               ; preds = %62
  store i32 0, i32* %15, align 4
  %74 = load %struct.vnode*, %struct.vnode** %10, align 8
  %75 = call %struct.cdevsw* @devvn_refthread(%struct.vnode* %74, %struct.cdev** %12, i32* %15)
  store %struct.cdevsw* %75, %struct.cdevsw** %11, align 8
  %76 = load %struct.cdevsw*, %struct.cdevsw** %11, align 8
  %77 = icmp eq %struct.cdevsw* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %3, align 4
  br label %327

80:                                               ; preds = %73
  %81 = load %struct.cdevsw*, %struct.cdevsw** %11, align 8
  %82 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @D_DISK, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 -1, i32* %14, align 4
  br label %322

88:                                               ; preds = %80
  %89 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %90 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.cdev*, %struct.cdev** %12, align 8
  %93 = getelementptr inbounds %struct.cdev, %struct.cdev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 -1, i32* %14, align 4
  br label %322

97:                                               ; preds = %88
  %98 = load %struct.proc*, %struct.proc** %4, align 8
  %99 = getelementptr inbounds %struct.proc, %struct.proc* %98, i32 0, i32 0
  %100 = load %struct.kaioinfo*, %struct.kaioinfo** %99, align 8
  store %struct.kaioinfo* %100, %struct.kaioinfo** %13, align 8
  %101 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %102 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* @PAGE_MASK, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %16, align 4
  %107 = load %struct.cdev*, %struct.cdev** %12, align 8
  %108 = getelementptr inbounds %struct.cdev, %struct.cdev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SI_UNMAPPED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %97
  %114 = load i64, i64* @unmapped_buf_allowed, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %118 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @MAXPHYS, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 -1, i32* %14, align 4
  br label %322

123:                                              ; preds = %116
  store %struct.buf* null, %struct.buf** %9, align 8
  br label %157

124:                                              ; preds = %113, %97
  %125 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %126 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @MAXPHYS, align 4
  %129 = load i32, i32* %16, align 4
  %130 = sub nsw i32 %128, %129
  %131 = icmp sgt i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  store i32 -1, i32* %14, align 4
  br label %322

133:                                              ; preds = %124
  %134 = load %struct.kaioinfo*, %struct.kaioinfo** %13, align 8
  %135 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @max_buf_aio, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* @EAGAIN, align 4
  store i32 %140, i32* %14, align 4
  br label %322

141:                                              ; preds = %133
  %142 = load i32, i32* @pbuf_zone, align 4
  %143 = load i32, i32* @M_WAITOK, align 4
  %144 = call %struct.buf* @uma_zalloc(i32 %142, i32 %143)
  store %struct.buf* %144, %struct.buf** %9, align 8
  %145 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %146 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %145, i32 0, i32 1
  store %struct.buf* %144, %struct.buf** %146, align 8
  %147 = load %struct.buf*, %struct.buf** %9, align 8
  %148 = call i32 @BUF_KERNPROC(%struct.buf* %147)
  %149 = load %struct.kaioinfo*, %struct.kaioinfo** %13, align 8
  %150 = call i32 @AIO_LOCK(%struct.kaioinfo* %149)
  %151 = load %struct.kaioinfo*, %struct.kaioinfo** %13, align 8
  %152 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = load %struct.kaioinfo*, %struct.kaioinfo** %13, align 8
  %156 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %155)
  br label %157

157:                                              ; preds = %141, %123
  %158 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %158, %struct.bio** %8, align 8
  %159 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %160 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %159, i32 0, i32 0
  store %struct.bio* %158, %struct.bio** %160, align 8
  %161 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %162 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.bio*, %struct.bio** %8, align 8
  %165 = getelementptr inbounds %struct.bio, %struct.bio* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %167 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.bio*, %struct.bio** %8, align 8
  %170 = getelementptr inbounds %struct.bio, %struct.bio* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @aio_biowakeup, align 4
  %172 = load %struct.bio*, %struct.bio** %8, align 8
  %173 = getelementptr inbounds %struct.bio, %struct.bio* %172, i32 0, i32 11
  store i32 %171, i32* %173, align 8
  %174 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %175 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to i8*
  %178 = load %struct.bio*, %struct.bio** %8, align 8
  %179 = getelementptr inbounds %struct.bio, %struct.bio* %178, i32 0, i32 4
  store i8* %177, i8** %179, align 8
  %180 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %181 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.bio*, %struct.bio** %8, align 8
  %184 = getelementptr inbounds %struct.bio, %struct.bio* %183, i32 0, i32 10
  store i32 %182, i32* %184, align 4
  %185 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %186 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @LIO_WRITE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %157
  %191 = load i32, i32* @BIO_WRITE, align 4
  br label %194

192:                                              ; preds = %157
  %193 = load i32, i32* @BIO_READ, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  %196 = load %struct.bio*, %struct.bio** %8, align 8
  %197 = getelementptr inbounds %struct.bio, %struct.bio* %196, i32 0, i32 9
  store i32 %195, i32* %197, align 8
  %198 = load %struct.cdev*, %struct.cdev** %12, align 8
  %199 = load %struct.bio*, %struct.bio** %8, align 8
  %200 = getelementptr inbounds %struct.bio, %struct.bio* %199, i32 0, i32 8
  store %struct.cdev* %198, %struct.cdev** %200, align 8
  %201 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %202 = bitcast %struct.kaiocb* %201 to i8*
  %203 = load %struct.bio*, %struct.bio** %8, align 8
  %204 = getelementptr inbounds %struct.bio, %struct.bio* %203, i32 0, i32 7
  store i8* %202, i8** %204, align 8
  %205 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %205, i32* %17, align 4
  %206 = load %struct.aiocb*, %struct.aiocb** %6, align 8
  %207 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @LIO_READ, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %194
  %212 = load i32, i32* @VM_PROT_WRITE, align 4
  %213 = load i32, i32* %17, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %17, align 4
  br label %215

215:                                              ; preds = %211, %194
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curproc, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load %struct.bio*, %struct.bio** %8, align 8
  %221 = getelementptr inbounds %struct.bio, %struct.bio* %220, i32 0, i32 4
  %222 = load i8*, i8** %221, align 8
  %223 = ptrtoint i8* %222 to i32
  %224 = load %struct.bio*, %struct.bio** %8, align 8
  %225 = getelementptr inbounds %struct.bio, %struct.bio* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %17, align 4
  %228 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %229 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %232 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @nitems(i32 %233)
  %235 = call i32 @vm_fault_quick_hold_pages(i32* %219, i32 %223, i32 %226, i32 %227, i32 %230, i32 %234)
  %236 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %237 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 8
  %238 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %239 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %215
  %243 = load i32, i32* @EFAULT, align 4
  store i32 %243, i32* %14, align 4
  br label %300

244:                                              ; preds = %215
  %245 = load %struct.buf*, %struct.buf** %9, align 8
  %246 = icmp ne %struct.buf* %245, null
  br i1 %246, label %247, label %268

247:                                              ; preds = %244
  %248 = load %struct.buf*, %struct.buf** %9, align 8
  %249 = getelementptr inbounds %struct.buf, %struct.buf* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = ptrtoint i8* %250 to i32
  %252 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %253 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %256 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @pmap_qenter(i32 %251, i32 %254, i32 %257)
  %259 = load %struct.buf*, %struct.buf** %9, align 8
  %260 = getelementptr inbounds %struct.buf, %struct.buf* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* %16, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr i8, i8* %261, i64 %263
  %265 = load %struct.bio*, %struct.bio** %8, align 8
  %266 = getelementptr inbounds %struct.bio, %struct.bio* %265, i32 0, i32 4
  store i8* %264, i8** %266, align 8
  %267 = call i32 @atomic_add_int(i32* @num_buf_aio, i32 1)
  br label %291

268:                                              ; preds = %244
  %269 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %270 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.bio*, %struct.bio** %8, align 8
  %273 = getelementptr inbounds %struct.bio, %struct.bio* %272, i32 0, i32 6
  store i32 %271, i32* %273, align 4
  %274 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %275 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.bio*, %struct.bio** %8, align 8
  %278 = getelementptr inbounds %struct.bio, %struct.bio* %277, i32 0, i32 5
  store i32 %276, i32* %278, align 8
  %279 = load i32, i32* %16, align 4
  %280 = load %struct.bio*, %struct.bio** %8, align 8
  %281 = getelementptr inbounds %struct.bio, %struct.bio* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 8
  %282 = load i8*, i8** @unmapped_buf, align 8
  %283 = load %struct.bio*, %struct.bio** %8, align 8
  %284 = getelementptr inbounds %struct.bio, %struct.bio* %283, i32 0, i32 4
  store i8* %282, i8** %284, align 8
  %285 = load i32, i32* @BIO_UNMAPPED, align 4
  %286 = load %struct.bio*, %struct.bio** %8, align 8
  %287 = getelementptr inbounds %struct.bio, %struct.bio* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  %290 = call i32 @atomic_add_int(i32* @num_unmapped_aio, i32 1)
  br label %291

291:                                              ; preds = %268, %247
  %292 = load %struct.cdevsw*, %struct.cdevsw** %11, align 8
  %293 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %292, i32 0, i32 1
  %294 = load i32 (%struct.bio*)*, i32 (%struct.bio*)** %293, align 8
  %295 = load %struct.bio*, %struct.bio** %8, align 8
  %296 = call i32 %294(%struct.bio* %295)
  %297 = load %struct.cdev*, %struct.cdev** %12, align 8
  %298 = load i32, i32* %15, align 4
  %299 = call i32 @dev_relthread(%struct.cdev* %297, i32 %298)
  store i32 0, i32* %3, align 4
  br label %327

300:                                              ; preds = %242
  %301 = load %struct.buf*, %struct.buf** %9, align 8
  %302 = icmp ne %struct.buf* %301, null
  br i1 %302, label %303, label %317

303:                                              ; preds = %300
  %304 = load %struct.kaioinfo*, %struct.kaioinfo** %13, align 8
  %305 = call i32 @AIO_LOCK(%struct.kaioinfo* %304)
  %306 = load %struct.kaioinfo*, %struct.kaioinfo** %13, align 8
  %307 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %308, -1
  store i64 %309, i64* %307, align 8
  %310 = load %struct.kaioinfo*, %struct.kaioinfo** %13, align 8
  %311 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %310)
  %312 = load i32, i32* @pbuf_zone, align 4
  %313 = load %struct.buf*, %struct.buf** %9, align 8
  %314 = call i32 @uma_zfree(i32 %312, %struct.buf* %313)
  %315 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %316 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %315, i32 0, i32 1
  store %struct.buf* null, %struct.buf** %316, align 8
  br label %317

317:                                              ; preds = %303, %300
  %318 = load %struct.bio*, %struct.bio** %8, align 8
  %319 = call i32 @g_destroy_bio(%struct.bio* %318)
  %320 = load %struct.kaiocb*, %struct.kaiocb** %5, align 8
  %321 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %320, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %321, align 8
  br label %322

322:                                              ; preds = %317, %139, %132, %122, %96, %87
  %323 = load %struct.cdev*, %struct.cdev** %12, align 8
  %324 = load i32, i32* %15, align 4
  %325 = call i32 @dev_relthread(%struct.cdev* %323, i32 %324)
  %326 = load i32, i32* %14, align 4
  store i32 %326, i32* %3, align 4
  br label %327

327:                                              ; preds = %322, %291, %78, %72, %61, %54, %44, %34
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local %struct.cdevsw* @devvn_refthread(%struct.vnode*, %struct.cdev**, i32*) #1

declare dso_local %struct.buf* @uma_zalloc(i32, i32) #1

declare dso_local i32 @BUF_KERNPROC(%struct.buf*) #1

declare dso_local i32 @AIO_LOCK(%struct.kaioinfo*) #1

declare dso_local i32 @AIO_UNLOCK(%struct.kaioinfo*) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32 @vm_fault_quick_hold_pages(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @pmap_qenter(i32, i32, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.buf*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
