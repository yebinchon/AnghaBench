; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_route_Change.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_route_Change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.sticky_route = type { i32, %struct.ncpaddr, i32, %struct.sticky_route* }
%struct.ncpaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@ROUTE_DSTMYADDR = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@ROUTE_GWHISADDR = common dso_local global i32 0, align 4
@ROUTE_DSTHISADDR = common dso_local global i32 0, align 4
@ROUTE_DSTDNS0 = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@ROUTE_DSTDNS1 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@ROUTE_DSTMYADDR6 = common dso_local global i32 0, align 4
@ROUTE_DSTHISADDR6 = common dso_local global i32 0, align 4
@ROUTE_GWHISADDR6 = common dso_local global i32 0, align 4
@RTM_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @route_Change(%struct.bundle* %0, %struct.sticky_route* %1, %struct.ncpaddr* %2, %struct.ncpaddr* %3) #0 {
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.sticky_route*, align 8
  %7 = alloca %struct.ncpaddr*, align 8
  %8 = alloca %struct.ncpaddr*, align 8
  %9 = alloca %struct.ncpaddr, align 4
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store %struct.sticky_route* %1, %struct.sticky_route** %6, align 8
  store %struct.ncpaddr* %2, %struct.ncpaddr** %7, align 8
  store %struct.ncpaddr* %3, %struct.ncpaddr** %8, align 8
  br label %10

10:                                               ; preds = %295, %4
  %11 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %12 = icmp ne %struct.sticky_route* %11, null
  br i1 %12, label %13, label %299

13:                                               ; preds = %10
  %14 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %15 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %14, i32 0, i32 2
  %16 = call i32 @ncprange_getaddr(i32* %15, %struct.ncpaddr* %9)
  %17 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %18 = call i64 @ncpaddr_family(%struct.ncpaddr* %17)
  %19 = load i64, i64* @AF_INET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %194

