; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Show.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.cmdargs = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.iface* }
%struct.iface = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.ncpaddr }
%struct.ncpaddr = type { i32 }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s (idx %d) <\00", align 1
@if_flags = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"> mtu %lu has %d address%s:\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"  inet %s --> \00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"255.255.255.255\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c" netmask 0x%08lx\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"  inet6 %s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" --> %s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c" prefixlen %d\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c" scopeid 0x%x\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iface_Show(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca %struct.ncpaddr, align 4
  %4 = alloca %struct.iface*, align 8
  %5 = alloca %struct.iface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.in_addr, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %11 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %12 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.iface*, %struct.iface** %14, align 8
  store %struct.iface* %15, %struct.iface** %4, align 8
  %16 = load %struct.iface*, %struct.iface** %4, align 8
  %17 = getelementptr inbounds %struct.iface, %struct.iface* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.iface* @iface_Create(i32 %18)
  store %struct.iface* %19, %struct.iface** %5, align 8
  %20 = load %struct.iface*, %struct.iface** %5, align 8
  %21 = getelementptr inbounds %struct.iface, %struct.iface* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.iface*, %struct.iface** %4, align 8
  %24 = getelementptr inbounds %struct.iface, %struct.iface* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 %22, i32* %7, align 4
  %25 = load %struct.iface*, %struct.iface** %5, align 8
  %26 = call i32 @iface_Free(%struct.iface* %25)
  %27 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %28 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.iface*, %struct.iface** %4, align 8
  %31 = getelementptr inbounds %struct.iface, %struct.iface* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.iface*, %struct.iface** %4, align 8
  %34 = getelementptr inbounds %struct.iface, %struct.iface* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %79, %1
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %39, 1
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @if_flags, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %41
  %52 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %53 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.iface*, %struct.iface** %4, align 8
  %57 = getelementptr inbounds %struct.iface, %struct.iface* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @if_flags, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @if_flags, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %51, %41
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %37

82:                                               ; preds = %37
  %83 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %84 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.iface*, %struct.iface** %4, align 8
  %87 = getelementptr inbounds %struct.iface, %struct.iface* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.iface*, %struct.iface** %4, align 8
  %90 = getelementptr inbounds %struct.iface, %struct.iface* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iface*, %struct.iface** %4, align 8
  %93 = getelementptr inbounds %struct.iface, %struct.iface* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %98 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %88, i32 %91, i8* %97)
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %248, %82
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.iface*, %struct.iface** %4, align 8
  %102 = getelementptr inbounds %struct.iface, %struct.iface* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ult i32 %100, %103
  br i1 %104, label %105, label %251

105:                                              ; preds = %99
  %106 = load %struct.iface*, %struct.iface** %4, align 8
  %107 = getelementptr inbounds %struct.iface, %struct.iface* %106, i32 0, i32 2
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = call i32 @ncprange_getaddr(i32* %112, %struct.ncpaddr* %3)
  %114 = load %struct.iface*, %struct.iface** %4, align 8
  %115 = getelementptr inbounds %struct.iface, %struct.iface* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = call i32 @ncprange_family(i32* %120)
  switch i32 %121, label %243 [
    i32 129, label %122
    i32 128, label %172
  ]

122:                                              ; preds = %105
  %123 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %124 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ncpaddr_ntoa(%struct.ncpaddr* %3)
  %127 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  %128 = load %struct.iface*, %struct.iface** %4, align 8
  %129 = getelementptr inbounds %struct.iface, %struct.iface* %128, i32 0, i32 2
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = call i32 @ncpaddr_family(%struct.ncpaddr* %134)
  %136 = load i32, i32* @AF_UNSPEC, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %122
  %139 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %140 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %156

143:                                              ; preds = %122
  %144 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %145 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.iface*, %struct.iface** %4, align 8
  %148 = getelementptr inbounds %struct.iface, %struct.iface* %147, i32 0, i32 2
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = call i32 @ncpaddr_ntoa(%struct.ncpaddr* %153)
  %155 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %143, %138
  %157 = load %struct.iface*, %struct.iface** %4, align 8
  %158 = getelementptr inbounds %struct.iface, %struct.iface* %157, i32 0, i32 2
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = call i32 @ncprange_getip4mask(i32* %163, %struct.in_addr* %10)
  %165 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %166 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @ntohl(i32 %169)
  %171 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %167, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i64 %170)
  br label %243

172:                                              ; preds = %105
  %173 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %174 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @ncpaddr_ntoa(%struct.ncpaddr* %3)
  %177 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %176)
  %178 = load %struct.iface*, %struct.iface** %4, align 8
  %179 = getelementptr inbounds %struct.iface, %struct.iface* %178, i32 0, i32 2
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = call i32 @ncpaddr_family(%struct.ncpaddr* %184)
  %186 = load i32, i32* @AF_UNSPEC, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %172
  %189 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %190 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.iface*, %struct.iface** %4, align 8
  %193 = getelementptr inbounds %struct.iface, %struct.iface* %192, i32 0, i32 2
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = call i32 @ncpaddr_ntoa(%struct.ncpaddr* %198)
  %200 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %188, %172
  %202 = load %struct.iface*, %struct.iface** %4, align 8
  %203 = getelementptr inbounds %struct.iface, %struct.iface* %202, i32 0, i32 2
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = call i32 @ncprange_getwidth(i32* %208, i32* %9)
  %210 = load %struct.iface*, %struct.iface** %4, align 8
  %211 = getelementptr inbounds %struct.iface, %struct.iface* %210, i32 0, i32 2
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = call i32 @ncpaddr_family(%struct.ncpaddr* %216)
  %218 = load i32, i32* @AF_UNSPEC, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %201
  %221 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %222 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %220, %201
  %227 = load %struct.iface*, %struct.iface** %4, align 8
  %228 = getelementptr inbounds %struct.iface, %struct.iface* %227, i32 0, i32 2
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = call i32 @ncprange_scopeid(i32* %233)
  store i32 %234, i32* %8, align 4
  %235 = icmp ne i32 %234, -1
  br i1 %235, label %236, label %242

236:                                              ; preds = %226
  %237 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %238 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %239, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %240)
  br label %242

242:                                              ; preds = %236, %226
  br label %243

243:                                              ; preds = %105, %242, %156
  %244 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %245 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %248

248:                                              ; preds = %243
  %249 = load i32, i32* %6, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %6, align 4
  br label %99

251:                                              ; preds = %99
  ret i32 0
}

declare dso_local %struct.iface* @iface_Create(i32) #1

declare dso_local i32 @iface_Free(%struct.iface*) #1

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #1

declare dso_local i32 @ncprange_getaddr(i32*, %struct.ncpaddr*) #1

declare dso_local i32 @ncprange_family(i32*) #1

declare dso_local i32 @ncpaddr_ntoa(%struct.ncpaddr*) #1

declare dso_local i32 @ncpaddr_family(%struct.ncpaddr*) #1

declare dso_local i32 @ncprange_getip4mask(i32*, %struct.in_addr*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @ncprange_getwidth(i32*, i32*) #1

declare dso_local i32 @ncprange_scopeid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
