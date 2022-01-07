; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_physio.c_physio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_physio.c_physio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.cdev = type { i64, i32, %struct.cdevsw* }
%struct.cdevsw = type { i32 (%struct.bio*)* }
%struct.bio = type opaque
%struct.uio = type { i64, i32, i64, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.buf = type { i64, %struct.vm_page**, i32* }
%struct.vm_page = type { i32 }
%struct.bio.0 = type { i32, i64, i64, i32, i32, i64, i32, i64, %struct.vm_page**, %struct.cdev*, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"WARNING: %s si_iosize_max=%d, using DFLTPHYS.\0A\00", align 1
@DFLTPHYS = common dso_local global i32 0, align 4
@SI_NOSPLIT = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"%s: request size=%zd > si_iosize_max=%d; cannot split request\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%s: request size=%zd > MAXPHYS=%d; cannot split request\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"%s: request vectors=%d > 1; cannot split request\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_14__* null, align 8
@UIO_USERSPACE = common dso_local global i64 0, align 8
@SI_UNMAPPED = common dso_local global i32 0, align 4
@unmapped_buf_allowed = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@pbuf_zone = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i64 0, align 8
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_15__* null, align 8
@BIO_WRITE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [68 x i8] c"%s: request ptr %p is not on a page boundary; cannot split request\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@unmapped_buf = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"physrd\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"physwr\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@RACCT_READBPS = common dso_local global i32 0, align 4
@RACCT_READIOPS = common dso_local global i32 0, align 4
@RACCT_WRITEBPS = common dso_local global i32 0, align 4
@RACCT_WRITEIOPS = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physio(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdevsw*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca %struct.bio.0*, align 8
  %11 = alloca %struct.vm_page**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.cdev*, %struct.cdev** %5, align 8
  %21 = getelementptr inbounds %struct.cdev, %struct.cdev* %20, i32 0, i32 2
  %22 = load %struct.cdevsw*, %struct.cdevsw** %21, align 8
  store %struct.cdevsw* %22, %struct.cdevsw** %8, align 8
  store i32 0, i32* %17, align 4
  store i32* null, i32** %12, align 8
  %23 = load %struct.cdevsw*, %struct.cdevsw** %8, align 8
  %24 = icmp eq %struct.cdevsw* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %4, align 4
  br label %518

27:                                               ; preds = %3
  %28 = load %struct.cdev*, %struct.cdev** %5, align 8
  %29 = getelementptr inbounds %struct.cdev, %struct.cdev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.cdev*, %struct.cdev** %5, align 8
  %35 = call i8* @devtoname(%struct.cdev* %34)
  %36 = load %struct.cdev*, %struct.cdev** %5, align 8
  %37 = getelementptr inbounds %struct.cdev, %struct.cdev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %35, i64 %38)
  %40 = load i32, i32* @DFLTPHYS, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.cdev*, %struct.cdev** %5, align 8
  %43 = getelementptr inbounds %struct.cdev, %struct.cdev* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %33, %27
  %45 = load %struct.cdev*, %struct.cdev** %5, align 8
  %46 = getelementptr inbounds %struct.cdev, %struct.cdev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SI_NOSPLIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %118

51:                                               ; preds = %44
  %52 = load %struct.uio*, %struct.uio** %6, align 8
  %53 = getelementptr inbounds %struct.uio, %struct.uio* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.cdev*, %struct.cdev** %5, align 8
  %56 = getelementptr inbounds %struct.cdev, %struct.cdev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %70, label %59

59:                                               ; preds = %51
  %60 = load %struct.uio*, %struct.uio** %6, align 8
  %61 = getelementptr inbounds %struct.uio, %struct.uio* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MAXPHYS, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load %struct.uio*, %struct.uio** %6, align 8
  %67 = getelementptr inbounds %struct.uio, %struct.uio* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %118

70:                                               ; preds = %65, %59, %51
  %71 = load %struct.uio*, %struct.uio** %6, align 8
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.cdev*, %struct.cdev** %5, align 8
  %75 = getelementptr inbounds %struct.cdev, %struct.cdev* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load %struct.cdev*, %struct.cdev** %5, align 8
  %80 = call i8* @devtoname(%struct.cdev* %79)
  %81 = load %struct.uio*, %struct.uio** %6, align 8
  %82 = getelementptr inbounds %struct.uio, %struct.uio* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.cdev*, %struct.cdev** %5, align 8
  %86 = getelementptr inbounds %struct.cdev, %struct.cdev* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i8*, i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %80, i32 %84, i64 %87)
  br label %89

89:                                               ; preds = %78, %70
  %90 = load %struct.uio*, %struct.uio** %6, align 8
  %91 = getelementptr inbounds %struct.uio, %struct.uio* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MAXPHYS, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load %struct.cdev*, %struct.cdev** %5, align 8
  %97 = call i8* @devtoname(%struct.cdev* %96)
  %98 = load %struct.uio*, %struct.uio** %6, align 8
  %99 = getelementptr inbounds %struct.uio, %struct.uio* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i64, i64* @MAXPHYS, align 8
  %103 = call i32 (i8*, i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %97, i32 %101, i64 %102)
  br label %104

104:                                              ; preds = %95, %89
  %105 = load %struct.uio*, %struct.uio** %6, align 8
  %106 = getelementptr inbounds %struct.uio, %struct.uio* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load %struct.cdev*, %struct.cdev** %5, align 8
  %111 = call i8* @devtoname(%struct.cdev* %110)
  %112 = load %struct.uio*, %struct.uio** %6, align 8
  %113 = getelementptr inbounds %struct.uio, %struct.uio* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %111, i32 %114)
  br label %116

