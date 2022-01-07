; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_bufwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_bufwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32, i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.cg = type { i32, i32, i32 }

@KTR_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bufwrite(%p) vp %p flags %X\00", align 1
@B_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"bufwrite: buffer is not busy???\00", align 1
@BV_BKGRDINPROG = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4
@BV_BKGRDWAIT = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"bwrbg\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"bufwrite: still writing\00", align 1
@BV_BKGRDERR = common dso_local global i32 0, align 4
@dobkgrdwrite = common dso_local global i64 0, align 8
@BX_BKGRDWRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"bufwrite: needs chained iodone (%p)\00", align 1
@GB_NOWAIT_BD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Unmapped cg\00", align 1
@BX_FSPRIV = common dso_local global i32 0, align 4
@BX_BKGRDMARKER = common dso_local global i32 0, align 4
@ffs_backgroundwritedone = common dso_local global i32* null, align 8
@BX_CYLGRP = common dso_local global i32 0, align 4
@time_second = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buf*)* @ffs_bufwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_bufwrite(%struct.buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buf*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.cg*, align 8
  store %struct.buf* %0, %struct.buf** %3, align 8
  %6 = load i32, i32* @KTR_BUF, align 4
  %7 = load %struct.buf*, %struct.buf** %3, align 8
  %8 = load %struct.buf*, %struct.buf** %3, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.buf*, %struct.buf** %3, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @CTR3(i32 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.buf* %7, i32 %10, i32 %13)
  %15 = load %struct.buf*, %struct.buf** %3, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @B_INVAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.buf*, %struct.buf** %3, align 8
  %23 = call i32 @brelse(%struct.buf* %22)
  store i32 0, i32* %2, align 4
  br label %254

24:                                               ; preds = %1
  %25 = load %struct.buf*, %struct.buf** %3, align 8
  %26 = call i32 @BUF_ISLOCKED(%struct.buf* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load %struct.buf*, %struct.buf** %3, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BO_LOCK(i32 %33)
  %35 = load %struct.buf*, %struct.buf** %3, align 8
  %36 = getelementptr inbounds %struct.buf, %struct.buf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BV_BKGRDINPROG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %30
  %42 = load %struct.buf*, %struct.buf** %3, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @B_ASYNC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.buf*, %struct.buf** %3, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @BO_UNLOCK(i32 %51)
  %53 = load %struct.buf*, %struct.buf** %3, align 8
  %54 = call i32 @bdwrite(%struct.buf* %53)
  store i32 0, i32* %2, align 4
  br label %254

55:                                               ; preds = %41
  %56 = load i32, i32* @BV_BKGRDWAIT, align 4
  %57 = load %struct.buf*, %struct.buf** %3, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.buf*, %struct.buf** %3, align 8
  %62 = getelementptr inbounds %struct.buf, %struct.buf* %61, i32 0, i32 2
  %63 = load %struct.buf*, %struct.buf** %3, align 8
  %64 = getelementptr inbounds %struct.buf, %struct.buf* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @BO_LOCKPTR(i32 %65)
  %67 = load i32, i32* @PRIBIO, align 4
  %68 = call i32 @msleep(i32* %62, i32 %66, i32 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %69 = load %struct.buf*, %struct.buf** %3, align 8
  %70 = getelementptr inbounds %struct.buf, %struct.buf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BV_BKGRDINPROG, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %55
  br label %78

78:                                               ; preds = %77, %30
  %79 = load i32, i32* @BV_BKGRDERR, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.buf*, %struct.buf** %3, align 8
  %82 = getelementptr inbounds %struct.buf, %struct.buf* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.buf*, %struct.buf** %3, align 8
  %86 = getelementptr inbounds %struct.buf, %struct.buf* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @BO_UNLOCK(i32 %87)
  %89 = load i64, i64* @dobkgrdwrite, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %230

91:                                               ; preds = %78
  %92 = load %struct.buf*, %struct.buf** %3, align 8
  %93 = getelementptr inbounds %struct.buf, %struct.buf* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BX_BKGRDWRITE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %230

98:                                               ; preds = %91
  %99 = load %struct.buf*, %struct.buf** %3, align 8
  %100 = getelementptr inbounds %struct.buf, %struct.buf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @B_ASYNC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %230

105:                                              ; preds = %98
  %106 = call i32 (...) @vm_page_count_severe()
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %230, label %108

108:                                              ; preds = %105
  %109 = call i32 (...) @buf_dirty_count_severe()
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %230, label %111

111:                                              ; preds = %108
  %112 = load %struct.buf*, %struct.buf** %3, align 8
  %113 = getelementptr inbounds %struct.buf, %struct.buf* %112, i32 0, i32 7
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = load %struct.buf*, %struct.buf** %3, align 8
  %118 = getelementptr inbounds %struct.buf, %struct.buf* %117, i32 0, i32 7
  %119 = load i32*, i32** %118, align 8
  %120 = bitcast i32* %119 to i8*
  %121 = call i32 @KASSERT(i32 %116, i8* %120)
  %122 = load %struct.buf*, %struct.buf** %3, align 8
  %123 = getelementptr inbounds %struct.buf, %struct.buf* %122, i32 0, i32 12
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @GB_NOWAIT_BD, align 4
  %126 = call %struct.buf* @geteblk(i32 %124, i32 %125)
  store %struct.buf* %126, %struct.buf** %4, align 8
  %127 = load %struct.buf*, %struct.buf** %4, align 8
  %128 = icmp eq %struct.buf* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %111
  br label %234

130:                                              ; preds = %111
  %131 = load %struct.buf*, %struct.buf** %3, align 8
  %132 = call i32 @buf_mapped(%struct.buf* %131)
  %133 = call i32 @KASSERT(i32 %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %134 = load %struct.buf*, %struct.buf** %4, align 8
  %135 = getelementptr inbounds %struct.buf, %struct.buf* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.buf*, %struct.buf** %3, align 8
  %138 = getelementptr inbounds %struct.buf, %struct.buf* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.buf*, %struct.buf** %3, align 8
  %141 = getelementptr inbounds %struct.buf, %struct.buf* %140, i32 0, i32 12
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @memcpy(i64 %136, i64 %139, i32 %142)
  %144 = load %struct.buf*, %struct.buf** %3, align 8
  %145 = getelementptr inbounds %struct.buf, %struct.buf* %144, i32 0, i32 11
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @BO_LOCK(i32 %146)
  %148 = load i32, i32* @BV_BKGRDINPROG, align 4
  %149 = load %struct.buf*, %struct.buf** %3, align 8
  %150 = getelementptr inbounds %struct.buf, %struct.buf* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.buf*, %struct.buf** %3, align 8
  %154 = getelementptr inbounds %struct.buf, %struct.buf* %153, i32 0, i32 11
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @BO_UNLOCK(i32 %155)
  %157 = load %struct.buf*, %struct.buf** %3, align 8
  %158 = getelementptr inbounds %struct.buf, %struct.buf* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @BX_FSPRIV, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @BX_BKGRDMARKER, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.buf*, %struct.buf** %4, align 8
  %165 = getelementptr inbounds %struct.buf, %struct.buf* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load %struct.buf*, %struct.buf** %3, align 8
  %169 = getelementptr inbounds %struct.buf, %struct.buf* %168, i32 0, i32 10
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.buf*, %struct.buf** %4, align 8
  %172 = getelementptr inbounds %struct.buf, %struct.buf* %171, i32 0, i32 10
  store i32 %170, i32* %172, align 8
  %173 = load %struct.buf*, %struct.buf** %3, align 8
  %174 = getelementptr inbounds %struct.buf, %struct.buf* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.buf*, %struct.buf** %4, align 8
  %177 = getelementptr inbounds %struct.buf, %struct.buf* %176, i32 0, i32 9
  store i32 %175, i32* %177, align 4
  %178 = load %struct.buf*, %struct.buf** %3, align 8
  %179 = getelementptr inbounds %struct.buf, %struct.buf* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.buf*, %struct.buf** %4, align 8
  %182 = getelementptr inbounds %struct.buf, %struct.buf* %181, i32 0, i32 8
  store i32 %180, i32* %182, align 8
  %183 = load i32*, i32** @ffs_backgroundwritedone, align 8
  %184 = load %struct.buf*, %struct.buf** %4, align 8
  %185 = getelementptr inbounds %struct.buf, %struct.buf* %184, i32 0, i32 7
  store i32* %183, i32** %185, align 8
  %186 = load i32, i32* @B_ASYNC, align 4
  %187 = load %struct.buf*, %struct.buf** %4, align 8
  %188 = getelementptr inbounds %struct.buf, %struct.buf* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load i32, i32* @B_INVAL, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.buf*, %struct.buf** %4, align 8
  %194 = getelementptr inbounds %struct.buf, %struct.buf* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load %struct.buf*, %struct.buf** %3, align 8
  %198 = getelementptr inbounds %struct.buf, %struct.buf* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.buf*, %struct.buf** %4, align 8
  %201 = call i32 @pbgetvp(i32 %199, %struct.buf* %200)
  %202 = load %struct.buf*, %struct.buf** %3, align 8
  %203 = call i32 @bundirty(%struct.buf* %202)
  %204 = load %struct.buf*, %struct.buf** %3, align 8
  %205 = getelementptr inbounds %struct.buf, %struct.buf* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @BX_CYLGRP, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %130
  %211 = load %struct.buf*, %struct.buf** %3, align 8
  %212 = getelementptr inbounds %struct.buf, %struct.buf* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to %struct.cg*
  store %struct.cg* %214, %struct.cg** %5, align 8
  %215 = load %struct.cg*, %struct.cg** %5, align 8
  %216 = getelementptr inbounds %struct.cg, %struct.cg* %215, i32 0, i32 2
  store i32 0, i32* %216, align 4
  %217 = load %struct.buf*, %struct.buf** %3, align 8
  %218 = getelementptr inbounds %struct.buf, %struct.buf* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.buf*, %struct.buf** %3, align 8
  %221 = getelementptr inbounds %struct.buf, %struct.buf* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @calculate_crc32c(i64 -1, i64 %219, i32 %222)
  %224 = load %struct.cg*, %struct.cg** %5, align 8
  %225 = getelementptr inbounds %struct.cg, %struct.cg* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %210, %130
  %227 = load %struct.buf*, %struct.buf** %3, align 8
  %228 = call i32 @bqrelse(%struct.buf* %227)
  %229 = load %struct.buf*, %struct.buf** %4, align 8
  store %struct.buf* %229, %struct.buf** %3, align 8
  br label %233

230:                                              ; preds = %108, %105, %98, %91, %78
  %231 = load %struct.buf*, %struct.buf** %3, align 8
  %232 = call i32 @bundirty(%struct.buf* %231)
  br label %233

233:                                              ; preds = %230, %226
  br label %234

234:                                              ; preds = %233, %129
  %235 = load %struct.buf*, %struct.buf** %3, align 8
  %236 = getelementptr inbounds %struct.buf, %struct.buf* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @BX_CYLGRP, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %251

241:                                              ; preds = %234
  %242 = load %struct.buf*, %struct.buf** %3, align 8
  %243 = getelementptr inbounds %struct.buf, %struct.buf* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = inttoptr i64 %244 to %struct.cg*
  store %struct.cg* %245, %struct.cg** %5, align 8
  %246 = load i32, i32* @time_second, align 4
  %247 = load %struct.cg*, %struct.cg** %5, align 8
  %248 = getelementptr inbounds %struct.cg, %struct.cg* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 4
  %249 = load %struct.cg*, %struct.cg** %5, align 8
  %250 = getelementptr inbounds %struct.cg, %struct.cg* %249, i32 0, i32 1
  store i32 %246, i32* %250, align 4
  br label %251

251:                                              ; preds = %241, %234
  %252 = load %struct.buf*, %struct.buf** %3, align 8
  %253 = call i32 @bufwrite(%struct.buf* %252)
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %251, %48, %21
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @CTR3(i32, i8*, %struct.buf*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @BUF_ISLOCKED(%struct.buf*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @BO_LOCK(i32) #1

declare dso_local i32 @BO_UNLOCK(i32) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @BO_LOCKPTR(i32) #1

declare dso_local i32 @vm_page_count_severe(...) #1

declare dso_local i32 @buf_dirty_count_severe(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.buf* @geteblk(i32, i32) #1

declare dso_local i32 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @pbgetvp(i32, %struct.buf*) #1

declare dso_local i32 @bundirty(%struct.buf*) #1

declare dso_local i32 @calculate_crc32c(i64, i64, i32) #1

declare dso_local i32 @bqrelse(%struct.buf*) #1

declare dso_local i32 @bufwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
