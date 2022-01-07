; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_extendfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_extendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i64, i32, %struct.TYPE_2__*, %struct.msdosfsmount* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.msdosfsmount = type { i32, i32 }
%struct.buf = type { i32, i32 }

@MSDOSFSROOT = common dso_local global i64 0, align 8
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FC_LASTFC = common dso_local global i64 0, align 8
@FCE_EMPTY = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@FC_NEXTTOLASTFC = common dso_local global i64 0, align 8
@CLUST_EOFE = common dso_local global i32 0, align 4
@FAT_SET = common dso_local global i32 0, align 4
@DE_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"extendfile: pcbmap\00", align 1
@MNT_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extendfile(%struct.denode* %0, i64 %1, %struct.buf** %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.denode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buf**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.msdosfsmount*, align 8
  %17 = alloca %struct.buf*, align 8
  %18 = alloca i32, align 4
  store %struct.denode* %0, %struct.denode** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.buf** %2, %struct.buf*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.denode*, %struct.denode** %7, align 8
  %20 = getelementptr inbounds %struct.denode, %struct.denode* %19, i32 0, i32 3
  %21 = load %struct.msdosfsmount*, %struct.msdosfsmount** %20, align 8
  store %struct.msdosfsmount* %21, %struct.msdosfsmount** %16, align 8
  %22 = load %struct.denode*, %struct.denode** %7, align 8
  %23 = getelementptr inbounds %struct.denode, %struct.denode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MSDOSFSROOT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load %struct.denode*, %struct.denode** %7, align 8
  %29 = getelementptr inbounds %struct.denode, %struct.denode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ATTR_DIRECTORY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOSPC, align 4
  store i32 %35, i32* %6, align 4
  br label %259

36:                                               ; preds = %27, %5
  %37 = load %struct.denode*, %struct.denode** %7, align 8
  %38 = getelementptr inbounds %struct.denode, %struct.denode* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* @FC_LASTFC, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FCE_EMPTY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %36
  %47 = load %struct.denode*, %struct.denode** %7, align 8
  %48 = getelementptr inbounds %struct.denode, %struct.denode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.denode*, %struct.denode** %7, align 8
  %53 = call i32 @pcbmap(%struct.denode* %52, i32 65535, i32* null, i64* %14, i32 0)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @E2BIG, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %259

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %46, %36
  %61 = load %struct.denode*, %struct.denode** %7, align 8
  %62 = getelementptr inbounds %struct.denode, %struct.denode* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* @FC_LASTFC, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.denode*, %struct.denode** %7, align 8
  %69 = getelementptr inbounds %struct.denode, %struct.denode* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i64, i64* @FC_NEXTTOLASTFC, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 %67, i64* %73, align 8
  %74 = load %struct.denode*, %struct.denode** %7, align 8
  %75 = getelementptr inbounds %struct.denode, %struct.denode* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i64, i64* @FC_LASTFC, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.denode*, %struct.denode** %7, align 8
  %82 = getelementptr inbounds %struct.denode, %struct.denode* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* @FC_NEXTTOLASTFC, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i64 %80, i64* %86, align 8
  br label %87

87:                                               ; preds = %257, %60
  %88 = load i64, i64* %8, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %258

90:                                               ; preds = %87
  %91 = load %struct.denode*, %struct.denode** %7, align 8
  %92 = getelementptr inbounds %struct.denode, %struct.denode* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i64 0, i64* %14, align 8
  br label %105

96:                                               ; preds = %90
  %97 = load %struct.denode*, %struct.denode** %7, align 8
  %98 = getelementptr inbounds %struct.denode, %struct.denode* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* @FC_LASTFC, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %14, align 8
  br label %105

105:                                              ; preds = %96, %95
  %106 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i32, i32* @CLUST_EOFE, align 4
  %110 = call i32 @clusteralloc(%struct.msdosfsmount* %106, i64 %107, i64 %108, i32 %109, i64* %14, i64* %15)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %6, align 4
  br label %259

115:                                              ; preds = %105
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %8, align 8
  %118 = sub nsw i64 %117, %116
  store i64 %118, i64* %8, align 8
  %119 = load i64*, i64** %10, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i64, i64* %14, align 8
  %123 = load i64*, i64** %10, align 8
  store i64 %122, i64* %123, align 8
  store i64* null, i64** %10, align 8
  br label %124

124:                                              ; preds = %121, %115
  %125 = load %struct.denode*, %struct.denode** %7, align 8
  %126 = getelementptr inbounds %struct.denode, %struct.denode* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i64, i64* %14, align 8
  %131 = load %struct.denode*, %struct.denode** %7, align 8
  %132 = getelementptr inbounds %struct.denode, %struct.denode* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  store i64 0, i64* %13, align 8
  br label %161

133:                                              ; preds = %124
  %134 = load i32, i32* @FAT_SET, align 4
  %135 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %136 = load %struct.denode*, %struct.denode** %7, align 8
  %137 = getelementptr inbounds %struct.denode, %struct.denode* %136, i32 0, i32 2
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i64, i64* @FC_LASTFC, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %14, align 8
  %144 = call i32 @fatentry(i32 %134, %struct.msdosfsmount* %135, i64 %142, i32 0, i64 %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %133
  %148 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %149 = load i64, i64* %14, align 8
  %150 = call i32 @clusterfree(%struct.msdosfsmount* %148, i64 %149, i32* null)
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %6, align 4
  br label %259

152:                                              ; preds = %133
  %153 = load %struct.denode*, %struct.denode** %7, align 8
  %154 = getelementptr inbounds %struct.denode, %struct.denode* %153, i32 0, i32 2
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i64, i64* @FC_LASTFC, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %13, align 8
  br label %161

161:                                              ; preds = %152, %129
  %162 = load %struct.denode*, %struct.denode** %7, align 8
  %163 = load i64, i64* @FC_LASTFC, align 8
  %164 = load i64, i64* %13, align 8
  %165 = load i64, i64* %15, align 8
  %166 = add nsw i64 %164, %165
  %167 = sub nsw i64 %166, 1
  %168 = load i64, i64* %14, align 8
  %169 = load i64, i64* %15, align 8
  %170 = add nsw i64 %168, %169
  %171 = sub nsw i64 %170, 1
  %172 = call i32 @fc_setcache(%struct.denode* %162, i64 %163, i64 %167, i64 %171)
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @DE_CLEAR, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %257

177:                                              ; preds = %161
  br label %178

178:                                              ; preds = %255, %177
  %179 = load i64, i64* %15, align 8
  %180 = add nsw i64 %179, -1
  store i64 %180, i64* %15, align 8
  %181 = icmp sgt i64 %179, 0
  br i1 %181, label %182, label %256

182:                                              ; preds = %178
  %183 = load %struct.denode*, %struct.denode** %7, align 8
  %184 = getelementptr inbounds %struct.denode, %struct.denode* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @ATTR_DIRECTORY, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %182
  %190 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %191 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %194 = load i64, i64* %14, align 8
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %14, align 8
  %196 = trunc i64 %194 to i32
  %197 = call i32 @cntobn(%struct.msdosfsmount* %193, i32 %196)
  %198 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %199 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call %struct.buf* @getblk(i32 %192, i32 %197, i32 %200, i32 0, i32 0, i32 0)
  store %struct.buf* %201, %struct.buf** %17, align 8
  br label %233

202:                                              ; preds = %182
  %203 = load %struct.denode*, %struct.denode** %7, align 8
  %204 = call i32 @DETOV(%struct.denode* %203)
  %205 = load i64, i64* %13, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %13, align 8
  %207 = trunc i64 %205 to i32
  %208 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %209 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call %struct.buf* @getblk(i32 %204, i32 %207, i32 %210, i32 0, i32 0, i32 0)
  store %struct.buf* %211, %struct.buf** %17, align 8
  %212 = load %struct.denode*, %struct.denode** %7, align 8
  %213 = load %struct.buf*, %struct.buf** %17, align 8
  %214 = getelementptr inbounds %struct.buf, %struct.buf* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @pcbmap(%struct.denode* %212, i32 %215, i32* %18, i64* null, i32 0)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %202
  %219 = load %struct.buf*, %struct.buf** %17, align 8
  %220 = getelementptr inbounds %struct.buf, %struct.buf* %219, i32 0, i32 1
  store i32 -1, i32* %220, align 4
  br label %221

221:                                              ; preds = %218, %202
  %222 = load %struct.buf*, %struct.buf** %17, align 8
  %223 = getelementptr inbounds %struct.buf, %struct.buf* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %232

228:                                              ; preds = %221
  %229 = load i32, i32* %18, align 4
  %230 = load %struct.buf*, %struct.buf** %17, align 8
  %231 = getelementptr inbounds %struct.buf, %struct.buf* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  br label %232

232:                                              ; preds = %228, %226
  br label %233

233:                                              ; preds = %232, %189
  %234 = load %struct.buf*, %struct.buf** %17, align 8
  %235 = call i32 @clrbuf(%struct.buf* %234)
  %236 = load %struct.buf**, %struct.buf*** %9, align 8
  %237 = icmp ne %struct.buf** %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load %struct.buf*, %struct.buf** %17, align 8
  %240 = load %struct.buf**, %struct.buf*** %9, align 8
  store %struct.buf* %239, %struct.buf** %240, align 8
  store %struct.buf** null, %struct.buf*** %9, align 8
  br label %244

241:                                              ; preds = %233
  %242 = load %struct.buf*, %struct.buf** %17, align 8
  %243 = call i32 @bdwrite(%struct.buf* %242)
  br label %244

244:                                              ; preds = %241, %238
  %245 = call i64 (...) @vm_page_count_severe()
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %244
  %248 = call i64 (...) @buf_dirty_count_severe()
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %247, %244
  %251 = load %struct.denode*, %struct.denode** %7, align 8
  %252 = call i32 @DETOV(%struct.denode* %251)
  %253 = load i32, i32* @MNT_WAIT, align 4
  %254 = call i32 @vn_fsync_buf(i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %250, %247
  br label %178

256:                                              ; preds = %178
  br label %257

257:                                              ; preds = %256, %161
  br label %87

258:                                              ; preds = %87
  store i32 0, i32* %6, align 4
  br label %259

259:                                              ; preds = %258, %147, %113, %57, %34
  %260 = load i32, i32* %6, align 4
  ret i32 %260
}

declare dso_local i32 @pcbmap(%struct.denode*, i32, i32*, i64*, i32) #1

declare dso_local i32 @clusteralloc(%struct.msdosfsmount*, i64, i64, i32, i64*, i64*) #1

declare dso_local i32 @fatentry(i32, %struct.msdosfsmount*, i64, i32, i64) #1

declare dso_local i32 @clusterfree(%struct.msdosfsmount*, i64, i32*) #1

declare dso_local i32 @fc_setcache(%struct.denode*, i64, i64, i64) #1

declare dso_local %struct.buf* @getblk(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cntobn(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @DETOV(%struct.denode*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @clrbuf(%struct.buf*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i64 @vm_page_count_severe(...) #1

declare dso_local i64 @buf_dirty_count_severe(...) #1

declare dso_local i32 @vn_fsync_buf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