116:                                              ; preds = %109, %104
  %117 = load i32, i32* @EFBIG, align 4
  store i32 %117, i32* %4, align 4
  br label %518

118:                                              ; preds = %65, %44
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** @curproc, align 8
  %120 = call i32 @PHOLD(%struct.TYPE_14__* %119)
  %121 = call %struct.bio.0* (...) @g_alloc_bio()
  store %struct.bio.0* %121, %struct.bio.0** %10, align 8
  %122 = load %struct.uio*, %struct.uio** %6, align 8
  %123 = getelementptr inbounds %struct.uio, %struct.uio* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @UIO_USERSPACE, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  store %struct.buf* null, %struct.buf** %9, align 8
  store %struct.vm_page** null, %struct.vm_page*** %11, align 8
  br label %166

128:                                              ; preds = %118
  %129 = load %struct.cdev*, %struct.cdev** %5, align 8
  %130 = getelementptr inbounds %struct.cdev, %struct.cdev* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SI_UNMAPPED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %128
  %136 = load i64, i64* @unmapped_buf_allowed, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  store %struct.buf* null, %struct.buf** %9, align 8
  %139 = load %struct.uio*, %struct.uio** %6, align 8
  %140 = getelementptr inbounds %struct.uio, %struct.uio* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @MAXPHYS, align 8
  %143 = call i64 @MIN(i64 %141, i64 %142)
  %144 = call i32 @btoc(i64 %143)
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 8, %147
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* @M_DEVBUF, align 4
  %151 = load i32, i32* @M_WAITOK, align 4
  %152 = call %struct.vm_page** @malloc(i32 %149, i32 %150, i32 %151)
  store %struct.vm_page** %152, %struct.vm_page*** %11, align 8
  br label %165

153:                                              ; preds = %135, %128
  %154 = load i32, i32* @pbuf_zone, align 4
  %155 = load i32, i32* @M_WAITOK, align 4
  %156 = call %struct.buf* @uma_zalloc(i32 %154, i32 %155)
  store %struct.buf* %156, %struct.buf** %9, align 8
  %157 = load %struct.buf*, %struct.buf** %9, align 8
  %158 = getelementptr inbounds %struct.buf, %struct.buf* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  store i32* %159, i32** %12, align 8
  %160 = load i64, i64* @MAXPHYS, align 8
  %161 = call i32 @btoc(i64 %160)
  store i32 %161, i32* %18, align 4
  %162 = load %struct.buf*, %struct.buf** %9, align 8
  %163 = getelementptr inbounds %struct.buf, %struct.buf* %162, i32 0, i32 1
  %164 = load %struct.vm_page**, %struct.vm_page*** %163, align 8
  store %struct.vm_page** %164, %struct.vm_page*** %11, align 8
  br label %165

