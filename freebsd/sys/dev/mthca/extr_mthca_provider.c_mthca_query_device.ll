; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_query_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i64, i64 }
%struct.ib_smp = type { i64, i32 }
%struct.mthca_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NODE_INFO = common dso_local global i32 0, align 4
@DEV_LIM_FLAG_ATOMIC = common dso_local global i32 0, align 4
@IB_ATOMIC_HCA = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@MTHCA_QP_PER_MGM = common dso_local global i32 0, align 4
@MTHCA_FLAG_SINAI_OPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_device_attr*, %struct.ib_udata*)* @mthca_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.ib_smp*, align 8
  %9 = alloca %struct.ib_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mthca_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %8, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %9, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = call %struct.mthca_dev* @to_mdev(%struct.ib_device* %14)
  store %struct.mthca_dev* %15, %struct.mthca_dev** %11, align 8
  %16 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %17 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %22 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %294

28:                                               ; preds = %20
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.ib_smp* @kzalloc(i32 16, i32 %29)
  store %struct.ib_smp* %30, %struct.ib_smp** %8, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.ib_smp* @kmalloc(i32 16, i32 %31)
  store %struct.ib_smp* %32, %struct.ib_smp** %9, align 8
  %33 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %34 = icmp ne %struct.ib_smp* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %37 = icmp ne %struct.ib_smp* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %28
  br label %288

39:                                               ; preds = %35
  %40 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %41 = call i32 @memset(%struct.ib_device_attr* %40, i32 0, i32 144)
  %42 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %43 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %45, i32 0, i32 28
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %48 = call i32 @init_query_mad(%struct.ib_smp* %47)
  %49 = load i32, i32* @IB_SMP_ATTR_NODE_INFO, align 4
  %50 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %51 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %53 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %54 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %55 = call i32 @mthca_MAD_IFC(%struct.mthca_dev* %52, i32 1, i32 1, i32 1, i32* null, i32* null, %struct.ib_smp* %53, %struct.ib_smp* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %288

59:                                               ; preds = %39
  %60 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %61 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %64 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %63, i32 0, i32 27
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %66 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 36
  %69 = inttoptr i64 %68 to i32*
  %70 = call i32 @be32_to_cpup(i32* %69)
  %71 = and i32 %70, 16777215
  %72 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %75 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 30
  %78 = inttoptr i64 %77 to i32*
  %79 = call i32 @be16_to_cpup(i32* %78)
  %80 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %80, i32 0, i32 26
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %83 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 32
  %86 = inttoptr i64 %85 to i32*
  %87 = call i32 @be32_to_cpup(i32* %86)
  %88 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %89 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %90, i32 0, i32 25
  %92 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %93 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 4
  %96 = call i32 @memcpy(i32* %91, i64 %95, i32 8)
  %97 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %98 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %97, i32 0, i32 2
  store i64 -1, i64* %98, align 8
  %99 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %100 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 21
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %103, i32 0, i32 24
  store i32 %102, i32* %104, align 4
  %105 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %106 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %110 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %108, %112
  %114 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %115 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %117 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 20
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %121 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %120, i32 0, i32 23
  store i32 %119, i32* %121, align 8
  %122 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %123 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 19
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %127 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %126, i32 0, i32 21
  store i32 %125, i32* %127, align 8
  %128 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %129 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %128, i32 0, i32 21
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %131, i32 0, i32 22
  store i32 %130, i32* %132, align 4
  %133 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %134 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 18
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %138 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 17
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %136, %140
  %142 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %143 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %142, i32 0, i32 20
  store i64 %141, i64* %143, align 8
  %144 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %145 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 16
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %149 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %148, i32 0, i32 19
  store i32 %147, i32* %149, align 8
  %150 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %151 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %155 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 15
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %153, %157
  %159 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %160 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %159, i32 0, i32 18
  store i64 %158, i64* %160, align 8
  %161 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %162 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 14
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %166 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 13
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %164, %168
  %170 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %171 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %170, i32 0, i32 17
  store i64 %169, i64* %171, align 8
  %172 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %173 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = shl i32 1, %175
  %177 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %178 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 4
  %179 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %180 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 12
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %184 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %183, i32 0, i32 16
  store i32 %182, i32* %184, align 8
  %185 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %186 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %189 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = mul nsw i32 %187, %190
  %192 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %193 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 8
  %194 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %195 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 11
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %199 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 10
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %197, %201
  %203 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %204 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %203, i32 0, i32 15
  store i64 %202, i64* %204, align 8
  %205 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %206 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 9
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %210 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %209, i32 0, i32 14
  store i32 %208, i32* %210, align 4
  %211 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %212 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %216 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %215, i32 0, i32 13
  store i32 %214, i32* %216, align 8
  %217 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %218 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %222 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %221, i32 0, i32 12
  store i32 %220, i32* %222, align 4
  %223 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %224 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @DEV_LIM_FLAG_ATOMIC, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %59
  %231 = load i32, i32* @IB_ATOMIC_HCA, align 4
  br label %234

232:                                              ; preds = %59
  %233 = load i32, i32* @IB_ATOMIC_NONE, align 4
  br label %234

234:                                              ; preds = %232, %230
  %235 = phi i32 [ %231, %230 ], [ %233, %232 ]
  %236 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %237 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %236, i32 0, i32 11
  store i32 %235, i32* %237, align 8
  %238 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %239 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %243 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %242, i32 0, i32 10
  store i32 %241, i32* %243, align 4
  %244 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %245 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %249 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %247, %251
  %253 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %254 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %253, i32 0, i32 6
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @MTHCA_QP_PER_MGM, align 4
  %256 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %257 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %256, i32 0, i32 7
  store i32 %255, i32* %257, align 8
  %258 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %259 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %262 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %260, %263
  %265 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %266 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %265, i32 0, i32 8
  store i32 %264, i32* %266, align 4
  %267 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %268 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @MTHCA_FLAG_SINAI_OPT, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %234
  %274 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %275 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %274, i32 0, i32 9
  store i32 255, i32* %275, align 8
  br label %287

276:                                              ; preds = %234
  %277 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %278 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 5
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @ilog2(i64 %280)
  %282 = sub nsw i32 32, %281
  %283 = shl i32 1, %282
  %284 = sub nsw i32 %283, 1
  %285 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %286 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %285, i32 0, i32 9
  store i32 %284, i32* %286, align 8
  br label %287

287:                                              ; preds = %276, %273
  store i32 0, i32* %10, align 4
  br label %288

288:                                              ; preds = %287, %58, %38
  %289 = load %struct.ib_smp*, %struct.ib_smp** %8, align 8
  %290 = call i32 @kfree(%struct.ib_smp* %289)
  %291 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %292 = call i32 @kfree(%struct.ib_smp* %291)
  %293 = load i32, i32* %10, align 4
  store i32 %293, i32* %4, align 4
  br label %294

294:                                              ; preds = %288, %25
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local %struct.mthca_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i32 @mthca_MAD_IFC(%struct.mthca_dev*, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
