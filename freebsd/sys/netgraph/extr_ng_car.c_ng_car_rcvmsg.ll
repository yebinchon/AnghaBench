; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.ng_mesg = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.ng_car_bulkstats = type { %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.ng_car_bulkconf = type { %struct.TYPE_13__, %struct.TYPE_13__ }

@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NG_CAR_COUNT_PACKETS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NG_CAR_SHAPE = common dso_local global i32 0, align 4
@NG_CAR_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_car_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_car_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_car_bulkstats*, align 8
  %12 = alloca %struct.ng_car_bulkconf*, align 8
  %13 = alloca %struct.ng_car_bulkconf*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.TYPE_12__* @NG_NODE_PRIVATE(i32 %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %18 = call i32 @NGI_GET_MSG(i32 %16, %struct.ng_mesg* %17)
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %20 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %395 [
    i32 132, label %23
  ]

23:                                               ; preds = %3
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %25 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %392 [
    i32 129, label %28
    i32 131, label %28
    i32 133, label %61
    i32 130, label %70
    i32 128, label %154
  ]

28:                                               ; preds = %23, %23
  %29 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %31 = load i32, i32* @M_NOWAIT, align 4
  %32 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %29, %struct.ng_mesg* %30, i32 48, i32 %31)
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %34 = icmp eq %struct.ng_mesg* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %9, align 4
  br label %394

37:                                               ; preds = %28
  %38 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %39 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.ng_car_bulkstats*
  store %struct.ng_car_bulkstats* %41, %struct.ng_car_bulkstats** %11, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load %struct.ng_car_bulkstats*, %struct.ng_car_bulkstats** %11, align 8
  %46 = getelementptr inbounds %struct.ng_car_bulkstats, %struct.ng_car_bulkstats* %45, i32 0, i32 1
  %47 = call i32 @bcopy(%struct.TYPE_13__* %44, %struct.TYPE_13__* %46, i32 24)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load %struct.ng_car_bulkstats*, %struct.ng_car_bulkstats** %11, align 8
  %52 = getelementptr inbounds %struct.ng_car_bulkstats, %struct.ng_car_bulkstats* %51, i32 0, i32 0
  %53 = call i32 @bcopy(%struct.TYPE_13__* %50, %struct.TYPE_13__* %52, i32 24)
  %54 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %55 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 129
  br i1 %58, label %59, label %60

59:                                               ; preds = %37
  br label %394

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %23, %60
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = call i32 @bzero(%struct.TYPE_13__* %64, i32 24)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = call i32 @bzero(%struct.TYPE_13__* %68, i32 24)
  br label %394

70:                                               ; preds = %23
  %71 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %72 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %73 = load i32, i32* @M_NOWAIT, align 4
  %74 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %71, %struct.ng_mesg* %72, i32 48, i32 %73)
  %75 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %76 = icmp eq %struct.ng_mesg* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @ENOMEM, align 4
  store i32 %78, i32* %9, align 4
  br label %394

79:                                               ; preds = %70
  %80 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %81 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.ng_car_bulkconf*
  store %struct.ng_car_bulkconf* %83, %struct.ng_car_bulkconf** %12, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %88 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %87, i32 0, i32 1
  %89 = call i32 @bcopy(%struct.TYPE_13__* %86, %struct.TYPE_13__* %88, i32 24)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %94 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %93, i32 0, i32 0
  %95 = call i32 @bcopy(%struct.TYPE_13__* %92, %struct.TYPE_13__* %94, i32 24)
  %96 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %97 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @NG_CAR_COUNT_PACKETS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %79
  %104 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %105 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %107, 1024
  store i32 %108, i32* %106, align 4
  %109 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %110 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %112, 1024
  store i32 %113, i32* %111, align 4
  %114 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %115 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 128
  store i32 %118, i32* %116, align 4
  %119 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %120 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %122, 128
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %103, %79
  %125 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %126 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @NG_CAR_COUNT_PACKETS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %124
  %133 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %134 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 1024
  store i32 %137, i32* %135, align 4
  %138 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %139 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 1024
  store i32 %142, i32* %140, align 4
  %143 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %144 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = sdiv i32 %146, 128
  store i32 %147, i32* %145, align 4
  %148 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %12, align 8
  %149 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = sdiv i32 %151, 128
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %132, %124
  br label %394

154:                                              ; preds = %23
  %155 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %156 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to %struct.ng_car_bulkconf*
  store %struct.ng_car_bulkconf* %158, %struct.ng_car_bulkconf** %13, align 8
  %159 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %160 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = icmp ne i64 %163, 48
  br i1 %164, label %165, label %167

165:                                              ; preds = %154
  %166 = load i32, i32* @EINVAL, align 4
  store i32 %166, i32* %9, align 4
  br label %394