165:                                              ; preds = %153, %138
  br label %166

166:                                              ; preds = %165, %127
  %167 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %167, i32* %19, align 4
  %168 = load %struct.uio*, %struct.uio** %6, align 8
  %169 = getelementptr inbounds %struct.uio, %struct.uio* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @UIO_READ, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load i32, i32* @VM_PROT_WRITE, align 4
  %175 = load i32, i32* %19, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %19, align 4
  br label %177

177:                                              ; preds = %173, %166
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %178

178:                                              ; preds = %493, %177
  %179 = load i32, i32* %16, align 4
  %180 = load %struct.uio*, %struct.uio** %6, align 8
  %181 = getelementptr inbounds %struct.uio, %struct.uio* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %496

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %491, %184
  %186 = load %struct.uio*, %struct.uio** %6, align 8
  %187 = getelementptr inbounds %struct.uio, %struct.uio* %186, i32 0, i32 5
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %492

195:                                              ; preds = %185
  %196 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %197 = call i32 @g_reset_bio(%struct.bio.0* %196)
  %198 = load %struct.uio*, %struct.uio** %6, align 8
  %199 = getelementptr inbounds %struct.uio, %struct.uio* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @UIO_READ, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %195
  %204 = load i32, i32* @BIO_READ, align 4
  %205 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %206 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %205, i32 0, i32 11
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** @curthread, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  br label %221

212:                                              ; preds = %195
  %213 = load i32, i32* @BIO_WRITE, align 4
  %214 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %215 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %214, i32 0, i32 11
  store i32 %213, i32* %215, align 4
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** @curthread, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %212, %203
  %222 = load %struct.uio*, %struct.uio** %6, align 8
  %223 = getelementptr inbounds %struct.uio, %struct.uio* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %226 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %225, i32 0, i32 10
  store i32 %224, i32* %226, align 8
  %227 = load %struct.uio*, %struct.uio** %6, align 8
  %228 = getelementptr inbounds %struct.uio, %struct.uio* %227, i32 0, i32 5
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = load i8*, i8** %233, align 8
  %235 = ptrtoint i8* %234 to i32
  %236 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %237 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load %struct.uio*, %struct.uio** %6, align 8
  %239 = getelementptr inbounds %struct.uio, %struct.uio* %238, i32 0, i32 5
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = load i32, i32* %16, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %248 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %247, i32 0, i32 1
  store i64 %246, i64* %248, align 8
  %249 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %250 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.cdev*, %struct.cdev** %5, align 8
  %253 = getelementptr inbounds %struct.cdev, %struct.cdev* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp sgt i64 %251, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %221
  %257 = load %struct.cdev*, %struct.cdev** %5, align 8
  %258 = getelementptr inbounds %struct.cdev, %struct.cdev* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %261 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %260, i32 0, i32 1
  store i64 %259, i64* %261, align 8
  br label %262

262:                                              ; preds = %256, %221
  %263 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %264 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @MAXPHYS, align 8
  %267 = icmp sgt i64 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %262
  %269 = load i64, i64* @MAXPHYS, align 8
  %270 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %271 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %270, i32 0, i32 1
  store i64 %269, i64* %271, align 8
  br label %272

272:                                              ; preds = %268, %262
  %273 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %274 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = load i64, i64* @PAGE_MASK, align 8
  %278 = and i64 %276, %277
  store i64 %278, i64* %14, align 8
  %279 = load %struct.buf*, %struct.buf** %9, align 8
  %280 = icmp ne %struct.buf* %279, null
  br i1 %280, label %281, label %321

281:                                              ; preds = %272
  %282 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %283 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* %14, align 8
  %286 = add nsw i64 %284, %285
  %287 = load %struct.buf*, %struct.buf** %9, align 8
  %288 = getelementptr inbounds %struct.buf, %struct.buf* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp sgt i64 %286, %289
  br i1 %290, label %291, label %321

