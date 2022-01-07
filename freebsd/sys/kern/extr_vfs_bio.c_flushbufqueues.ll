; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_flushbufqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_flushbufqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.bufdomain = type { %struct.bufqueue }
%struct.bufqueue = type { i32 }
%struct.buf = type { i64, i32, i32, %struct.vnode*, i32 }
%struct.mount = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@QUEUE_SENTINEL = common dso_local global i64 0, align 8
@b_freelist = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@BV_BKGRDINPROG = common dso_local global i32 0, align 4
@B_DELWRI = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"getbuf\00", align 1
@LK_TRYUPGRADE = common dso_local global i32 0, align 4
@KTR_BUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"flushbufqueue(%p) vp %p flags %X\00", align 1
@curproc = common dso_local global i64 0, align 8
@bufdaemonproc = common dso_local global i64 0, align 8
@notbufdflushes = common dso_local global i32 0, align 4
@flushwithdeps = common dso_local global i32 0, align 4
@runningbufspace = common dso_local global i64 0, align 8
@hirunningspace = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.bufdomain*, i32, i32)* @flushbufqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flushbufqueues(%struct.vnode* %0, %struct.bufdomain* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.bufdomain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bufqueue*, align 8
  %10 = alloca %struct.buf*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.mount*, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.bufdomain* %1, %struct.bufdomain** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.bufdomain*, %struct.bufdomain** %6, align 8
  %19 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %18, i32 0, i32 0
  store %struct.bufqueue* %19, %struct.bufqueue** %9, align 8
  store %struct.buf* null, %struct.buf** %13, align 8
  %20 = load i32, i32* @M_TEMP, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.buf* @malloc(i32 32, i32 %20, i32 %23)
  store %struct.buf* %24, %struct.buf** %10, align 8
  %25 = load i64, i64* @QUEUE_SENTINEL, align 8
  %26 = load %struct.buf*, %struct.buf** %10, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %29 = call i32 @BQ_LOCK(%struct.bufqueue* %28)
  %30 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %31 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %30, i32 0, i32 0
  %32 = load %struct.buf*, %struct.buf** %10, align 8
  %33 = load i32, i32* @b_freelist, align 4
  %34 = call i32 @TAILQ_INSERT_HEAD(i32* %31, %struct.buf* %32, i32 %33)
  %35 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %36 = call i32 @BQ_UNLOCK(%struct.bufqueue* %35)
  br label %37

37:                                               ; preds = %226, %225, %150, %137, %118, %108, %93, %80, %4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %231

41:                                               ; preds = %37
  %42 = call i32 (...) @maybe_yield()
  %43 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %44 = call i32 @BQ_LOCK(%struct.bufqueue* %43)
  %45 = load %struct.buf*, %struct.buf** %10, align 8
  %46 = load i32, i32* @b_freelist, align 4
  %47 = call %struct.buf* @TAILQ_NEXT(%struct.buf* %45, i32 %46)
  store %struct.buf* %47, %struct.buf** %13, align 8
  %48 = load %struct.buf*, %struct.buf** %13, align 8
  %49 = icmp ne %struct.buf* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %41
  %51 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %52 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %51, i32 0, i32 0
  %53 = load %struct.buf*, %struct.buf** %10, align 8
  %54 = load i32, i32* @b_freelist, align 4
  %55 = call i32 @TAILQ_REMOVE(i32* %52, %struct.buf* %53, i32 %54)
  %56 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %57 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %56, i32 0, i32 0
  %58 = load %struct.buf*, %struct.buf** %13, align 8
  %59 = load %struct.buf*, %struct.buf** %10, align 8
  %60 = load i32, i32* @b_freelist, align 4
  %61 = call i32 @TAILQ_INSERT_AFTER(i32* %57, %struct.buf* %58, %struct.buf* %59, i32 %60)
  br label %65

62:                                               ; preds = %41
  %63 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %64 = call i32 @BQ_UNLOCK(%struct.bufqueue* %63)
  br label %231

65:                                               ; preds = %50
  %66 = load %struct.buf*, %struct.buf** %13, align 8
  %67 = getelementptr inbounds %struct.buf, %struct.buf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @QUEUE_SENTINEL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = load %struct.vnode*, %struct.vnode** %5, align 8
  %73 = icmp ne %struct.vnode* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.buf*, %struct.buf** %13, align 8
  %76 = getelementptr inbounds %struct.buf, %struct.buf* %75, i32 0, i32 3
  %77 = load %struct.vnode*, %struct.vnode** %76, align 8
  %78 = load %struct.vnode*, %struct.vnode** %5, align 8
  %79 = icmp ne %struct.vnode* %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %65
  %81 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %82 = call i32 @BQ_UNLOCK(%struct.bufqueue* %81)
  br label %37

83:                                               ; preds = %74, %71
  %84 = load %struct.buf*, %struct.buf** %13, align 8
  %85 = load i32, i32* @LK_EXCLUSIVE, align 4
  %86 = load i32, i32* @LK_NOWAIT, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @BUF_LOCK(%struct.buf* %84, i32 %87, i32* null)
  store i32 %88, i32* %16, align 4
  %89 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %90 = call i32 @BQ_UNLOCK(%struct.bufqueue* %89)
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %37

94:                                               ; preds = %83
  %95 = load %struct.buf*, %struct.buf** %13, align 8
  %96 = getelementptr inbounds %struct.buf, %struct.buf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @BV_BKGRDINPROG, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = load %struct.buf*, %struct.buf** %13, align 8
  %103 = getelementptr inbounds %struct.buf, %struct.buf* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @B_DELWRI, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101, %94
  %109 = load %struct.buf*, %struct.buf** %13, align 8
  %110 = call i32 @BUF_UNLOCK(%struct.buf* %109)
  br label %37

111:                                              ; preds = %101
  %112 = load %struct.buf*, %struct.buf** %13, align 8
  %113 = getelementptr inbounds %struct.buf, %struct.buf* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @B_INVAL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = load %struct.buf*, %struct.buf** %13, align 8
  %120 = call i32 @bremfreef(%struct.buf* %119)
  %121 = load %struct.buf*, %struct.buf** %13, align 8
  %122 = call i32 @brelse(%struct.buf* %121)
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %37

125:                                              ; preds = %111
  %126 = load %struct.buf*, %struct.buf** %13, align 8
  %127 = getelementptr inbounds %struct.buf, %struct.buf* %126, i32 0, i32 4
  %128 = call i32 @LIST_EMPTY(i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %125
  %131 = load %struct.buf*, %struct.buf** %13, align 8
  %132 = call i64 @buf_countdeps(%struct.buf* %131, i32 0)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.buf*, %struct.buf** %13, align 8
  %139 = call i32 @BUF_UNLOCK(%struct.buf* %138)
  br label %37

140:                                              ; preds = %134
  store i32 1, i32* %14, align 4
  br label %142

141:                                              ; preds = %130, %125
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %141, %140
  %143 = load %struct.buf*, %struct.buf** %13, align 8
  %144 = getelementptr inbounds %struct.buf, %struct.buf* %143, i32 0, i32 3
  %145 = load %struct.vnode*, %struct.vnode** %144, align 8
  store %struct.vnode* %145, %struct.vnode** %11, align 8
  %146 = load %struct.vnode*, %struct.vnode** %11, align 8
  %147 = load i32, i32* @V_NOWAIT, align 4
  %148 = call i64 @vn_start_write(%struct.vnode* %146, %struct.mount** %12, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load %struct.buf*, %struct.buf** %13, align 8
  %152 = call i32 @BUF_UNLOCK(%struct.buf* %151)
  br label %37

153:                                              ; preds = %142
  %154 = load %struct.vnode*, %struct.vnode** %5, align 8
  %155 = icmp eq %struct.vnode* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  store i32 1, i32* %17, align 4
  %157 = load %struct.vnode*, %struct.vnode** %11, align 8
  %158 = load i32, i32* @LK_EXCLUSIVE, align 4
  %159 = load i32, i32* @LK_NOWAIT, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @vn_lock(%struct.vnode* %157, i32 %160)
  store i32 %161, i32* %16, align 4
  br label %176

162:                                              ; preds = %153
  %163 = load %struct.vnode*, %struct.vnode** %11, align 8
  %164 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  %165 = load %struct.vnode*, %struct.vnode** %11, align 8
  %166 = call i32 @VOP_ISLOCKED(%struct.vnode* %165)
  %167 = load i32, i32* @LK_EXCLUSIVE, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %174

170:                                              ; preds = %162
  %171 = load %struct.vnode*, %struct.vnode** %11, align 8
  %172 = load i32, i32* @LK_TRYUPGRADE, align 4
  %173 = call i32 @vn_lock(%struct.vnode* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %169
  %175 = phi i32 [ 0, %169 ], [ %173, %170 ]
  store i32 %175, i32* %16, align 4
  br label %176

176:                                              ; preds = %174, %156
  %177 = load i32, i32* %16, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %226

179:                                              ; preds = %176
  %180 = load i32, i32* @KTR_BUF, align 4
  %181 = load %struct.buf*, %struct.buf** %13, align 8
  %182 = load %struct.buf*, %struct.buf** %13, align 8
  %183 = getelementptr inbounds %struct.buf, %struct.buf* %182, i32 0, i32 3
  %184 = load %struct.vnode*, %struct.vnode** %183, align 8
  %185 = load %struct.buf*, %struct.buf** %13, align 8
  %186 = getelementptr inbounds %struct.buf, %struct.buf* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @CTR3(i32 %180, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.buf* %181, %struct.vnode* %184, i32 %187)
  %189 = load i64, i64* @curproc, align 8
  %190 = load i64, i64* @bufdaemonproc, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %179
  %193 = load %struct.buf*, %struct.buf** %13, align 8
  %194 = call i32 @vfs_bio_awrite(%struct.buf* %193)
  br label %202

195:                                              ; preds = %179
  %196 = load %struct.buf*, %struct.buf** %13, align 8
  %197 = call i32 @bremfree(%struct.buf* %196)
  %198 = load %struct.buf*, %struct.buf** %13, align 8
  %199 = call i32 @bwrite(%struct.buf* %198)
  %200 = load i32, i32* @notbufdflushes, align 4
  %201 = call i32 @counter_u64_add(i32 %200, i32 1)
  br label %202

202:                                              ; preds = %195, %192
  %203 = load %struct.mount*, %struct.mount** %12, align 8
  %204 = call i32 @vn_finished_write(%struct.mount* %203)
  %205 = load i32, i32* %17, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load %struct.vnode*, %struct.vnode** %11, align 8
  %209 = call i32 @VOP_UNLOCK(%struct.vnode* %208, i32 0)
  br label %210

210:                                              ; preds = %207, %202
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @flushwithdeps, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* @flushwithdeps, align 4
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %15, align 4
  %216 = load i64, i64* @curproc, align 8
  %217 = load i64, i64* @bufdaemonproc, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %210
  %220 = load i64, i64* @runningbufspace, align 8
  %221 = load i64, i64* @hirunningspace, align 8
  %222 = icmp sgt i64 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = call i32 (...) @waitrunningbufspace()
  br label %225

225:                                              ; preds = %223, %219, %210
  br label %37

226:                                              ; preds = %176
  %227 = load %struct.mount*, %struct.mount** %12, align 8
  %228 = call i32 @vn_finished_write(%struct.mount* %227)
  %229 = load %struct.buf*, %struct.buf** %13, align 8
  %230 = call i32 @BUF_UNLOCK(%struct.buf* %229)
  br label %37

231:                                              ; preds = %62, %37
  %232 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %233 = call i32 @BQ_LOCK(%struct.bufqueue* %232)
  %234 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %235 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %234, i32 0, i32 0
  %236 = load %struct.buf*, %struct.buf** %10, align 8
  %237 = load i32, i32* @b_freelist, align 4
  %238 = call i32 @TAILQ_REMOVE(i32* %235, %struct.buf* %236, i32 %237)
  %239 = load %struct.bufqueue*, %struct.bufqueue** %9, align 8
  %240 = call i32 @BQ_UNLOCK(%struct.bufqueue* %239)
  %241 = load %struct.buf*, %struct.buf** %10, align 8
  %242 = load i32, i32* @M_TEMP, align 4
  %243 = call i32 @free(%struct.buf* %241, i32 %242)
  %244 = load i32, i32* %15, align 4
  ret i32 %244
}

declare dso_local %struct.buf* @malloc(i32, i32, i32) #1

declare dso_local i32 @BQ_LOCK(%struct.bufqueue*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.buf*, i32) #1

declare dso_local i32 @BQ_UNLOCK(%struct.bufqueue*) #1

declare dso_local i32 @maybe_yield(...) #1

declare dso_local %struct.buf* @TAILQ_NEXT(%struct.buf*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.buf*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.buf*, %struct.buf*, i32) #1

declare dso_local i32 @BUF_LOCK(%struct.buf*, i32, i32*) #1

declare dso_local i32 @BUF_UNLOCK(%struct.buf*) #1

declare dso_local i32 @bremfreef(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i64 @buf_countdeps(%struct.buf*, i32) #1

declare dso_local i64 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.buf*, %struct.vnode*, i32) #1

declare dso_local i32 @vfs_bio_awrite(%struct.buf*) #1

declare dso_local i32 @bremfree(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @waitrunningbufspace(...) #1

declare dso_local i32 @free(%struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