21:                                               ; preds = %13
  %22 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %23 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ROUTE_DSTMYADDR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %21
  %29 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %30 = call i32 @ncpaddr_equal(%struct.ncpaddr* %9, %struct.ncpaddr* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %28
  %33 = load %struct.bundle*, %struct.bundle** %5, align 8
  %34 = load i32, i32* @RTM_DELETE, align 4
  %35 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %36 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %35, i32 0, i32 2
  %37 = call i32 @rt_Set(%struct.bundle* %33, i32 %34, i32* %36, %struct.ncpaddr* null, i32 1, i32 0)
  %38 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %39 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %38, i32 0, i32 2
  %40 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %41 = call i32 @ncprange_sethost(i32* %39, %struct.ncpaddr* %40)
  %42 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %43 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ROUTE_GWHISADDR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %50 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %49, i32 0, i32 1
  %51 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %52 = call i32 @ncpaddr_copy(%struct.ncpaddr* %50, %struct.ncpaddr* %51)
  br label %53

53:                                               ; preds = %48, %32
  br label %193

54:                                               ; preds = %28, %21
  %55 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %56 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ROUTE_DSTHISADDR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %54
  %62 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %63 = call i32 @ncpaddr_equal(%struct.ncpaddr* %9, %struct.ncpaddr* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %61
  %66 = load %struct.bundle*, %struct.bundle** %5, align 8
  %67 = load i32, i32* @RTM_DELETE, align 4
  %68 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %69 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %68, i32 0, i32 2
  %70 = call i32 @rt_Set(%struct.bundle* %66, i32 %67, i32* %69, %struct.ncpaddr* null, i32 1, i32 0)
  %71 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %72 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %71, i32 0, i32 2
  %73 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %74 = call i32 @ncprange_sethost(i32* %72, %struct.ncpaddr* %73)
  %75 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %76 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ROUTE_GWHISADDR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %65
  %82 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %83 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %82, i32 0, i32 1
  %84 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %85 = call i32 @ncpaddr_copy(%struct.ncpaddr* %83, %struct.ncpaddr* %84)
  br label %86

86:                                               ; preds = %81, %65
  br label %192

87:                                               ; preds = %61, %54
  %88 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %89 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ROUTE_DSTDNS0, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %129

94:                                               ; preds = %87
  %95 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %96 = call i32 @ncpaddr_equal(%struct.ncpaddr* %9, %struct.ncpaddr* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %129, label %98

98:                                               ; preds = %94
  %99 = load %struct.bundle*, %struct.bundle** %5, align 8
  %100 = getelementptr inbounds %struct.bundle, %struct.bundle* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @INADDR_NONE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %295

111:                                              ; preds = %98
  %112 = load %struct.bundle*, %struct.bundle** %5, align 8
  %113 = load i32, i32* @RTM_DELETE, align 4
  %114 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %115 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %114, i32 0, i32 2
  %116 = call i32 @rt_Set(%struct.bundle* %112, i32 %113, i32* %115, %struct.ncpaddr* null, i32 1, i32 0)
  %117 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %118 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @ROUTE_GWHISADDR, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %111
  %124 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %125 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %124, i32 0, i32 1
  %126 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %127 = call i32 @ncpaddr_copy(%struct.ncpaddr* %125, %struct.ncpaddr* %126)
  br label %128

128:                                              ; preds = %123, %111
  br label %191

129:                                              ; preds = %94, %87
  %130 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %131 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ROUTE_DSTDNS1, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %171

136:                                              ; preds = %129
  %137 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %138 = call i32 @ncpaddr_equal(%struct.ncpaddr* %9, %struct.ncpaddr* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %171, label %140

140:                                              ; preds = %136
  %141 = load %struct.bundle*, %struct.bundle** %5, align 8
  %142 = getelementptr inbounds %struct.bundle, %struct.bundle* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @INADDR_NONE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  br label %295

153:                                              ; preds = %140
  %154 = load %struct.bundle*, %struct.bundle** %5, align 8
  %155 = load i32, i32* @RTM_DELETE, align 4
  %156 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %157 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %156, i32 0, i32 2
  %158 = call i32 @rt_Set(%struct.bundle* %154, i32 %155, i32* %157, %struct.ncpaddr* null, i32 1, i32 0)
  %159 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %160 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @ROUTE_GWHISADDR, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %153
  %166 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %167 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %166, i32 0, i32 1
  %168 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %169 = call i32 @ncpaddr_copy(%struct.ncpaddr* %167, %struct.ncpaddr* %168)
  br label %170

170:                                              ; preds = %165, %153
  br label %190

171:                                              ; preds = %136, %129
  %172 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %173 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @ROUTE_GWHISADDR, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %171
  %179 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %180 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %179, i32 0, i32 1
  %181 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %182 = call i32 @ncpaddr_equal(%struct.ncpaddr* %180, %struct.ncpaddr* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %178
  %185 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %186 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %185, i32 0, i32 1
  %187 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %188 = call i32 @ncpaddr_copy(%struct.ncpaddr* %186, %struct.ncpaddr* %187)
  br label %189

189:                                              ; preds = %184, %178, %171
  br label %190

190:                                              ; preds = %189, %170
  br label %191

191:                                              ; preds = %190, %128
  br label %192

192:                                              ; preds = %191, %86
  br label %193

193:                                              ; preds = %192, %53
  br label %287

194:                                              ; preds = %13
  %195 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %196 = call i64 @ncpaddr_family(%struct.ncpaddr* %195)
  %197 = load i64, i64* @AF_INET6, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %286

199:                                              ; preds = %194
  %200 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %201 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @ROUTE_DSTMYADDR6, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %232

206:                                              ; preds = %199
  %207 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %208 = call i32 @ncpaddr_equal(%struct.ncpaddr* %9, %struct.ncpaddr* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %232, label %210

210:                                              ; preds = %206
  %211 = load %struct.bundle*, %struct.bundle** %5, align 8
  %212 = load i32, i32* @RTM_DELETE, align 4
  %213 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %214 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %213, i32 0, i32 2
  %215 = call i32 @rt_Set(%struct.bundle* %211, i32 %212, i32* %214, %struct.ncpaddr* null, i32 1, i32 0)
  %216 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %217 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %216, i32 0, i32 2
  %218 = load %struct.ncpaddr*, %struct.ncpaddr** %7, align 8
  %219 = call i32 @ncprange_sethost(i32* %217, %struct.ncpaddr* %218)
  %220 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %221 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @ROUTE_GWHISADDR, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %210
  %227 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %228 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %227, i32 0, i32 1
  %229 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %230 = call i32 @ncpaddr_copy(%struct.ncpaddr* %228, %struct.ncpaddr* %229)
  br label %231

231:                                              ; preds = %226, %210
  br label %285

232:                                              ; preds = %206, %199
  %233 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %234 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @ROUTE_DSTHISADDR6, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %265

239:                                              ; preds = %232
  %240 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %241 = call i32 @ncpaddr_equal(%struct.ncpaddr* %9, %struct.ncpaddr* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %265, label %243

243:                                              ; preds = %239
  %244 = load %struct.bundle*, %struct.bundle** %5, align 8
  %245 = load i32, i32* @RTM_DELETE, align 4
  %246 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %247 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %246, i32 0, i32 2
  %248 = call i32 @rt_Set(%struct.bundle* %244, i32 %245, i32* %247, %struct.ncpaddr* null, i32 1, i32 0)
  %249 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %250 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %249, i32 0, i32 2
  %251 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %252 = call i32 @ncprange_sethost(i32* %250, %struct.ncpaddr* %251)
  %253 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %254 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @ROUTE_GWHISADDR, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %243
  %260 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %261 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %260, i32 0, i32 1
  %262 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %263 = call i32 @ncpaddr_copy(%struct.ncpaddr* %261, %struct.ncpaddr* %262)
  br label %264

264:                                              ; preds = %259, %243
  br label %284

265:                                              ; preds = %239, %232
  %266 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %267 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @ROUTE_GWHISADDR6, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %265
  %273 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %274 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %273, i32 0, i32 1
  %275 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %276 = call i32 @ncpaddr_equal(%struct.ncpaddr* %274, %struct.ncpaddr* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %272
  %279 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %280 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %279, i32 0, i32 1
  %281 = load %struct.ncpaddr*, %struct.ncpaddr** %8, align 8
  %282 = call i32 @ncpaddr_copy(%struct.ncpaddr* %280, %struct.ncpaddr* %281)
  br label %283

283:                                              ; preds = %278, %272, %265
  br label %284

284:                                              ; preds = %283, %264
  br label %285

285:                                              ; preds = %284, %231
  br label %286

286:                                              ; preds = %285, %194
  br label %287

287:                                              ; preds = %286, %193
  %288 = load %struct.bundle*, %struct.bundle** %5, align 8
  %289 = load i32, i32* @RTM_ADD, align 4
  %290 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %291 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %290, i32 0, i32 2
  %292 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %293 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %292, i32 0, i32 1
  %294 = call i32 @rt_Set(%struct.bundle* %288, i32 %289, i32* %291, %struct.ncpaddr* %293, i32 1, i32 0)
  br label %295

295:                                              ; preds = %287, %152, %110
  %296 = load %struct.sticky_route*, %struct.sticky_route** %6, align 8
  %297 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %296, i32 0, i32 3
  %298 = load %struct.sticky_route*, %struct.sticky_route** %297, align 8
  store %struct.sticky_route* %298, %struct.sticky_route** %6, align 8
  br label %10

299:                                              ; preds = %10
  ret void
}

declare dso_local i32 @ncprange_getaddr(i32*, %struct.ncpaddr*) #1

declare dso_local i64 @ncpaddr_family(%struct.ncpaddr*) #1

declare dso_local i32 @ncpaddr_equal(%struct.ncpaddr*, %struct.ncpaddr*) #1

declare dso_local i32 @rt_Set(%struct.bundle*, i32, i32*, %struct.ncpaddr*, i32, i32) #1

declare dso_local i32 @ncprange_sethost(i32*, %struct.ncpaddr*) #1

declare dso_local i32 @ncpaddr_copy(%struct.ncpaddr*, %struct.ncpaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
