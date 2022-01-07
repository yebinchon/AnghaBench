; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_AddCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_AddCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_8__*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.in_addr, %struct.TYPE_9__, %struct.in_addr }
%struct.TYPE_9__ = type { %struct.in_addr* }
%struct.in_addr = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.ncpaddr = type { i32 }
%struct.ncprange = type { i32 }
%struct.in6_addr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MYADDR\00", align 1
@ROUTE_DSTMYADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"MYADDR6\00", align 1
@ROUTE_DSTMYADDR6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"HISADDR\00", align 1
@ROUTE_DSTHISADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"HISADDR6\00", align 1
@ROUTE_DSTHISADDR6 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"DNS0\00", align 1
@ROUTE_DSTDNS0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"DNS1\00", align 1
@ROUTE_DSTDNS1 = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: Invalid destination address\0A\00", align 1
@ROUTE_GWHISADDR = common dso_local global i32 0, align 4
@ROUTE_GWHISADDR6 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"%s: Invalid gateway address\0A\00", align 1
@RTM_ADD = common dso_local global i32 0, align 4
@ROUTE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @AddCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.ncpaddr, align 4
  %5 = alloca %struct.ncprange, align 4
  %6 = alloca %struct.in_addr, align 8
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.in_addr, align 8
  %12 = alloca %struct.in_addr, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %17 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 3
  %20 = icmp ne i32 %15, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %23 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %26 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 2
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %445

31:                                               ; preds = %21, %1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %36 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 2
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %161

