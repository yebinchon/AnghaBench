; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucm.c_ib_ucm_add_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucm.c_ib_ucm_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32 }
%struct.ib_ucm_device = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.ib_device* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dev_map = common dso_local global i32 0, align 4
@IB_UCM_MAX_DEVICES = common dso_local global i32 0, align 4
@overflow_maj = common dso_local global i64 0, align 8
@overflow_map = common dso_local global i32 0, align 4
@IB_UCM_BASE_DEV = common dso_local global i64 0, align 8
@ucm_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ucm%d\00", align 1
@cm_class = common dso_local global i32 0, align 4
@ib_ucm_release_dev = common dso_local global i32 0, align 4
@dev_attr_ibdev = common dso_local global i32 0, align 4
@ucm_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_ucm_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_ucm_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ib_ucm_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %6 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %7 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %12 = call i32 @rdma_cap_ib_cm(%struct.ib_device* %11, i32 1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %1
  br label %148

15:                                               ; preds = %10
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ib_ucm_device* @kzalloc(i32 48, i32 %16)
  store %struct.ib_ucm_device* %17, %struct.ib_ucm_device** %5, align 8
  %18 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %19 = icmp ne %struct.ib_ucm_device* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %148

21:                                               ; preds = %15
  %22 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %23 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %24 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %23, i32 0, i32 3
  store %struct.ib_device* %22, %struct.ib_device** %24, align 8
  %25 = load i32, i32* @dev_map, align 4
  %26 = load i32, i32* @IB_UCM_MAX_DEVICES, align 4
  %27 = call i32 @find_first_zero_bit(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @IB_UCM_MAX_DEVICES, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %21
  %32 = call i32 (...) @find_overflow_devnum()
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %145

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @IB_UCM_MAX_DEVICES, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %41 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @overflow_maj, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %4, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @overflow_map, align 4
  %48 = call i32 @set_bit(i32 %46, i32 %47)
  br label %60

49:                                               ; preds = %21
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %52 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @IB_UCM_BASE_DEV, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %4, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @dev_map, align 4
  %59 = call i32 @set_bit(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %49, %36
  %61 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %62 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %61, i32 0, i32 1
  %63 = call i32 @cdev_init(%struct.TYPE_9__* %62, i32* @ucm_fops)
  %64 = load i32, i32* @THIS_MODULE, align 4
  %65 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %66 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  %68 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %69 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %72 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @kobject_set_name(i32* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %76 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %75, i32 0, i32 1
  %77 = load i64, i64* %4, align 8
  %78 = call i64 @cdev_add(%struct.TYPE_9__* %76, i64 %77, i32 1)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  br label %145

81:                                               ; preds = %60
  %82 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %83 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  store i32* @cm_class, i32** %84, align 8
  %85 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %86 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %89 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %92 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %96 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @ib_ucm_release_dev, align 4
  %99 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %100 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %103 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %102, i32 0, i32 2
  %104 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %105 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_set_name(%struct.TYPE_8__* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %109 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %108, i32 0, i32 2
  %110 = call i64 @device_register(%struct.TYPE_8__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %81
  br label %127

113:                                              ; preds = %81
  %114 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %115 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %114, i32 0, i32 2
  %116 = call i64 @device_create_file(%struct.TYPE_8__* %115, i32* @dev_attr_ibdev)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %123

119:                                              ; preds = %113
  %120 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %121 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %122 = call i32 @ib_set_client_data(%struct.ib_device* %120, i32* @ucm_client, %struct.ib_ucm_device* %121)
  br label %148

123:                                              ; preds = %118
  %124 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %125 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %124, i32 0, i32 2
  %126 = call i32 @device_unregister(%struct.TYPE_8__* %125)
  br label %127

127:                                              ; preds = %123, %112
  %128 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %129 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %128, i32 0, i32 1
  %130 = call i32 @cdev_del(%struct.TYPE_9__* %129)
  %131 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %132 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @IB_UCM_MAX_DEVICES, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %127
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @dev_map, align 4
  %139 = call i32 @clear_bit(i32 %137, i32 %138)
  br label %144

140:                                              ; preds = %127
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @overflow_map, align 4
  %143 = call i32 @clear_bit(i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144, %80, %35
  %146 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %147 = call i32 @kfree(%struct.ib_ucm_device* %146)
  br label %148

148:                                              ; preds = %145, %119, %20, %14
  ret void
}

declare dso_local i32 @rdma_cap_ib_cm(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_ucm_device* @kzalloc(i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @find_overflow_devnum(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @kobject_set_name(i32*, i8*, i32) #1

declare dso_local i64 @cdev_add(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @device_register(%struct.TYPE_8__*) #1

declare dso_local i64 @device_create_file(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.ib_ucm_device*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_8__*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_9__*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @kfree(%struct.ib_ucm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
