; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface = type { i32, %struct.iface_addr*, i32 }
%struct.iface_addr = type { i32, i32, i32 }
%struct.ncp = type { i32 }
%struct.ncprange = type { i32 }
%struct.ncpaddr = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"iface_Add: socket(): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@IFACE_FORCE_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"iface_inAdd: realloc: %s\0A\00", align 1
@IFACE_SYSTEM = common dso_local global i32 0, align 4
@IFACE_ADD_FIRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iface_Add(%struct.iface* %0, %struct.ncp* %1, %struct.ncprange* %2, %struct.ncpaddr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iface*, align 8
  %8 = alloca %struct.ncp*, align 8
  %9 = alloca %struct.ncprange*, align 8
  %10 = alloca %struct.ncpaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ncpaddr, align 4
  %17 = alloca %struct.iface_addr*, align 8
  %18 = alloca %struct.iface_addr, align 4
  store %struct.iface* %0, %struct.iface** %7, align 8
  store %struct.ncp* %1, %struct.ncp** %8, align 8
  store %struct.ncprange* %2, %struct.ncprange** %9, align 8
  store %struct.ncpaddr* %3, %struct.ncpaddr** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.ncprange*, %struct.ncprange** %9, align 8
  %20 = call i32 @ncprange_family(%struct.ncprange* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @SOCK_DGRAM, align 4
  %23 = call i32 @ID0socket(i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %14, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load i32, i32* @LogERROR, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 @log_Printf(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %6, align 4
  br label %301

30:                                               ; preds = %5
  %31 = load %struct.ncprange*, %struct.ncprange** %9, align 8
  %32 = call i32 @ncprange_getaddr(%struct.ncprange* %31, %struct.ncpaddr* %16)
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %203, %30
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.iface*, %struct.iface** %7, align 8
  %36 = getelementptr inbounds %struct.iface, %struct.iface* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %206

39:                                               ; preds = %33
  %40 = load %struct.iface*, %struct.iface** %7, align 8
  %41 = getelementptr inbounds %struct.iface, %struct.iface* %40, i32 0, i32 1
  %42 = load %struct.iface_addr*, %struct.iface_addr** %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %42, i64 %44
  %46 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %45, i32 0, i32 2
  %47 = call i64 @ncprange_contains(i32* %46, %struct.ncpaddr* %16)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %39
  %50 = load %struct.iface*, %struct.iface** %7, align 8
  %51 = getelementptr inbounds %struct.iface, %struct.iface* %50, i32 0, i32 1
  %52 = load %struct.iface_addr*, %struct.iface_addr** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %52, i64 %54
  %56 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %55, i32 0, i32 1
  %57 = load %struct.ncpaddr*, %struct.ncpaddr** %10, align 8
  %58 = call i64 @ncpaddr_equal(i32* %56, %struct.ncpaddr* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %202

60:                                               ; preds = %49, %39
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @IFACE_FORCE_ADD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @close(i32 %66)
  store i32 0, i32* %6, align 4
  br label %301

68:                                               ; preds = %60
  %69 = load %struct.iface*, %struct.iface** %7, align 8
  %70 = getelementptr inbounds %struct.iface, %struct.iface* %69, i32 0, i32 1
  %71 = load %struct.iface_addr*, %struct.iface_addr** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %71, i64 %73
  %75 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %74, i32 0, i32 2
  %76 = load %struct.ncprange*, %struct.ncprange** %9, align 8
  %77 = call i64 @ncprange_equal(i32* %75, %struct.ncprange* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %68
  %80 = load %struct.iface*, %struct.iface** %7, align 8
  %81 = getelementptr inbounds %struct.iface, %struct.iface* %80, i32 0, i32 1
  %82 = load %struct.iface_addr*, %struct.iface_addr** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %82, i64 %84
  %86 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %85, i32 0, i32 1
  %87 = load %struct.ncpaddr*, %struct.ncpaddr** %10, align 8
  %88 = call i64 @ncpaddr_equal(i32* %86, %struct.ncpaddr* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %79
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @close(i32 %91)
  %93 = load %struct.ncp*, %struct.ncp** %8, align 8
  %94 = load %struct.iface*, %struct.iface** %7, align 8
  %95 = getelementptr inbounds %struct.iface, %struct.iface* %94, i32 0, i32 1
  %96 = load %struct.iface_addr*, %struct.iface_addr** %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %96, i64 %98
  %100 = call i32 @ncp_IfaceAddrAdded(%struct.ncp* %93, %struct.iface_addr* %99)
  store i32 1, i32* %6, align 4
  br label %301

101:                                              ; preds = %79, %68
  %102 = load %struct.iface*, %struct.iface** %7, align 8
  %103 = getelementptr inbounds %struct.iface, %struct.iface* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.iface*, %struct.iface** %7, align 8
  %106 = getelementptr inbounds %struct.iface, %struct.iface* %105, i32 0, i32 1
  %107 = load %struct.iface_addr*, %struct.iface_addr** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %107, i64 %109
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @iface_addr_Zap(i32 %104, %struct.iface_addr* %110, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %101
  %116 = load %struct.ncp*, %struct.ncp** %8, align 8
  %117 = load %struct.iface*, %struct.iface** %7, align 8
  %118 = getelementptr inbounds %struct.iface, %struct.iface* %117, i32 0, i32 1
  %119 = load %struct.iface_addr*, %struct.iface_addr** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %119, i64 %121
  %123 = call i32 @ncp_IfaceAddrDeleted(%struct.ncp* %116, %struct.iface_addr* %122)
  br label %124

124:                                              ; preds = %115, %101
  %125 = load %struct.iface*, %struct.iface** %7, align 8
  %126 = getelementptr inbounds %struct.iface, %struct.iface* %125, i32 0, i32 1
  %127 = load %struct.iface_addr*, %struct.iface_addr** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %127, i64 %129
  %131 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %130, i32 0, i32 2
  %132 = load %struct.ncprange*, %struct.ncprange** %9, align 8
  %133 = call i32 @ncprange_copy(i32* %131, %struct.ncprange* %132)
  %134 = load %struct.iface*, %struct.iface** %7, align 8
  %135 = getelementptr inbounds %struct.iface, %struct.iface* %134, i32 0, i32 1
  %136 = load %struct.iface_addr*, %struct.iface_addr** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %136, i64 %138
  %140 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %139, i32 0, i32 1
  %141 = load %struct.ncpaddr*, %struct.ncpaddr** %10, align 8
  %142 = call i32 @ncpaddr_copy(i32* %140, %struct.ncpaddr* %141)
  %143 = load %struct.iface*, %struct.iface** %7, align 8
  %144 = getelementptr inbounds %struct.iface, %struct.iface* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.iface*, %struct.iface** %7, align 8
  %147 = getelementptr inbounds %struct.iface, %struct.iface* %146, i32 0, i32 1
  %148 = load %struct.iface_addr*, %struct.iface_addr** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %148, i64 %150
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @iface_addr_Add(i32 %145, %struct.iface_addr* %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %191, label %155

155:                                              ; preds = %124
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %188

158:                                              ; preds = %155
  %159 = load %struct.iface*, %struct.iface** %7, align 8
  %160 = getelementptr inbounds %struct.iface, %struct.iface* %159, i32 0, i32 1
  %161 = load %struct.iface_addr*, %struct.iface_addr** %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %161, i64 %163
  %165 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %164, i64 1
  %166 = load %struct.iface*, %struct.iface** %7, align 8
  %167 = getelementptr inbounds %struct.iface, %struct.iface* %166, i32 0, i32 1
  %168 = load %struct.iface_addr*, %struct.iface_addr** %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %168, i64 %170
  %172 = load %struct.iface*, %struct.iface** %7, align 8
  %173 = getelementptr inbounds %struct.iface, %struct.iface* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sub i32 %174, %175
  %177 = sub i32 %176, 1
  %178 = zext i32 %177 to i64
  %179 = mul i64 %178, 12
  %180 = trunc i64 %179 to i32
  %181 = call i32 @bcopy(%struct.iface_addr* %165, %struct.iface_addr* %171, i32 %180)
  %182 = load %struct.iface*, %struct.iface** %7, align 8
  %183 = getelementptr inbounds %struct.iface, %struct.iface* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add i32 %184, -1
  store i32 %185, i32* %183, align 8
  %186 = load i32, i32* %15, align 4
  %187 = add i32 %186, -1
  store i32 %187, i32* %15, align 4
  br label %188

188:                                              ; preds = %158, %155
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @close(i32 %189)
  store i32 0, i32* %6, align 4
  br label %301

191:                                              ; preds = %124
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @close(i32 %192)
  %194 = load %struct.ncp*, %struct.ncp** %8, align 8
  %195 = load %struct.iface*, %struct.iface** %7, align 8
  %196 = getelementptr inbounds %struct.iface, %struct.iface* %195, i32 0, i32 1
  %197 = load %struct.iface_addr*, %struct.iface_addr** %196, align 8
  %198 = load i32, i32* %15, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %197, i64 %199
  %201 = call i32 @ncp_IfaceAddrAdded(%struct.ncp* %194, %struct.iface_addr* %200)
  store i32 1, i32* %6, align 4
  br label %301

202:                                              ; preds = %49
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %15, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %15, align 4
  br label %33

206:                                              ; preds = %33
  %207 = load %struct.iface*, %struct.iface** %7, align 8
  %208 = getelementptr inbounds %struct.iface, %struct.iface* %207, i32 0, i32 1
  %209 = load %struct.iface_addr*, %struct.iface_addr** %208, align 8
  %210 = load %struct.iface*, %struct.iface** %7, align 8
  %211 = getelementptr inbounds %struct.iface, %struct.iface* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add i32 %212, 1
  %214 = zext i32 %213 to i64
  %215 = mul i64 %214, 12
  %216 = trunc i64 %215 to i32
  %217 = call i64 @realloc(%struct.iface_addr* %209, i32 %216)
  %218 = inttoptr i64 %217 to %struct.iface_addr*
  store %struct.iface_addr* %218, %struct.iface_addr** %17, align 8
  %219 = load %struct.iface_addr*, %struct.iface_addr** %17, align 8
  %220 = icmp eq %struct.iface_addr* %219, null
  br i1 %220, label %221, label %228

221:                                              ; preds = %206
  %222 = load i32, i32* @LogERROR, align 4
  %223 = load i32, i32* @errno, align 4
  %224 = call i32 @strerror(i32 %223)
  %225 = call i32 @log_Printf(i32 %222, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @close(i32 %226)
  store i32 0, i32* %6, align 4
  br label %301

228:                                              ; preds = %206
  %229 = load %struct.iface_addr*, %struct.iface_addr** %17, align 8
  %230 = load %struct.iface*, %struct.iface** %7, align 8
  %231 = getelementptr inbounds %struct.iface, %struct.iface* %230, i32 0, i32 1
  store %struct.iface_addr* %229, %struct.iface_addr** %231, align 8
  %232 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %18, i32 0, i32 2
  %233 = load %struct.ncprange*, %struct.ncprange** %9, align 8
  %234 = call i32 @ncprange_copy(i32* %232, %struct.ncprange* %233)
  %235 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %18, i32 0, i32 1
  %236 = load %struct.ncpaddr*, %struct.ncpaddr** %10, align 8
  %237 = call i32 @ncpaddr_copy(i32* %235, %struct.ncpaddr* %236)
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* @IFACE_SYSTEM, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  %245 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %18, i32 0, i32 0
  store i32 %244, i32* %245, align 4
  %246 = load %struct.iface*, %struct.iface** %7, align 8
  %247 = getelementptr inbounds %struct.iface, %struct.iface* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %14, align 4
  %250 = call i32 @iface_addr_Add(i32 %248, %struct.iface_addr* %18, i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %228
  %253 = load i32, i32* %14, align 4
  %254 = call i32 @close(i32 %253)
  store i32 0, i32* %6, align 4
  br label %301

255:                                              ; preds = %228
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* @IFACE_ADD_FIRST, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %275

260:                                              ; preds = %255
  store i32 0, i32* %15, align 4
  %261 = load %struct.iface*, %struct.iface** %7, align 8
  %262 = getelementptr inbounds %struct.iface, %struct.iface* %261, i32 0, i32 1
  %263 = load %struct.iface_addr*, %struct.iface_addr** %262, align 8
  %264 = load %struct.iface*, %struct.iface** %7, align 8
  %265 = getelementptr inbounds %struct.iface, %struct.iface* %264, i32 0, i32 1
  %266 = load %struct.iface_addr*, %struct.iface_addr** %265, align 8
  %267 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %266, i64 1
  %268 = load %struct.iface*, %struct.iface** %7, align 8
  %269 = getelementptr inbounds %struct.iface, %struct.iface* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = zext i32 %270 to i64
  %272 = mul i64 %271, 12
  %273 = trunc i64 %272 to i32
  %274 = call i32 @bcopy(%struct.iface_addr* %263, %struct.iface_addr* %267, i32 %273)
  br label %279

275:                                              ; preds = %255
  %276 = load %struct.iface*, %struct.iface** %7, align 8
  %277 = getelementptr inbounds %struct.iface, %struct.iface* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  store i32 %278, i32* %15, align 4
  br label %279

279:                                              ; preds = %275, %260
  %280 = load %struct.iface*, %struct.iface** %7, align 8
  %281 = getelementptr inbounds %struct.iface, %struct.iface* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = add i32 %282, 1
  store i32 %283, i32* %281, align 8
  %284 = load %struct.iface*, %struct.iface** %7, align 8
  %285 = getelementptr inbounds %struct.iface, %struct.iface* %284, i32 0, i32 1
  %286 = load %struct.iface_addr*, %struct.iface_addr** %285, align 8
  %287 = load i32, i32* %15, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %286, i64 %288
  %290 = call i32 @memcpy(%struct.iface_addr* %289, %struct.iface_addr* %18, i32 12)
  %291 = load i32, i32* %14, align 4
  %292 = call i32 @close(i32 %291)
  %293 = load %struct.ncp*, %struct.ncp** %8, align 8
  %294 = load %struct.iface*, %struct.iface** %7, align 8
  %295 = getelementptr inbounds %struct.iface, %struct.iface* %294, i32 0, i32 1
  %296 = load %struct.iface_addr*, %struct.iface_addr** %295, align 8
  %297 = load i32, i32* %15, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds %struct.iface_addr, %struct.iface_addr* %296, i64 %298
  %300 = call i32 @ncp_IfaceAddrAdded(%struct.ncp* %293, %struct.iface_addr* %299)
  store i32 1, i32* %6, align 4
  br label %301

301:                                              ; preds = %279, %252, %221, %191, %188, %90, %65, %25
  %302 = load i32, i32* %6, align 4
  ret i32 %302
}

declare dso_local i32 @ncprange_family(%struct.ncprange*) #1

declare dso_local i32 @ID0socket(i32, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ncprange_getaddr(%struct.ncprange*, %struct.ncpaddr*) #1

declare dso_local i64 @ncprange_contains(i32*, %struct.ncpaddr*) #1

declare dso_local i64 @ncpaddr_equal(i32*, %struct.ncpaddr*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @ncprange_equal(i32*, %struct.ncprange*) #1

declare dso_local i32 @ncp_IfaceAddrAdded(%struct.ncp*, %struct.iface_addr*) #1

declare dso_local i32 @iface_addr_Zap(i32, %struct.iface_addr*, i32) #1

declare dso_local i32 @ncp_IfaceAddrDeleted(%struct.ncp*, %struct.iface_addr*) #1

declare dso_local i32 @ncprange_copy(i32*, %struct.ncprange*) #1

declare dso_local i32 @ncpaddr_copy(i32*, %struct.ncpaddr*) #1

declare dso_local i32 @iface_addr_Add(i32, %struct.iface_addr*, i32) #1

declare dso_local i32 @bcopy(%struct.iface_addr*, %struct.iface_addr*, i32) #1

declare dso_local i64 @realloc(%struct.iface_addr*, i32) #1

declare dso_local i32 @memcpy(%struct.iface_addr*, %struct.iface_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
