; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_dump_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_dump_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bar_mmap = type { i32, i32, i32, i32, i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Invalid bar start specification %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid count specification %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid bar specification %s\00", align 1
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@_PATH_DEVPCI = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PCIOCBARMMAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ioctl(PCIOCBARMMAP)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"(start + count) x width overflow\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [99 x i8] c"Dumping pci%d:%d:%d:%d BAR %x mapped base %p off %#x length %#jx from %#jx count %#jx in %d-bytes\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"error writing to stdout\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"invalid access width\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i32, i32)* @dump_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_bar(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_bar_mmap, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_2__, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %19, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %6
  %28 = load i8*, i8** %9, align 8
  %29 = call i8* @strtoul(i8* %28, i8** %21, i32 0)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %19, align 4
  %31 = load i8*, i8** %21, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %27
  br label %39

39:                                               ; preds = %38, %6
  store i32 0, i32* %20, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i8*, i8** %10, align 8
  %44 = call i8* @strtoul(i8* %43, i8** %21, i32 0)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %20, align 4
  %46 = load i8*, i8** %21, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %42
  br label %54

54:                                               ; preds = %53, %39
  %55 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 5
  %56 = load i8*, i8** %7, align 8
  %57 = call { i64, i64 } @getsel(i8* %56)
  %58 = bitcast %struct.TYPE_2__* %24 to { i64, i64 }*
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 0
  %60 = extractvalue { i64, i64 } %57, 0
  store i64 %60, i64* %59, align 4
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 1
  %62 = extractvalue { i64, i64 } %57, 1
  store i64 %62, i64* %61, align 4
  %63 = bitcast %struct.TYPE_2__* %55 to i8*
  %64 = bitcast %struct.TYPE_2__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 4 %64, i64 16, i1 false)
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @strtoul(i8* %65, i8** %21, i32 0)
  %67 = ptrtoint i8* %66 to i32
  %68 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %54
  %74 = load i8*, i8** %21, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %54
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 7
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %84 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 6
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* @_PATH_DEVPCI, align 4
  %86 = load i32, i32* @O_RDWR, align 4
  %87 = call i32 @open(i32 %85, i32 %86, i32 0)
  store i32 %87, i32* %23, align 4
  %88 = load i32, i32* %23, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* @_PATH_DEVPCI, align 4
  %92 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %90, %81
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* @PCIOCBARMMAP, align 4
  %96 = call i64 @ioctl(i32 %94, i32 %95, %struct.pci_bar_mmap* %13)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  %101 = load i32, i32* %20, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = sdiv i32 %105, %106
  store i32 %107, i32* %20, align 4
  br label %108

108:                                              ; preds = %103, %100
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %19, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %122, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %20, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %11, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %114, %108
  %123 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %114
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %11, align 4
  %129 = mul nsw i32 %127, %128
  %130 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %129, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %124
  %134 = load i32, i32* %19, align 4
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 %134, %135
  %137 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 0, i32* %20, align 4
  br label %150

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %11, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sub nsw i32 %143, %146
  %148 = load i32, i32* %11, align 4
  %149 = sdiv i32 %147, %148
  store i32 %149, i32* %20, align 4
  br label %150

150:                                              ; preds = %141, %140
  br label %151

151:                                              ; preds = %150, %124
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %180

154:                                              ; preds = %151
  %155 = load i32, i32* @stderr, align 4
  %156 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %20, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @fprintf(i32 %155, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.6, i64 0, i64 0), i32 %158, i32 %161, i32 %164, i32 %167, i32 %169, i64 %171, i32 %173, i32 %175, i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %154, %151
  %181 = load i32, i32* %11, align 4
  switch i32 %181, label %318 [
    i32 1, label %182
    i32 2, label %216
    i32 4, label %250
    i32 8, label %284
  ]

182:                                              ; preds = %180
  %183 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = add i64 %184, %187
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %11, align 4
  %191 = mul nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = add i64 %188, %192
  %194 = inttoptr i64 %193 to i32*
  store i32* %194, i32** %16, align 8
  store i32 0, i32* %18, align 4
  br label %195

195:                                              ; preds = %209, %182
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %20, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %195
  %200 = load i32*, i32** %16, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @stdout, align 4
  %203 = call i64 @fwrite(i32* %200, i32 %201, i32 1, i32 %202)
  store i64 %203, i64* %22, align 8
  %204 = load i64, i64* %22, align 8
  %205 = icmp ne i64 %204, 1
  br i1 %205, label %206, label %208

