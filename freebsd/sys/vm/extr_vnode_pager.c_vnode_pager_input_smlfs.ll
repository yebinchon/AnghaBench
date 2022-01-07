; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_input_smlfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_input_smlfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.vnode* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.vnode = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.bufobj = type { i32 }
%struct.buf = type { i64, i64, i32, i32, i32, i32, i32, %struct.vnode*, i32, i64, i32, i32 }
%struct.sf_buf = type { i32 }

@VI_DOOMED = common dso_local global i32 0, align 4
@VM_PAGER_BAD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@vnode_pbuf_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@bdone = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"leaking read ucred\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"leaking write ucred\00", align 1
@curthread = common dso_local global %struct.TYPE_13__* null, align 8
@runningbufspace = common dso_local global i32 0, align 4
@PVM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"vnsrd\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"vnode_pager_input_smlfs: page %p is dirty\00", align 1
@VM_PAGER_ERROR = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @vnode_pager_input_smlfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_pager_input_smlfs(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.bufobj*, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.sf_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %6, align 8
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VI_DOOMED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @VM_PAGER_BAD, align 4
  store i32 %26, i32* %3, align 4
  br label %230

27:                                               ; preds = %2
  %28 = load %struct.vnode*, %struct.vnode** %6, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.vnode*, %struct.vnode** %6, align 8
  %35 = call i32 @VOP_BMAP(%struct.vnode* %34, i32 0, %struct.bufobj** %7, i32 0, i32* null, i32* null)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = call %struct.sf_buf* @sf_buf_alloc(%struct.TYPE_18__* %36, i32 0)
  store %struct.sf_buf* %37, %struct.sf_buf** %9, align 8
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %218, %27
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sdiv i32 %40, %41
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %221

44:                                               ; preds = %38
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @vm_page_bits(i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %218

57:                                               ; preds = %44
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IDX_TO_OFF(i32 %60)
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %61, %65
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %67, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %57
  store i32 -1, i32* %10, align 4
  br label %83

75:                                               ; preds = %57
  %76 = load %struct.vnode*, %struct.vnode** %6, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @vnode_pager_addr(%struct.vnode* %76, i64 %77, i32* %10, i32* null)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %221

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %74
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %188

86:                                               ; preds = %83
  %87 = load i32, i32* @vnode_pbuf_zone, align 4
  %88 = load i32, i32* @M_WAITOK, align 4
  %89 = call %struct.buf* @uma_zalloc(i32 %87, i32 %88)
  store %struct.buf* %89, %struct.buf** %8, align 8
  %90 = load i32, i32* @BIO_READ, align 4
  %91 = load %struct.buf*, %struct.buf** %8, align 8
  %92 = getelementptr inbounds %struct.buf, %struct.buf* %91, i32 0, i32 11
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @bdone, align 4
  %94 = load %struct.buf*, %struct.buf** %8, align 8
  %95 = getelementptr inbounds %struct.buf, %struct.buf* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 8
  %96 = load %struct.buf*, %struct.buf** %8, align 8
  %97 = getelementptr inbounds %struct.buf, %struct.buf* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NOCRED, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @KASSERT(i32 %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.buf*, %struct.buf** %8, align 8
  %104 = getelementptr inbounds %struct.buf, %struct.buf* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NOCRED, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @KASSERT(i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curthread, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @crhold(i32 %112)
  %114 = ptrtoint i8* %113 to i64
  %115 = load %struct.buf*, %struct.buf** %8, align 8
  %116 = getelementptr inbounds %struct.buf, %struct.buf* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curthread, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @crhold(i32 %119)
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.buf*, %struct.buf** %8, align 8
  %123 = getelementptr inbounds %struct.buf, %struct.buf* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.sf_buf*, %struct.sf_buf** %9, align 8
  %125 = call i64 @sf_buf_kva(%struct.sf_buf* %124)
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %11, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %125, %129
  %131 = load %struct.buf*, %struct.buf** %8, align 8
  %132 = getelementptr inbounds %struct.buf, %struct.buf* %131, i32 0, i32 9
  store i64 %130, i64* %132, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.buf*, %struct.buf** %8, align 8
  %135 = getelementptr inbounds %struct.buf, %struct.buf* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.bufobj*, %struct.bufobj** %7, align 8
  %137 = load %struct.buf*, %struct.buf** %8, align 8
  %138 = call i32 @pbgetbo(%struct.bufobj* %136, %struct.buf* %137)
  %139 = load %struct.vnode*, %struct.vnode** %6, align 8
  %140 = load %struct.buf*, %struct.buf** %8, align 8
  %141 = getelementptr inbounds %struct.buf, %struct.buf* %140, i32 0, i32 7
  store %struct.vnode* %139, %struct.vnode** %141, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.buf*, %struct.buf** %8, align 8
  %144 = getelementptr inbounds %struct.buf, %struct.buf* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.buf*, %struct.buf** %8, align 8
  %147 = getelementptr inbounds %struct.buf, %struct.buf* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load %struct.buf*, %struct.buf** %8, align 8
  %149 = getelementptr inbounds %struct.buf, %struct.buf* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.buf*, %struct.buf** %8, align 8
  %152 = getelementptr inbounds %struct.buf, %struct.buf* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 4
  %153 = load %struct.buf*, %struct.buf** %8, align 8
  %154 = getelementptr inbounds %struct.buf, %struct.buf* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @atomic_add_long(i32* @runningbufspace, i32 %155)
  %157 = load %struct.buf*, %struct.buf** %8, align 8
  %158 = getelementptr inbounds %struct.buf, %struct.buf* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @dbtob(i32 %159)
  %161 = load %struct.buf*, %struct.buf** %8, align 8
  %162 = getelementptr inbounds %struct.buf, %struct.buf* %161, i32 0, i32 8
  store i32 %160, i32* %162, align 8
  %163 = load %struct.buf*, %struct.buf** %8, align 8
  %164 = call i32 @bstrategy(%struct.buf* %163)
  %165 = load %struct.buf*, %struct.buf** %8, align 8
  %166 = load i32, i32* @PVM, align 4
  %167 = call i32 @bwait(%struct.buf* %165, i32 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %168 = load %struct.buf*, %struct.buf** %8, align 8
  %169 = getelementptr inbounds %struct.buf, %struct.buf* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @BIO_ERROR, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %86
  %175 = load i32, i32* @EIO, align 4
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %174, %86
  %177 = load %struct.buf*, %struct.buf** %8, align 8
  %178 = getelementptr inbounds %struct.buf, %struct.buf* %177, i32 0, i32 7
  store %struct.vnode* null, %struct.vnode** %178, align 8
  %179 = load %struct.buf*, %struct.buf** %8, align 8
  %180 = call i32 @pbrelbo(%struct.buf* %179)
  %181 = load i32, i32* @vnode_pbuf_zone, align 4
  %182 = load %struct.buf*, %struct.buf** %8, align 8
  %183 = call i32 @uma_zfree(i32 %181, %struct.buf* %182)
  %184 = load i32, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  br label %221

187:                                              ; preds = %176
  br label %198

188:                                              ; preds = %83
  %189 = load %struct.sf_buf*, %struct.sf_buf** %9, align 8
  %190 = call i64 @sf_buf_kva(%struct.sf_buf* %189)
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %11, align 4
  %193 = mul nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %190, %194
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @bzero(i64 %195, i32 %196)
  br label %198

198:                                              ; preds = %188, %187
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %12, align 4
  %203 = and i32 %201, %202
  %204 = icmp eq i32 %203, 0
  %205 = zext i1 %204 to i32
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %207 = bitcast %struct.TYPE_18__* %206 to i8*
  %208 = call i32 @KASSERT(i32 %205, i8* %207)
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %210 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_19__* %209)
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 4
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %217 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_19__* %216)
  br label %218

218:                                              ; preds = %198, %56
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %14, align 4
  br label %38

221:                                              ; preds = %186, %81, %38
  %222 = load %struct.sf_buf*, %struct.sf_buf** %9, align 8
  %223 = call i32 @sf_buf_free(%struct.sf_buf* %222)
  %224 = load i32, i32* %13, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load i32, i32* @VM_PAGER_ERROR, align 4
  store i32 %227, i32* %3, align 4
  br label %230

228:                                              ; preds = %221
  %229 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %229, i32* %3, align 4
  br label %230

230:                                              ; preds = %228, %226, %25
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @VOP_BMAP(%struct.vnode*, i32, %struct.bufobj**, i32, i32*, i32*) #1

declare dso_local %struct.sf_buf* @sf_buf_alloc(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @vm_page_bits(i32, i32) #1

declare dso_local i64 @IDX_TO_OFF(i32) #1

declare dso_local i32 @vnode_pager_addr(%struct.vnode*, i64, i32*, i32*) #1

declare dso_local %struct.buf* @uma_zalloc(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @crhold(i32) #1

declare dso_local i64 @sf_buf_kva(%struct.sf_buf*) #1

declare dso_local i32 @pbgetbo(%struct.bufobj*, %struct.buf*) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i32 @dbtob(i32) #1

declare dso_local i32 @bstrategy(%struct.buf*) #1

declare dso_local i32 @bwait(%struct.buf*, i32, i8*) #1

declare dso_local i32 @pbrelbo(%struct.buf*) #1

declare dso_local i32 @uma_zfree(i32, %struct.buf*) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_19__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_19__*) #1

declare dso_local i32 @sf_buf_free(%struct.sf_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