167:                                              ; preds = %154
  %168 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %169 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @NG_CAR_COUNT_PACKETS, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %167
  %176 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %177 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %179, 1024
  store i32 %180, i32* %178, align 4
  %181 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %182 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %184, 1024
  store i32 %185, i32* %183, align 4
  %186 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %187 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %189, 125
  store i32 %190, i32* %188, align 4
  %191 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %192 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %194, 125
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %175, %167
  %197 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %198 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @NG_CAR_COUNT_PACKETS, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %225

204:                                              ; preds = %196
  %205 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %206 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %208, 1024
  store i32 %209, i32* %207, align 4
  %210 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %211 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %213, 1024
  store i32 %214, i32* %212, align 4
  %215 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %216 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %218, 125
  store i32 %219, i32* %217, align 4
  %220 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %221 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = mul nsw i32 %223, 125
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %204, %196
  %226 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %227 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %229, 1000000000
  br i1 %230, label %273, label %231

231:                                              ; preds = %225
  %232 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %233 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = icmp sgt i32 %235, 1000000000
  br i1 %236, label %273, label %237

237:                                              ; preds = %231
  %238 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %239 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp sgt i32 %241, 1000000000
  br i1 %242, label %273, label %243

243:                                              ; preds = %237
  %244 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %245 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = icmp sgt i32 %247, 1000000000
  br i1 %248, label %273, label %249

249:                                              ; preds = %243
  %250 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %251 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %249
  %256 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %257 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %273, label %261

261:                                              ; preds = %255, %249
  %262 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %263 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %261
  %268 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %269 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %267, %255, %243, %237, %231, %225
  %274 = load i32, i32* @EINVAL, align 4
  store i32 %274, i32* %9, align 4
  br label %394

275:                                              ; preds = %267, %261
  %276 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %277 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @NG_CAR_SHAPE, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %290

282:                                              ; preds = %275
  %283 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %284 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %282
  %289 = load i32, i32* @EINVAL, align 4
  store i32 %289, i32* %9, align 4
  br label %394

290:                                              ; preds = %282, %275
  %291 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %292 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @NG_CAR_SHAPE, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %305

297:                                              ; preds = %290
  %298 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %299 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %297
  %304 = load i32, i32* @EINVAL, align 4
  store i32 %304, i32* %9, align 4
  br label %394

305:                                              ; preds = %297, %290
  %306 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %307 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %306, i32 0, i32 1
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 2
  %311 = call i32 @bcopy(%struct.TYPE_13__* %307, %struct.TYPE_13__* %310, i32 24)
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 0
  store i32 %316, i32* %319, align 4
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @NG_CAR_RED, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %335, label %327

327:                                              ; preds = %305
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @NG_CAR_SHAPE, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %339

335:                                              ; preds = %327, %305
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 1
  store i32 0, i32* %338, align 4
  br label %348

339:                                              ; preds = %327
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 1
  store i32 %344, i32* %347, align 4
  br label %348

348:                                              ; preds = %339, %335
  %349 = load %struct.ng_car_bulkconf*, %struct.ng_car_bulkconf** %13, align 8
  %350 = getelementptr inbounds %struct.ng_car_bulkconf, %struct.ng_car_bulkconf* %349, i32 0, i32 0
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 2
  %354 = call i32 @bcopy(%struct.TYPE_13__* %350, %struct.TYPE_13__* %353, i32 24)
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 0
  store i32 %359, i32* %362, align 4
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 5
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @NG_CAR_RED, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %378, label %370

370:                                              ; preds = %348
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @NG_CAR_SHAPE, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %382

378:                                              ; preds = %370, %348
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 1
  store i32 0, i32* %381, align 4
  br label %391

382:                                              ; preds = %370
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 1
  store i32 %387, i32* %390, align 4
  br label %391

391:                                              ; preds = %382, %378
  br label %394

392:                                              ; preds = %23
  %393 = load i32, i32* @EINVAL, align 4
  store i32 %393, i32* %9, align 4
  br label %394

394:                                              ; preds = %392, %391, %303, %288, %273, %165, %153, %77, %61, %59, %35
  br label %397

395:                                              ; preds = %3
  %396 = load i32, i32* @EINVAL, align 4
  store i32 %396, i32* %9, align 4
  br label %397

397:                                              ; preds = %395, %394
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* %4, align 4
  %400 = load i32, i32* %5, align 4
  %401 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %402 = call i32 @NG_RESPOND_MSG(i32 %398, i32 %399, i32 %400, %struct.ng_mesg* %401)
  %403 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %404 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %403)
  %405 = load i32, i32* %9, align 4
  ret i32 %405
}

declare dso_local %struct.TYPE_12__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