40:                                               ; preds = %31
  %41 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %42 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %45 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @strcasecmp(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %160

53:                                               ; preds = %40
  %54 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %55 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %54, i32 0, i32 2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %59 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %62 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ncprange_aton(%struct.ncprange* %5, %struct.TYPE_13__* %57, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %53
  store i32 -1, i32* %2, align 4
  br label %445

70:                                               ; preds = %53
  %71 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %72 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %75 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @strncasecmp(i32 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* @ROUTE_DSTMYADDR, align 4
  store i32 %83, i32* %10, align 4
  br label %159

84:                                               ; preds = %70
  %85 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %86 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %89 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strncasecmp(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %84
  %97 = load i32, i32* @ROUTE_DSTMYADDR6, align 4
  store i32 %97, i32* %10, align 4
  br label %158

98:                                               ; preds = %84
  %99 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %100 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %103 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @strncasecmp(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %98
  %111 = load i32, i32* @ROUTE_DSTHISADDR, align 4
  store i32 %111, i32* %10, align 4
  br label %157

112:                                              ; preds = %98
  %113 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %114 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %117 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @strncasecmp(i32 %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %112
  %125 = load i32, i32* @ROUTE_DSTHISADDR6, align 4
  store i32 %125, i32* %10, align 4
  br label %156

126:                                              ; preds = %112
  %127 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %128 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %131 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @strncasecmp(i32 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %126
  %139 = load i32, i32* @ROUTE_DSTDNS0, align 4
  store i32 %139, i32* %10, align 4
  br label %155

140:                                              ; preds = %126
  %141 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %142 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %145 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @strncasecmp(i32 %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %140
  %153 = load i32, i32* @ROUTE_DSTDNS1, align 4
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %152, %140
  br label %155

155:                                              ; preds = %154, %138
  br label %156

156:                                              ; preds = %155, %124
  br label %157

157:                                              ; preds = %156, %110
  br label %158

158:                                              ; preds = %157, %96
  br label %159

159:                                              ; preds = %158, %82
  br label %160

160:                                              ; preds = %159, %52
  store i32 1, i32* %9, align 4
  br label %307

161:                                              ; preds = %31
  %162 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %163 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %166 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @strcasecmp(i32 %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %161
  %174 = load i32, i32* @ROUTE_DSTMYADDR, align 4
  store i32 %174, i32* %10, align 4
  %175 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %176 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %175, i32 0, i32 2
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = bitcast %struct.in_addr* %6 to i8*
  %182 = bitcast %struct.in_addr* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %181, i8* align 8 %182, i64 8, i1 false)
  br label %289

183:                                              ; preds = %161
  %184 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %185 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %188 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @strcasecmp(i32 %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %183
  %196 = load i32, i32* @ROUTE_DSTHISADDR, align 4
  store i32 %196, i32* %10, align 4
  %197 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %198 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %197, i32 0, i32 2
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = bitcast %struct.in_addr* %6 to i8*
  %204 = bitcast %struct.in_addr* %202 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %203, i8* align 8 %204, i64 8, i1 false)
  br label %288

205:                                              ; preds = %183
  %206 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %207 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %210 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %208, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @strcasecmp(i32 %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %205
  %218 = load i32, i32* @ROUTE_DSTDNS0, align 4
  store i32 %218, i32* %10, align 4
  %219 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %220 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %219, i32 0, i32 2
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load %struct.in_addr*, %struct.in_addr** %225, align 8
  %227 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %226, i64 0
  %228 = bitcast %struct.in_addr* %6 to i8*
  %229 = bitcast %struct.in_addr* %227 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %228, i8* align 8 %229, i64 8, i1 false)
  br label %287

230:                                              ; preds = %205
  %231 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %232 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %235 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @strcasecmp(i32 %239, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %255

242:                                              ; preds = %230
  %243 = load i32, i32* @ROUTE_DSTDNS1, align 4
  store i32 %243, i32* %10, align 4
  %244 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %245 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %244, i32 0, i32 2
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load %struct.in_addr*, %struct.in_addr** %250, align 8
  %252 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %251, i64 1
  %253 = bitcast %struct.in_addr* %6 to i8*
  %254 = bitcast %struct.in_addr* %252 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %253, i8* align 8 %254, i64 8, i1 false)
  br label %286

255:                                              ; preds = %230
  %256 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %257 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %260 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %258, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i64 @GetIpAddr(i32 %264)
  %266 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i64 %265, i64* %266, align 8
  %267 = bitcast %struct.in_addr* %6 to i8*
  %268 = bitcast %struct.in_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 8, i1 false)
  %269 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @INADDR_NONE, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %285

273:                                              ; preds = %255
  %274 = load i32, i32* @LogWARN, align 4
  %275 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %276 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %275, i32 0, i32 4
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %279 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %277, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @log_Printf(i32 %274, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %283)
  store i32 -1, i32* %2, align 4
  br label %445

285:                                              ; preds = %255
  br label %286

286:                                              ; preds = %285, %242
  br label %287

287:                                              ; preds = %286, %217
  br label %288

288:                                              ; preds = %287, %195
  br label %289

289:                                              ; preds = %288, %173
  %290 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %291 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %290, i32 0, i32 4
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %294 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %292, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = call i64 @GetIpAddr(i32 %299)
  %301 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  store i64 %300, i64* %301, align 8
  %302 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @ncprange_setip4(%struct.ncprange* %5, i64 %303, i64 %305)
  store i32 2, i32* %9, align 4
  br label %307

307:                                              ; preds = %289, %160
  %308 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %309 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %308, i32 0, i32 4
  %310 = load i32*, i32** %309, align 8
  %311 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %312 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %9, align 4
  %315 = add nsw i32 %313, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %310, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = call i64 @strcasecmp(i32 %318, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %334

321:                                              ; preds = %307
  %322 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %323 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %322, i32 0, i32 2
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @ncpaddr_setip4(%struct.ncpaddr* %4, i64 %329)
  %331 = load i32, i32* @ROUTE_GWHISADDR, align 4
  %332 = load i32, i32* %10, align 4
  %333 = or i32 %332, %331
  store i32 %333, i32* %10, align 4
  br label %398

334:                                              ; preds = %307
  %335 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %336 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %335, i32 0, i32 4
  %337 = load i32*, i32** %336, align 8
  %338 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %339 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %9, align 4
  %342 = add nsw i32 %340, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %337, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = call i64 @strcasecmp(i32 %345, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %364

348:                                              ; preds = %334
  %349 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %350 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %349, i32 0, i32 2
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  %355 = call i32 @ncpaddr_getip6(i32* %354, %struct.in6_addr* %7)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %348
  %358 = call i32 @memset(%struct.in6_addr* %7, i8 signext 0, i32 4)
  br label %359

359:                                              ; preds = %357, %348
  %360 = call i32 @ncpaddr_setip6(%struct.ncpaddr* %4, %struct.in6_addr* %7)
  %361 = load i32, i32* @ROUTE_GWHISADDR6, align 4
  %362 = load i32, i32* %10, align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* %10, align 4
  br label %397

364:                                              ; preds = %334
  %365 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %366 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %365, i32 0, i32 2
  %367 = load %struct.TYPE_12__*, %struct.TYPE_12__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 0
  %369 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %370 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %369, i32 0, i32 4
  %371 = load i32*, i32** %370, align 8
  %372 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %373 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %9, align 4
  %376 = add nsw i32 %374, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %371, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @ncpaddr_aton(%struct.ncpaddr* %4, %struct.TYPE_13__* %368, i32 %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %396, label %382

382:                                              ; preds = %364
  %383 = load i32, i32* @LogWARN, align 4
  %384 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %385 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %384, i32 0, i32 4
  %386 = load i32*, i32** %385, align 8
  %387 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %388 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %9, align 4
  %391 = add nsw i32 %389, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %386, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @log_Printf(i32 %383, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %394)
  store i32 -1, i32* %2, align 4
  br label %445

396:                                              ; preds = %364
  br label %397

397:                                              ; preds = %396, %359
  br label %398

398:                                              ; preds = %397, %321
  %399 = load i32, i32* %8, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = call i32 @ncpaddr_family(%struct.ncpaddr* %4)
  %403 = call i32 @ncprange_setdefault(%struct.ncprange* %5, i32 %402)
  br label %404

404:                                              ; preds = %401, %398
  %405 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %406 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %405, i32 0, i32 2
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %406, align 8
  %408 = load i32, i32* @RTM_ADD, align 4
  %409 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %410 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %409, i32 0, i32 3
  %411 = load %struct.TYPE_8__*, %struct.TYPE_8__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  %415 = zext i1 %414 to i64
  %416 = select i1 %414, i32 1, i32 0
  %417 = load i32, i32* %10, align 4
  %418 = load i32, i32* @ROUTE_GWHISADDR, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %426, label %421

421:                                              ; preds = %404
  %422 = load i32, i32* %10, align 4
  %423 = load i32, i32* @ROUTE_GWHISADDR6, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br label %426

426:                                              ; preds = %421, %404
  %427 = phi i1 [ true, %404 ], [ %425, %421 ]
  %428 = zext i1 %427 to i64
  %429 = select i1 %427, i32 1, i32 0
  %430 = call i64 @rt_Set(%struct.TYPE_12__* %407, i32 %408, %struct.ncprange* %5, %struct.ncpaddr* %4, i32 %416, i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %444

432:                                              ; preds = %426
  %433 = load i32, i32* %10, align 4
  %434 = load i32, i32* @ROUTE_STATIC, align 4
  %435 = icmp ne i32 %433, %434
  br i1 %435, label %436, label %444

436:                                              ; preds = %432
  %437 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %438 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %437, i32 0, i32 2
  %439 = load %struct.TYPE_12__*, %struct.TYPE_12__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 0
  %442 = load i32, i32* %10, align 4
  %443 = call i32 @route_Add(i32* %441, i32 %442, %struct.ncprange* %5, %struct.ncpaddr* %4)
  br label %444

444:                                              ; preds = %436, %432, %426
  store i32 0, i32* %2, align 4
  br label %445

445:                                              ; preds = %444, %382, %273, %69, %30
  %446 = load i32, i32* %2, align 4
  ret i32 %446
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @ncprange_aton(%struct.ncprange*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @strncasecmp(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @GetIpAddr(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @ncprange_setip4(%struct.ncprange*, i64, i64) #1

declare dso_local i32 @ncpaddr_setip4(%struct.ncpaddr*, i64) #1

declare dso_local i32 @ncpaddr_getip6(i32*, %struct.in6_addr*) #1

declare dso_local i32 @memset(%struct.in6_addr*, i8 signext, i32) #1

declare dso_local i32 @ncpaddr_setip6(%struct.ncpaddr*, %struct.in6_addr*) #1

declare dso_local i32 @ncpaddr_aton(%struct.ncpaddr*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ncprange_setdefault(%struct.ncprange*, i32) #1

declare dso_local i32 @ncpaddr_family(%struct.ncpaddr*) #1

declare dso_local i64 @rt_Set(%struct.TYPE_12__*, i32, %struct.ncprange*, %struct.ncpaddr*, i32, i32) #1

declare dso_local i32 @route_Add(i32*, i32, %struct.ncprange*, %struct.ncpaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
