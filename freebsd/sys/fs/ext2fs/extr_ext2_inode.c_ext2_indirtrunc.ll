; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_indirtrunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_indirtrunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.m_ext2fs* }
%struct.m_ext2fs = type { i64 }
%struct.buf = type { i32, i64, i64, i32, i64, i32, i32 }
%struct.vnode = type { i32 }

@SINGLE = common dso_local global i32 0, align 4
@B_DONE = common dso_local global i32 0, align 4
@B_DELWRI = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ext2_indirtrunc: bad buffer size\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32, i32, i32*)* @ext2_indirtrunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_indirtrunc(%struct.inode* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.buf*, align 8
  %15 = alloca %struct.m_ext2fs*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.m_ext2fs*, %struct.m_ext2fs** %30, align 8
  store %struct.m_ext2fs* %31, %struct.m_ext2fs** %15, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %28, align 4
  store i32 1, i32* %27, align 4
  %32 = load i32, i32* @SINGLE, align 4
  store i32 %32, i32* %19, align 4
  br label %33

33:                                               ; preds = %42, %6
  %34 = load i32, i32* %19, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %39 = call i32 @NINDIR(%struct.m_ext2fs* %38)
  %40 = load i32, i32* %27, align 4
  %41 = mul nsw i32 %40, %39
  store i32 %41, i32* %27, align 4
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %19, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %19, align 4
  br label %33

45:                                               ; preds = %33
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %25, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %27, align 4
  %51 = load i32, i32* %25, align 4
  %52 = sdiv i32 %51, %50
  store i32 %52, i32* %25, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %55 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @btodb(i64 %56)
  store i32 %57, i32* %20, align 4
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = call %struct.vnode* @ITOV(%struct.inode* %58)
  store %struct.vnode* %59, %struct.vnode** %16, align 8
  %60 = load %struct.vnode*, %struct.vnode** %16, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %63 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call %struct.buf* @getblk(%struct.vnode* %60, i32 %61, i32 %65, i32 0, i32 0, i32 0)
  store %struct.buf* %66, %struct.buf** %14, align 8
  %67 = load %struct.buf*, %struct.buf** %14, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @B_DONE, align 4
  %71 = load i32, i32* @B_DELWRI, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %53
  %76 = load i32, i32* @BIO_READ, align 4
  %77 = load %struct.buf*, %struct.buf** %14, align 8
  %78 = getelementptr inbounds %struct.buf, %struct.buf* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  %79 = load %struct.buf*, %struct.buf** %14, align 8
  %80 = getelementptr inbounds %struct.buf, %struct.buf* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.buf*, %struct.buf** %14, align 8
  %83 = getelementptr inbounds %struct.buf, %struct.buf* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %75
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.buf*, %struct.buf** %14, align 8
  %91 = getelementptr inbounds %struct.buf, %struct.buf* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.buf*, %struct.buf** %14, align 8
  %93 = call i32 @vfs_busy_pages(%struct.buf* %92, i32 0)
  %94 = load %struct.buf*, %struct.buf** %14, align 8
  %95 = getelementptr inbounds %struct.buf, %struct.buf* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dbtob(i32 %96)
  %98 = load %struct.buf*, %struct.buf** %14, align 8
  %99 = getelementptr inbounds %struct.buf, %struct.buf* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load %struct.buf*, %struct.buf** %14, align 8
  %101 = call i32 @bstrategy(%struct.buf* %100)
  %102 = load %struct.buf*, %struct.buf** %14, align 8
  %103 = call i32 @bufwait(%struct.buf* %102)
  store i32 %103, i32* %21, align 4
  br label %104

104:                                              ; preds = %88, %53
  %105 = load i32, i32* %21, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.buf*, %struct.buf** %14, align 8
  %109 = call i32 @brelse(%struct.buf* %108)
  %110 = load i32*, i32** %13, align 8
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* %21, align 4
  store i32 %111, i32* %7, align 4
  br label %273

112:                                              ; preds = %104
  %113 = load %struct.buf*, %struct.buf** %14, align 8
  %114 = getelementptr inbounds %struct.buf, %struct.buf* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %17, align 8
  %117 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %118 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @M_TEMP, align 4
  %121 = load i32, i32* @M_WAITOK, align 4
  %122 = call i32* @malloc(i64 %119, i32 %120, i32 %121)
  store i32* %122, i32** %18, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = ptrtoint i32* %123 to i32
  %125 = load i32*, i32** %18, align 8
  %126 = ptrtoint i32* %125 to i32
  %127 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %128 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @bcopy(i32 %124, i32 %126, i32 %130)
  %132 = load i32*, i32** %17, align 8
  %133 = load i32, i32* %25, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = ptrtoint i32* %136 to i32
  %138 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %139 = call i32 @NINDIR(%struct.m_ext2fs* %138)
  %140 = load i32, i32* %25, align 4
  %141 = add nsw i32 %140, 1
  %142 = sub nsw i32 %139, %141
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call i32 @bzero(i32 %137, i32 %145)
  %147 = load i32, i32* %25, align 4
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %155

149:                                              ; preds = %112
  %150 = load i32, i32* @B_INVAL, align 4
  %151 = load %struct.buf*, %struct.buf** %14, align 8
  %152 = getelementptr inbounds %struct.buf, %struct.buf* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %112
  %156 = load %struct.vnode*, %struct.vnode** %16, align 8
  %157 = call i64 @DOINGASYNC(%struct.vnode* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load %struct.buf*, %struct.buf** %14, align 8
  %161 = call i32 @bdwrite(%struct.buf* %160)
  br label %170

162:                                              ; preds = %155
  %163 = load %struct.buf*, %struct.buf** %14, align 8
  %164 = call i32 @bwrite(%struct.buf* %163)
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %21, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load i32, i32* %21, align 4
  store i32 %168, i32* %22, align 4
  br label %169

169:                                              ; preds = %167, %162
  br label %170

170:                                              ; preds = %169, %159
  %171 = load i32*, i32** %18, align 8
  store i32* %171, i32** %17, align 8
  %172 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %173 = call i32 @NINDIR(%struct.m_ext2fs* %172)
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %19, align 4
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* %27, align 4
  %179 = mul nsw i32 %177, %178
  %180 = sub nsw i32 %176, %179
  store i32 %180, i32* %24, align 4
  br label %181

181:                                              ; preds = %224, %170
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %25, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %230

185:                                              ; preds = %181
  %186 = load i32*, i32** %17, align 8
  %187 = load i32, i32* %19, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %23, align 4
  %191 = load i32, i32* %23, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  br label %224

194:                                              ; preds = %185
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @SINGLE, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %194
  %199 = load %struct.inode*, %struct.inode** %8, align 8
  %200 = load i32, i32* %24, align 4
  %201 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %202 = load i32, i32* %23, align 4
  %203 = call i32 @fsbtodb(%struct.m_ext2fs* %201, i32 %202)
  %204 = load i32, i32* %12, align 4
  %205 = sub nsw i32 %204, 1
  %206 = call i32 @ext2_indirtrunc(%struct.inode* %199, i32 %200, i32 %203, i32 -1, i32 %205, i32* %26)
  store i32 %206, i32* %21, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %198
  %209 = load i32, i32* %21, align 4
  store i32 %209, i32* %22, align 4
  br label %210

210:                                              ; preds = %208, %198
  %211 = load i32, i32* %26, align 4
  %212 = load i32, i32* %28, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %28, align 4
  br label %214

214:                                              ; preds = %210, %194
  %215 = load %struct.inode*, %struct.inode** %8, align 8
  %216 = load i32, i32* %23, align 4
  %217 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %218 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @ext2_blkfree(%struct.inode* %215, i32 %216, i64 %219)
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %28, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %28, align 4
  br label %224

224:                                              ; preds = %214, %193
  %225 = load i32, i32* %19, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %19, align 4
  %227 = load i32, i32* %27, align 4
  %228 = load i32, i32* %24, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %24, align 4
  br label %181

230:                                              ; preds = %181
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* @SINGLE, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %266

234:                                              ; preds = %230
  %235 = load i32, i32* %11, align 4
  %236 = icmp sge i32 %235, 0
  br i1 %236, label %237, label %266

237:                                              ; preds = %234
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* %27, align 4
  %240 = srem i32 %238, %239
  store i32 %240, i32* %25, align 4
  %241 = load i32*, i32** %17, align 8
  %242 = load i32, i32* %19, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %23, align 4
  %246 = load i32, i32* %23, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %265

248:                                              ; preds = %237
  %249 = load %struct.inode*, %struct.inode** %8, align 8
  %250 = load i32, i32* %24, align 4
  %251 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  %252 = load i32, i32* %23, align 4
  %253 = call i32 @fsbtodb(%struct.m_ext2fs* %251, i32 %252)
  %254 = load i32, i32* %25, align 4
  %255 = load i32, i32* %12, align 4
  %256 = sub nsw i32 %255, 1
  %257 = call i32 @ext2_indirtrunc(%struct.inode* %249, i32 %250, i32 %253, i32 %254, i32 %256, i32* %26)
  store i32 %257, i32* %21, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %248
  %260 = load i32, i32* %21, align 4
  store i32 %260, i32* %22, align 4
  br label %261

261:                                              ; preds = %259, %248
  %262 = load i32, i32* %26, align 4
  %263 = load i32, i32* %28, align 4
  %264 = add nsw i32 %263, %262
  store i32 %264, i32* %28, align 4
  br label %265

265:                                              ; preds = %261, %237
  br label %266

266:                                              ; preds = %265, %234, %230
  %267 = load i32*, i32** %18, align 8
  %268 = load i32, i32* @M_TEMP, align 4
  %269 = call i32 @free(i32* %267, i32 %268)
  %270 = load i32, i32* %28, align 4
  %271 = load i32*, i32** %13, align 8
  store i32 %270, i32* %271, align 4
  %272 = load i32, i32* %22, align 4
  store i32 %272, i32* %7, align 4
  br label %273

273:                                              ; preds = %266, %107
  %274 = load i32, i32* %7, align 4
  ret i32 %274
}

declare dso_local i32 @NINDIR(%struct.m_ext2fs*) #1

declare dso_local i32 @btodb(i64) #1

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

declare dso_local %struct.buf* @getblk(%struct.vnode*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vfs_busy_pages(%struct.buf*, i32) #1

declare dso_local i32 @dbtob(i32) #1

declare dso_local i32 @bstrategy(%struct.buf*) #1

declare dso_local i32 @bufwait(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @DOINGASYNC(%struct.vnode*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_blkfree(%struct.inode*, i32, i64) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
