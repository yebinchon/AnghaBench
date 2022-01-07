; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_add_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i64, i32, i32 }
%struct.ib_uverbs_device = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, i32*, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@ib_uverbs_dev_ktype = common dso_local global i32 0, align 4
@map_lock = common dso_local global i32 0, align 4
@dev_map = common dso_local global i32 0, align 4
@IB_UVERBS_MAX_DEVICES = common dso_local global i32 0, align 4
@overflow_maj = common dso_local global i64 0, align 8
@overflow_map = common dso_local global i32 0, align 4
@IB_UVERBS_BASE_DEV = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@uverbs_mmap_fops = common dso_local global i32 0, align 4
@uverbs_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"uverbs%d\00", align 1
@uverbs_class = common dso_local global i32 0, align 4
@dev_attr_ibdev = common dso_local global i32 0, align 4
@dev_attr_abi_version = common dso_local global i32 0, align 4
@device_group = common dso_local global i32 0, align 4
@uverbs_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_uverbs_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_uverbs_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ib_uverbs_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %8 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %225

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ib_uverbs_device* @kzalloc(i32 88, i32 %13)
  store %struct.ib_uverbs_device* %14, %struct.ib_uverbs_device** %5, align 8
  %15 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %16 = icmp ne %struct.ib_uverbs_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %225