206:                                              ; preds = %199
  %207 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %215

208:                                              ; preds = %199
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %18, align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* %18, align 4
  %213 = load i32*, i32** %16, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %16, align 8
  br label %195

215:                                              ; preds = %206, %195
  br label %320

216:                                              ; preds = %180
  %217 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = add i64 %218, %221
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* %11, align 4
  %225 = mul nsw i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = add i64 %222, %226
  %228 = inttoptr i64 %227 to i32*
  store i32* %228, i32** %15, align 8
  store i32 0, i32* %18, align 4
  br label %229

229:                                              ; preds = %243, %216
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* %20, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %249

233:                                              ; preds = %229
  %234 = load i32*, i32** %15, align 8
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* @stdout, align 4
  %237 = call i64 @fwrite(i32* %234, i32 %235, i32 1, i32 %236)
  store i64 %237, i64* %22, align 8
  %238 = load i64, i64* %22, align 8
  %239 = icmp ne i64 %238, 1
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %249

242:                                              ; preds = %233
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %18, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %18, align 4
  %247 = load i32*, i32** %15, align 8
  %248 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %248, i32** %15, align 8
  br label %229

249:                                              ; preds = %240, %229
  br label %320

250:                                              ; preds = %180
  %251 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = add i64 %252, %255
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* %11, align 4
  %259 = mul nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = add i64 %256, %260
  %262 = inttoptr i64 %261 to i32*
  store i32* %262, i32** %14, align 8
  store i32 0, i32* %18, align 4
  br label %263

263:                                              ; preds = %277, %250
  %264 = load i32, i32* %18, align 4
  %265 = load i32, i32* %20, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %283

267:                                              ; preds = %263
  %268 = load i32*, i32** %14, align 8
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* @stdout, align 4
  %271 = call i64 @fwrite(i32* %268, i32 %269, i32 1, i32 %270)
  store i64 %271, i64* %22, align 8
  %272 = load i64, i64* %22, align 8
  %273 = icmp ne i64 %272, 1
  br i1 %273, label %274, label %276

274:                                              ; preds = %267
  %275 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %283

276:                                              ; preds = %267
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %11, align 4
  %279 = load i32, i32* %18, align 4
  %280 = add nsw i32 %279, %278
  store i32 %280, i32* %18, align 4
  %281 = load i32*, i32** %14, align 8
  %282 = getelementptr inbounds i32, i32* %281, i32 1
  store i32* %282, i32** %14, align 8
  br label %263

283:                                              ; preds = %274, %263
  br label %320

284:                                              ; preds = %180
  %285 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 4
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = add i64 %286, %289
  %291 = load i32, i32* %19, align 4
  %292 = load i32, i32* %11, align 4
  %293 = mul nsw i32 %291, %292
  %294 = sext i32 %293 to i64
  %295 = add i64 %290, %294
  %296 = inttoptr i64 %295 to i32*
  store i32* %296, i32** %17, align 8
  store i32 0, i32* %18, align 4
  br label %297

297:                                              ; preds = %311, %284
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* %20, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %297
  %302 = load i32*, i32** %17, align 8
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* @stdout, align 4
  %305 = call i64 @fwrite(i32* %302, i32 %303, i32 1, i32 %304)
  store i64 %305, i64* %22, align 8
  %306 = load i64, i64* %22, align 8
  %307 = icmp ne i64 %306, 1
  br i1 %307, label %308, label %310

308:                                              ; preds = %301
  %309 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %317

310:                                              ; preds = %301
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* %18, align 4
  %314 = add nsw i32 %313, %312
  store i32 %314, i32* %18, align 4
  %315 = load i32*, i32** %17, align 8
  %316 = getelementptr inbounds i32, i32* %315, i32 1
  store i32* %316, i32** %17, align 8
  br label %297

317:                                              ; preds = %308, %297
  br label %320

318:                                              ; preds = %180
  %319 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %320

320:                                              ; preds = %318, %317, %283, %249, %215
  %321 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 4
  %322 = load i64, i64* %321, align 8
  %323 = inttoptr i64 %322 to i8*
  %324 = getelementptr inbounds %struct.pci_bar_mmap, %struct.pci_bar_mmap* %13, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @munmap(i8* %323, i32 %325)
  %327 = load i32, i32* %23, align 4
  %328 = call i32 @close(i32 %327)
  ret void
}

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local { i64, i64 } @getsel(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pci_bar_mmap*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @fwrite(i32*, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