291:                                              ; preds = %281
  %292 = load %struct.cdev*, %struct.cdev** %5, align 8
  %293 = getelementptr inbounds %struct.cdev, %struct.cdev* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @SI_NOSPLIT, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %291
  %299 = load %struct.cdev*, %struct.cdev** %5, align 8
  %300 = call i8* @devtoname(%struct.cdev* %299)
  %301 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %302 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 (i8*, i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i8* %300, i32 %303)
  %305 = load i32, i32* @EFBIG, align 4
  store i32 %305, i32* %15, align 4
  br label %497

306:                                              ; preds = %291
  %307 = load %struct.buf*, %struct.buf** %9, align 8
  %308 = getelementptr inbounds %struct.buf, %struct.buf* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %311 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %310, i32 0, i32 1
  store i64 %309, i64* %311, align 8
  %312 = load i64, i64* %14, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %306
  %315 = load i64, i64* @PAGE_SIZE, align 8
  %316 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %317 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = sub nsw i64 %318, %315
  store i64 %319, i64* %317, align 8
  br label %320

320:                                              ; preds = %314, %306
  br label %321

321:                                              ; preds = %320, %281, %272
  %322 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %323 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %326 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %325, i32 0, i32 2
  store i64 %324, i64* %326, align 8
  %327 = load %struct.cdev*, %struct.cdev** %5, align 8
  %328 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %329 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %328, i32 0, i32 9
  store %struct.cdev* %327, %struct.cdev** %329, align 8
  %330 = load %struct.vm_page**, %struct.vm_page*** %11, align 8
  %331 = icmp ne %struct.vm_page** %330, null
  br i1 %331, label %332, label %388

332:                                              ; preds = %321
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** @curproc, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 0
  %337 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %338 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = sext i32 %339 to i64
  %341 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %342 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load i32, i32* %19, align 4
  %345 = load %struct.vm_page**, %struct.vm_page*** %11, align 8
  %346 = load i32, i32* %18, align 4
  %347 = call i32 @vm_fault_quick_hold_pages(i32* %336, i64 %340, i64 %343, i32 %344, %struct.vm_page** %345, i32 %346)
  store i32 %347, i32* %17, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %332
  %350 = load i32, i32* @EFAULT, align 4
  store i32 %350, i32* %15, align 4
  br label %497

351:                                              ; preds = %332
  %352 = load %struct.buf*, %struct.buf** %9, align 8
  %353 = icmp ne %struct.buf* %352, null
  br i1 %353, label %354, label %369

354:                                              ; preds = %351
  %355 = load i32*, i32** %12, align 8
  %356 = icmp ne i32* %355, null
  br i1 %356, label %357, label %369

357:                                              ; preds = %354
  %358 = load i32*, i32** %12, align 8
  %359 = ptrtoint i32* %358 to i64
  %360 = load %struct.vm_page**, %struct.vm_page*** %11, align 8
  %361 = load i32, i32* %17, align 4
  %362 = call i32 @pmap_qenter(i64 %359, %struct.vm_page** %360, i32 %361)
  %363 = load i32*, i32** %12, align 8
  %364 = load i64, i64* %14, align 8
  %365 = getelementptr inbounds i32, i32* %363, i64 %364
  %366 = ptrtoint i32* %365 to i32
  %367 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %368 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %367, i32 0, i32 0
  store i32 %366, i32* %368, align 8
  br label %387

369:                                              ; preds = %354, %351
  %370 = load %struct.vm_page**, %struct.vm_page*** %11, align 8
  %371 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %372 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %371, i32 0, i32 8
  store %struct.vm_page** %370, %struct.vm_page*** %372, align 8
  %373 = load i32, i32* %17, align 4
  %374 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %375 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %374, i32 0, i32 3
  store i32 %373, i32* %375, align 8
  %376 = load i64, i64* %14, align 8
  %377 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %378 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %377, i32 0, i32 7
  store i64 %376, i64* %378, align 8
  %379 = load i32, i32* @unmapped_buf, align 4
  %380 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %381 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %380, i32 0, i32 0
  store i32 %379, i32* %381, align 8
  %382 = load i32, i32* @BIO_UNMAPPED, align 4
  %383 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %384 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %385, %382
  store i32 %386, i32* %384, align 4
  br label %387