18:                                               ; preds = %12
  %19 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %20 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %19, i32 0, i32 13
  %21 = call i32 @init_srcu_struct(i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %26 = call i32 @kfree(%struct.ib_uverbs_device* %25)
  br label %225

27:                                               ; preds = %18
  %28 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %29 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %28, i32 0, i32 3
  %30 = call i32 @atomic_set(i32* %29, i32 1)
  %31 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %32 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %31, i32 0, i32 2
  %33 = call i32 @init_completion(i32* %32)
  %34 = load i32, i32* @RB_ROOT, align 4
  %35 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %36 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %38 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %37, i32 0, i32 11
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %41 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %40, i32 0, i32 1
  %42 = call i32 @kobject_init(i32* %41, i32* @ib_uverbs_dev_ktype)
  %43 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %44 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %43, i32 0, i32 10
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %47 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %46, i32 0, i32 9
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %50 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %49, i32 0, i32 8
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = call i32 @spin_lock(i32* @map_lock)
  %53 = load i32, i32* @dev_map, align 4
  %54 = load i32, i32* @IB_UVERBS_MAX_DEVICES, align 4
  %55 = call i32 @find_first_zero_bit(i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @IB_UVERBS_MAX_DEVICES, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %27
  %60 = call i32 @spin_unlock(i32* @map_lock)
  %61 = call i32 (...) @find_overflow_devnum()
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %210

65:                                               ; preds = %59
  %66 = call i32 @spin_lock(i32* @map_lock)
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @IB_UVERBS_MAX_DEVICES, align 4
  %69 = add nsw i32 %67, %68
  %70 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %71 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @overflow_maj, align 8
  %75 = add nsw i64 %73, %74
  store i64 %75, i64* %4, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @overflow_map, align 4
  %78 = call i32 @set_bit(i32 %76, i32 %77)
  br label %90

79:                                               ; preds = %27
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %82 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @IB_UVERBS_BASE_DEV, align 8
  %86 = add nsw i64 %84, %85
  store i64 %86, i64* %4, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @dev_map, align 4
  %89 = call i32 @set_bit(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %79, %65
  %91 = call i32 @spin_unlock(i32* @map_lock)
  %92 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %93 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %96 = call i32 @rcu_assign_pointer(i32 %94, %struct.ib_device* %95)
  %97 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %98 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %101 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %103 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %102, i32 0, i32 4
  %104 = call i32 @cdev_init(%struct.TYPE_10__* %103, i32* null)
  %105 = load i32, i32* @THIS_MODULE, align 4
  %106 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %107 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 8
  %109 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %110 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32* @uverbs_mmap_fops, i32* @uverbs_fops
  %115 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %116 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  store i32* %114, i32** %117, align 8
  %118 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %119 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %118, i32 0, i32 1
  %120 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %121 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i32* %119, i32** %123, align 8
  %124 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %125 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %128 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @kobject_set_name(%struct.TYPE_8__* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %132 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %131, i32 0, i32 4
  %133 = load i64, i64* %4, align 8
  %134 = call i64 @cdev_add(%struct.TYPE_10__* %132, i64 %133, i32 1)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %90
  br label %192

137:                                              ; preds = %90
  %138 = load i32, i32* @uverbs_class, align 4
  %139 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %140 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %143 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %147 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %148 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call %struct.TYPE_9__* @device_create(i32 %138, i32 %141, i32 %145, %struct.ib_uverbs_device* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %149)
  %151 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %152 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %151, i32 0, i32 5
  store %struct.TYPE_9__* %150, %struct.TYPE_9__** %152, align 8
  %153 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %154 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %153, i32 0, i32 5
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = call i64 @IS_ERR(%struct.TYPE_9__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %137
  br label %192

159:                                              ; preds = %137
  %160 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %161 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %160, i32 0, i32 5
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = call i64 @device_create_file(%struct.TYPE_9__* %162, i32* @dev_attr_ibdev)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %185

166:                                              ; preds = %159
  %167 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %168 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %167, i32 0, i32 5
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = call i64 @device_create_file(%struct.TYPE_9__* %169, i32* @dev_attr_abi_version)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %185

173:                                              ; preds = %166
  %174 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %175 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %174, i32 0, i32 5
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = call i64 @sysfs_create_group(i32* %177, i32* @device_group)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %185

181:                                              ; preds = %173
  %182 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %183 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %184 = call i32 @ib_set_client_data(%struct.ib_device* %182, i32* @uverbs_client, %struct.ib_uverbs_device* %183)
  br label %225

185:                                              ; preds = %180, %172, %165
  %186 = load i32, i32* @uverbs_class, align 4
  %187 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %188 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @device_destroy(i32 %186, i32 %190)
  br label %192

192:                                              ; preds = %185, %158, %136
  %193 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %194 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %193, i32 0, i32 4
  %195 = call i32 @cdev_del(%struct.TYPE_10__* %194)
  %196 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %197 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @IB_UVERBS_MAX_DEVICES, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %192
  %202 = load i32, i32* %3, align 4
  %203 = load i32, i32* @dev_map, align 4
  %204 = call i32 @clear_bit(i32 %202, i32 %203)
  br label %209

205:                                              ; preds = %192
  %206 = load i32, i32* %3, align 4
  %207 = load i32, i32* @overflow_map, align 4
  %208 = call i32 @clear_bit(i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %205, %201
  br label %210

210:                                              ; preds = %209, %64
  %211 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %212 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %211, i32 0, i32 3
  %213 = call i64 @atomic_dec_and_test(i32* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %217 = call i32 @ib_uverbs_comp_dev(%struct.ib_uverbs_device* %216)
  br label %218

218:                                              ; preds = %215, %210
  %219 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %220 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %219, i32 0, i32 2
  %221 = call i32 @wait_for_completion(i32* %220)
  %222 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %223 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %222, i32 0, i32 1
  %224 = call i32 @kobject_put(i32* %223)
  br label %225

225:                                              ; preds = %218, %181, %24, %17, %11
  ret void
}

declare dso_local %struct.ib_uverbs_device* @kzalloc(i32, i32) #1

declare dso_local i32 @init_srcu_struct(i32*) #1

declare dso_local i32 @kfree(%struct.ib_uverbs_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @find_overflow_devnum(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ib_device*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @kobject_set_name(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @cdev_add(%struct.TYPE_10__*, i64, i32) #1

declare dso_local %struct.TYPE_9__* @device_create(i32, i32, i32, %struct.ib_uverbs_device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i64 @device_create_file(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.ib_uverbs_device*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_10__*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @ib_uverbs_comp_dev(%struct.ib_uverbs_device*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
