; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_read_args = type { i32, %struct.uio*, %struct.vnode* }
%struct.uio = type { i64, i64 }
%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buf = type { i64, i64 }
%struct.denode = type { i32, i64, i32, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32, i64, %struct.vnode* }

@IO_SEQSHIFT = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@MNT_NOCLUSTERR = common dso_local global i32 0, align 4
@MNT_NOATIME = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@DE_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_read_args*)* @msdosfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_read(%struct.vop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_read_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buf*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.denode*, align 8
  %18 = alloca %struct.msdosfsmount*, align 8
  %19 = alloca %struct.uio*, align 8
  store %struct.vop_read_args* %0, %struct.vop_read_args** %3, align 8
  store i32 0, i32* %4, align 4
  %20 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %20, i32 0, i32 2
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %16, align 8
  %23 = load %struct.vnode*, %struct.vnode** %16, align 8
  %24 = call %struct.denode* @VTODE(%struct.vnode* %23)
  store %struct.denode* %24, %struct.denode** %17, align 8
  %25 = load %struct.denode*, %struct.denode** %17, align 8
  %26 = getelementptr inbounds %struct.denode, %struct.denode* %25, i32 0, i32 3
  %27 = load %struct.msdosfsmount*, %struct.msdosfsmount** %26, align 8
  store %struct.msdosfsmount* %27, %struct.msdosfsmount** %18, align 8
  %28 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %28, i32 0, i32 1
  %30 = load %struct.uio*, %struct.uio** %29, align 8
  store %struct.uio* %30, %struct.uio** %19, align 8
  %31 = load %struct.uio*, %struct.uio** %19, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %262

37:                                               ; preds = %1
  %38 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %39 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IO_SEQSHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %14, align 4
  %43 = load %struct.denode*, %struct.denode** %17, align 8
  %44 = getelementptr inbounds %struct.denode, %struct.denode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ATTR_DIRECTORY, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %229, %37
  %49 = load %struct.uio*, %struct.uio** %19, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.denode*, %struct.denode** %17, align 8
  %53 = getelementptr inbounds %struct.denode, %struct.denode* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %231

57:                                               ; preds = %48
  %58 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %59 = load %struct.uio*, %struct.uio** %19, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @de_cluster(%struct.msdosfsmount* %58, i64 %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %12, align 8
  %65 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %66 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %5, align 4
  %68 = load %struct.uio*, %struct.uio** %19, align 8
  %69 = getelementptr inbounds %struct.uio, %struct.uio* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %72 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %70, %73
  store i64 %74, i64* %10, align 8
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %57
  %78 = load %struct.denode*, %struct.denode** %17, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @pcbmap(%struct.denode* %78, i64 %79, i64* %11, i32 0, i32* %5)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @E2BIG, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %4, align 4
  br label %231

86:                                               ; preds = %77
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %231

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %93 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %92, i32 0, i32 2
  %94 = load %struct.vnode*, %struct.vnode** %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @NOCRED, align 4
  %98 = call i32 @bread(%struct.vnode* %94, i64 %95, i32 %96, i32 %97, %struct.buf** %15)
  store i32 %98, i32* %4, align 4
  br label %156

99:                                               ; preds = %57
  %100 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i64 @de_cn2off(%struct.msdosfsmount* %100, i64 %101)
  %103 = load %struct.denode*, %struct.denode** %17, align 8
  %104 = getelementptr inbounds %struct.denode, %struct.denode* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load %struct.vnode*, %struct.vnode** %16, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @NOCRED, align 4
  %112 = call i32 @bread(%struct.vnode* %108, i64 %109, i32 %110, i32 %111, %struct.buf** %15)
  store i32 %112, i32* %4, align 4
  br label %155

113:                                              ; preds = %99
  %114 = load %struct.vnode*, %struct.vnode** %16, align 8
  %115 = getelementptr inbounds %struct.vnode, %struct.vnode* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MNT_NOCLUSTERR, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %113
  %123 = load %struct.vnode*, %struct.vnode** %16, align 8
  %124 = load %struct.denode*, %struct.denode** %17, align 8
  %125 = getelementptr inbounds %struct.denode, %struct.denode* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @NOCRED, align 4
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.uio*, %struct.uio** %19, align 8
  %132 = getelementptr inbounds %struct.uio, %struct.uio* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @cluster_read(%struct.vnode* %123, i64 %126, i64 %127, i32 %128, i32 %129, i64 %134, i32 %135, i32 0, %struct.buf** %15)
  store i32 %136, i32* %4, align 4
  br label %154

137:                                              ; preds = %113
  %138 = load i32, i32* %14, align 4
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %13, align 4
  %142 = load %struct.vnode*, %struct.vnode** %16, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @NOCRED, align 4
  %146 = call i32 @breadn(%struct.vnode* %142, i64 %143, i32 %144, i64* %12, i32* %13, i32 1, i32 %145, %struct.buf** %15)
  store i32 %146, i32* %4, align 4
  br label %153

147:                                              ; preds = %137
  %148 = load %struct.vnode*, %struct.vnode** %16, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @NOCRED, align 4
  %152 = call i32 @bread(%struct.vnode* %148, i64 %149, i32 %150, i32 %151, %struct.buf** %15)
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %147, %140
  br label %154

154:                                              ; preds = %153, %122
  br label %155

155:                                              ; preds = %154, %107
  br label %156

156:                                              ; preds = %155, %91
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.buf*, %struct.buf** %15, align 8
  %161 = call i32 @brelse(%struct.buf* %160)
  br label %231

162:                                              ; preds = %156
  %163 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %164 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %10, align 8
  %168 = sub nsw i64 %166, %167
  store i64 %168, i64* %9, align 8
  %169 = load i64, i64* %9, align 8
  %170 = load %struct.uio*, %struct.uio** %19, align 8
  %171 = getelementptr inbounds %struct.uio, %struct.uio* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp sgt i64 %169, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %162
  %175 = load %struct.uio*, %struct.uio** %19, align 8
  %176 = getelementptr inbounds %struct.uio, %struct.uio* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  br label %180

178:                                              ; preds = %162
  %179 = load i64, i64* %9, align 8
  br label %180

180:                                              ; preds = %178, %174
  %181 = phi i64 [ %177, %174 ], [ %179, %178 ]
  store i64 %181, i64* %8, align 8
  %182 = load %struct.denode*, %struct.denode** %17, align 8
  %183 = getelementptr inbounds %struct.denode, %struct.denode* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.uio*, %struct.uio** %19, align 8
  %186 = getelementptr inbounds %struct.uio, %struct.uio* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %184, %187
  store i64 %188, i64* %9, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* %8, align 8
  %191 = icmp slt i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %180
  %193 = load i64, i64* %9, align 8
  store i64 %193, i64* %8, align 8
  br label %194

194:                                              ; preds = %192, %180
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = load %struct.buf*, %struct.buf** %15, align 8
  %198 = getelementptr inbounds %struct.buf, %struct.buf* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %196, %199
  store i64 %200, i64* %9, align 8
  %201 = load i64, i64* %9, align 8
  %202 = load i64, i64* %8, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %194
  %205 = load i64, i64* %9, align 8
  store i64 %205, i64* %8, align 8
  br label %206

206:                                              ; preds = %204, %194
  %207 = load %struct.buf*, %struct.buf** %15, align 8
  %208 = getelementptr inbounds %struct.buf, %struct.buf* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %10, align 8
  %211 = add nsw i64 %209, %210
  %212 = load i64, i64* %8, align 8
  %213 = trunc i64 %212 to i32
  %214 = load %struct.uio*, %struct.uio** %19, align 8
  %215 = call i32 @vn_io_fault_uiomove(i64 %211, i32 %213, %struct.uio* %214)
  store i32 %215, i32* %4, align 4
  %216 = load %struct.buf*, %struct.buf** %15, align 8
  %217 = call i32 @brelse(%struct.buf* %216)
  br label %218

218:                                              ; preds = %206
  %219 = load i32, i32* %4, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load %struct.uio*, %struct.uio** %19, align 8
  %223 = getelementptr inbounds %struct.uio, %struct.uio* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp sgt i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load i64, i64* %8, align 8
  %228 = icmp ne i64 %227, 0
  br label %229

229:                                              ; preds = %226, %221, %218
  %230 = phi i1 [ false, %221 ], [ false, %218 ], [ %228, %226 ]
  br i1 %230, label %48, label %231

231:                                              ; preds = %229, %159, %89, %84, %56
  %232 = load i32, i32* %6, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %260, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* %4, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %234
  %238 = load %struct.uio*, %struct.uio** %19, align 8
  %239 = getelementptr inbounds %struct.uio, %struct.uio* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %7, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %260

243:                                              ; preds = %237, %234
  %244 = load %struct.vnode*, %struct.vnode** %16, align 8
  %245 = getelementptr inbounds %struct.vnode, %struct.vnode* %244, i32 0, i32 0
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @MNT_NOATIME, align 4
  %250 = load i32, i32* @MNT_RDONLY, align 4
  %251 = or i32 %249, %250
  %252 = and i32 %248, %251
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %243
  %255 = load i32, i32* @DE_ACCESS, align 4
  %256 = load %struct.denode*, %struct.denode** %17, align 8
  %257 = getelementptr inbounds %struct.denode, %struct.denode* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %254, %243, %237, %231
  %261 = load i32, i32* %4, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %260, %36
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.denode* @VTODE(%struct.vnode*) #1

declare dso_local i64 @de_cluster(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @pcbmap(%struct.denode*, i64, i64*, i32, i32*) #1

declare dso_local i32 @bread(%struct.vnode*, i64, i32, i32, %struct.buf**) #1

declare dso_local i64 @de_cn2off(%struct.msdosfsmount*, i64) #1

declare dso_local i32 @cluster_read(%struct.vnode*, i64, i64, i32, i32, i64, i32, i32, %struct.buf**) #1

declare dso_local i32 @breadn(%struct.vnode*, i64, i32, i64*, i32*, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @vn_io_fault_uiomove(i64, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
