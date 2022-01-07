; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_Setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_Setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp = type { %struct.TYPE_14__, %struct.TYPE_24__, i64, i64, %struct.TYPE_22__, i64, %struct.TYPE_21__, %struct.in_addr, i64, %struct.in_addr, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_23__, i32, %struct.in_addr, i64, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.iface* }
%struct.TYPE_19__ = type { i64, i64 }
%struct.iface = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.ncpaddr }
%struct.ncpaddr = type { i32 }
%struct.in_addr = type { i32 }
%struct.TYPE_16__ = type { i64 }

@INADDR_NONE = common dso_local global i64 0, align 8
@LogIPCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Using trigger address %s\0A\00", align 1
@PROTO_VJCOMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipcp_Setup(%struct.ipcp* %0, i64 %1) #0 {
  %3 = alloca %struct.ipcp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iface*, align 8
  %6 = alloca %struct.ncpaddr, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipcp* %0, %struct.ipcp** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %11 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %15 = load %struct.iface*, %struct.iface** %14, align 8
  store %struct.iface* %15, %struct.iface** %5, align 8
  %16 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %17 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @INADDR_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %24 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  br label %30

28:                                               ; preds = %2
  %29 = load i64, i64* %4, align 8
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi i64 [ %27, %22 ], [ %29, %28 ]
  %32 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %33 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %32, i32 0, i32 12
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %36 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 6
  %38 = call i64 @iplist_isvalid(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %94

40:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %74, %40
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.iface*, %struct.iface** %5, align 8
  %44 = getelementptr inbounds %struct.iface, %struct.iface* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %41
  %48 = load %struct.iface*, %struct.iface** %5, align 8
  %49 = getelementptr inbounds %struct.iface, %struct.iface* %48, i32 0, i32 1
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = call i32 @ncpaddr_getip4(%struct.ncpaddr* %54, %struct.in_addr* %7)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %74

58:                                               ; preds = %47
  %59 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %60 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @iplist_ip2pos(i32* %61, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %68 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 6
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @iplist_setcurpos(i32* %69, i32 %70)
  %72 = call i32 @ncpaddr_setip4(%struct.ncpaddr* %6, i32 %71)
  br label %77

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %57
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %41

77:                                               ; preds = %66, %41
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.iface*, %struct.iface** %5, align 8
  %80 = getelementptr inbounds %struct.iface, %struct.iface* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %85 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 6
  %87 = call i32 @iplist_setrandpos(i32* %86)
  %88 = call i32 @ncpaddr_setip4(%struct.ncpaddr* %6, i32 %87)
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %91 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 5
  %93 = call i32 @ncprange_sethost(i32* %92, %struct.ncpaddr* %6)
  br label %94

94:                                               ; preds = %89, %30
  %95 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %96 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %95, i32 0, i32 11
  store i64 0, i64* %96, align 8
  %97 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %98 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %97, i32 0, i32 10
  store i64 0, i64* %98, align 8
  %99 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %100 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 5
  %102 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %103 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %102, i32 0, i32 9
  %104 = call i32 @ncprange_getip4addr(i32* %101, %struct.in_addr* %103)
  %105 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %106 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %105, i32 0, i32 8
  store i64 0, i64* %106, align 8
  %107 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %108 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %94
  %113 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %114 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %113, i32 0, i32 7
  %115 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %116 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  %118 = bitcast %struct.in_addr* %114 to i8*
  %119 = bitcast %struct.in_addr* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 4 %119, i64 4, i1 false)
  %120 = load i32, i32* @LogIPCP, align 4
  %121 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %122 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @inet_ntoa(i32 %125)
  %127 = call i32 @log_Printf(i32 %120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %171

128:                                              ; preds = %94
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %154, %128
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.iface*, %struct.iface** %5, align 8
  %132 = getelementptr inbounds %struct.iface, %struct.iface* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ult i32 %130, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %129
  %136 = load %struct.iface*, %struct.iface** %5, align 8
  %137 = getelementptr inbounds %struct.iface, %struct.iface* %136, i32 0, i32 1
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = call i32 @ncprange_getaddr(i32* %142, %struct.ncpaddr* %6)
  %144 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %145 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 2
  %147 = call i64 @ncprange_contains(i32* %146, %struct.ncpaddr* %6)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %135
  %150 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %151 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %150, i32 0, i32 7
  %152 = call i32 @ncpaddr_getip4(%struct.ncpaddr* %6, %struct.in_addr* %151)
  br label %157

153:                                              ; preds = %135
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %9, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %129

157:                                              ; preds = %149, %129
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.iface*, %struct.iface** %5, align 8
  %160 = getelementptr inbounds %struct.iface, %struct.iface* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %165 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 2
  %167 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %168 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %167, i32 0, i32 7
  %169 = call i32 @ncprange_getip4addr(i32* %166, %struct.in_addr* %168)
  br label %170

170:                                              ; preds = %163, %157
  br label %171

171:                                              ; preds = %170, %112
  %172 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %173 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @IsEnabled(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %197, label %179

179:                                              ; preds = %171
  %180 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %181 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %217

188:                                              ; preds = %179
  %189 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %190 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %217

197:                                              ; preds = %188, %171
  %198 = load i32, i32* @PROTO_VJCOMP, align 4
  %199 = shl i32 %198, 16
  %200 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %201 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %204, 1
  %206 = shl i32 %205, 8
  %207 = add nsw i32 %199, %206
  %208 = sext i32 %207 to i64
  %209 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %210 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %208, %213
  %215 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %216 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %215, i32 0, i32 5
  store i64 %214, i64* %216, align 8
  br label %220

217:                                              ; preds = %188, %179
  %218 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %219 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %218, i32 0, i32 5
  store i64 0, i64* %219, align 8
  br label %220

220:                                              ; preds = %217, %197
  %221 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %222 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %225 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %228, 1
  %230 = call i32 @sl_compress_init(i32* %223, i32 %229)
  %231 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %232 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %231, i32 0, i32 3
  store i64 0, i64* %232, align 8
  %233 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %234 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %233, i32 0, i32 2
  store i64 0, i64* %234, align 8
  %235 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %236 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i64 0
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @INADDR_NONE, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %220
  %246 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %247 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %251 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %253, align 8
  %255 = call i32 @memcpy(i32 %249, %struct.TYPE_15__* %254, i32 4)
  br label %256

256:                                              ; preds = %245, %220
  ret void
}

declare dso_local i64 @iplist_isvalid(i32*) #1

declare dso_local i32 @ncpaddr_getip4(%struct.ncpaddr*, %struct.in_addr*) #1

declare dso_local i32 @iplist_ip2pos(i32*, i32) #1

declare dso_local i32 @ncpaddr_setip4(%struct.ncpaddr*, i32) #1

declare dso_local i32 @iplist_setcurpos(i32*, i32) #1

declare dso_local i32 @iplist_setrandpos(i32*) #1

declare dso_local i32 @ncprange_sethost(i32*, %struct.ncpaddr*) #1

declare dso_local i32 @ncprange_getip4addr(i32*, %struct.in_addr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ncprange_getaddr(i32*, %struct.ncpaddr*) #1

declare dso_local i64 @ncprange_contains(i32*, %struct.ncpaddr*) #1

declare dso_local i64 @IsEnabled(i32) #1

declare dso_local i32 @sl_compress_init(i32*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