387:                                              ; preds = %369, %357
  br label %388

388:                                              ; preds = %387, %321
  %389 = load %struct.cdevsw*, %struct.cdevsw** %8, align 8
  %390 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %389, i32 0, i32 0
  %391 = load i32 (%struct.bio*)*, i32 (%struct.bio*)** %390, align 8
  %392 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %393 = bitcast %struct.bio.0* %392 to %struct.bio*
  %394 = call i32 %391(%struct.bio* %393)
  %395 = load %struct.uio*, %struct.uio** %6, align 8
  %396 = getelementptr inbounds %struct.uio, %struct.uio* %395, i32 0, i32 3
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @UIO_READ, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %403

400:                                              ; preds = %388
  %401 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %402 = call i32 @biowait(%struct.bio.0* %401, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %406

403:                                              ; preds = %388
  %404 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %405 = call i32 @biowait(%struct.bio.0* %404, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %406

406:                                              ; preds = %403, %400
  %407 = load %struct.vm_page**, %struct.vm_page*** %11, align 8
  %408 = icmp ne %struct.vm_page** %407, null
  br i1 %408, label %409, label %421

409:                                              ; preds = %406
  %410 = load %struct.buf*, %struct.buf** %9, align 8
  %411 = icmp ne %struct.buf* %410, null
  br i1 %411, label %412, label %417

412:                                              ; preds = %409
  %413 = load i32*, i32** %12, align 8
  %414 = ptrtoint i32* %413 to i64
  %415 = load i32, i32* %17, align 4
  %416 = call i32 @pmap_qremove(i64 %414, i32 %415)
  br label %417

417:                                              ; preds = %412, %409
  %418 = load %struct.vm_page**, %struct.vm_page*** %11, align 8
  %419 = load i32, i32* %17, align 4
  %420 = call i32 @vm_page_unhold_pages(%struct.vm_page** %418, i32 %419)
  br label %421

421:                                              ; preds = %417, %406
  %422 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %423 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %426 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %425, i32 0, i32 5
  %427 = load i64, i64* %426, align 8
  %428 = sub nsw i64 %424, %427
  store i64 %428, i64* %13, align 8
  %429 = load i64, i64* %13, align 8
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %431, label %439

431:                                              ; preds = %421
  %432 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %433 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %432, i32 0, i32 4
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* @BIO_ERROR, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %439, label %438

438:                                              ; preds = %431
  br label %497

439:                                              ; preds = %431, %421
  %440 = load i64, i64* %13, align 8
  %441 = load %struct.uio*, %struct.uio** %6, align 8
  %442 = getelementptr inbounds %struct.uio, %struct.uio* %441, i32 0, i32 5
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %442, align 8
  %444 = load i32, i32* %16, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %443, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = sext i32 %448 to i64
  %450 = sub nsw i64 %449, %440
  %451 = trunc i64 %450 to i32
  store i32 %451, i32* %447, align 8
  %452 = load %struct.uio*, %struct.uio** %6, align 8
  %453 = getelementptr inbounds %struct.uio, %struct.uio* %452, i32 0, i32 5
  %454 = load %struct.TYPE_13__*, %struct.TYPE_13__** %453, align 8
  %455 = load i32, i32* %16, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %454, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 1
  %459 = load i8*, i8** %458, align 8
  %460 = load i64, i64* %13, align 8
  %461 = getelementptr inbounds i8, i8* %459, i64 %460
  %462 = load %struct.uio*, %struct.uio** %6, align 8
  %463 = getelementptr inbounds %struct.uio, %struct.uio* %462, i32 0, i32 5
  %464 = load %struct.TYPE_13__*, %struct.TYPE_13__** %463, align 8
  %465 = load i32, i32* %16, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 1
  store i8* %461, i8** %468, align 8
  %469 = load i64, i64* %13, align 8
  %470 = load %struct.uio*, %struct.uio** %6, align 8
  %471 = getelementptr inbounds %struct.uio, %struct.uio* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = sub nsw i64 %472, %469
  store i64 %473, i64* %471, align 8
  %474 = load i64, i64* %13, align 8
  %475 = load %struct.uio*, %struct.uio** %6, align 8
  %476 = getelementptr inbounds %struct.uio, %struct.uio* %475, i32 0, i32 4
  %477 = load i32, i32* %476, align 8
  %478 = sext i32 %477 to i64
  %479 = add nsw i64 %478, %474
  %480 = trunc i64 %479 to i32
  store i32 %480, i32* %476, align 8
  %481 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %482 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %481, i32 0, i32 4
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @BIO_ERROR, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %491

487:                                              ; preds = %439
  %488 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %489 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %488, i32 0, i32 6
  %490 = load i32, i32* %489, align 8
  store i32 %490, i32* %15, align 4
  br label %497

491:                                              ; preds = %439
  br label %185

492:                                              ; preds = %185
  br label %493

493:                                              ; preds = %492
  %494 = load i32, i32* %16, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %16, align 4
  br label %178

496:                                              ; preds = %178
  br label %497

497:                                              ; preds = %496, %487, %438, %349, %298
  %498 = load %struct.buf*, %struct.buf** %9, align 8
  %499 = icmp ne %struct.buf* %498, null
  br i1 %499, label %500, label %504

500:                                              ; preds = %497
  %501 = load i32, i32* @pbuf_zone, align 4
  %502 = load %struct.buf*, %struct.buf** %9, align 8
  %503 = call i32 @uma_zfree(i32 %501, %struct.buf* %502)
  br label %512

504:                                              ; preds = %497
  %505 = load %struct.vm_page**, %struct.vm_page*** %11, align 8
  %506 = icmp ne %struct.vm_page** %505, null
  br i1 %506, label %507, label %511

507:                                              ; preds = %504
  %508 = load %struct.vm_page**, %struct.vm_page*** %11, align 8
  %509 = load i32, i32* @M_DEVBUF, align 4
  %510 = call i32 @free(%struct.vm_page** %508, i32 %509)
  br label %511

511:                                              ; preds = %507, %504
  br label %512

512:                                              ; preds = %511, %500
  %513 = load %struct.bio.0*, %struct.bio.0** %10, align 8
  %514 = call i32 @g_destroy_bio(%struct.bio.0* %513)
  %515 = load %struct.TYPE_14__*, %struct.TYPE_14__** @curproc, align 8
  %516 = call i32 @PRELE(%struct.TYPE_14__* %515)
  %517 = load i32, i32* %15, align 4
  store i32 %517, i32* %4, align 4
  br label %518

518:                                              ; preds = %512, %116, %25
  %519 = load i32, i32* %4, align 4
  ret i32 %519
}

declare dso_local i32 @printf(i8*, i8*, i64) #1

declare dso_local i8* @devtoname(%struct.cdev*) #1

declare dso_local i32 @uprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @PHOLD(%struct.TYPE_14__*) #1

declare dso_local %struct.bio.0* @g_alloc_bio(...) #1

declare dso_local i32 @btoc(i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local %struct.vm_page** @malloc(i32, i32, i32) #1

declare dso_local %struct.buf* @uma_zalloc(i32, i32) #1

declare dso_local i32 @g_reset_bio(%struct.bio.0*) #1

declare dso_local i32 @vm_fault_quick_hold_pages(i32*, i64, i64, i32, %struct.vm_page**, i32) #1

declare dso_local i32 @pmap_qenter(i64, %struct.vm_page**, i32) #1

declare dso_local i32 @biowait(%struct.bio.0*, i8*) #1

declare dso_local i32 @pmap_qremove(i64, i32) #1

declare dso_local i32 @vm_page_unhold_pages(%struct.vm_page**, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.buf*) #1

declare dso_local i32 @free(%struct.vm_page**, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio.0*) #1

declare dso_local i32 @PRELE(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
