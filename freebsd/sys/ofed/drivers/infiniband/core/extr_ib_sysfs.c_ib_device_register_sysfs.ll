; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_ib_device_register_sysfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_ib_device_register_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i64, i32, i32, i32, %struct.device }
%struct.device = type { i32, i32 }
%struct.kobject = type opaque
%struct.kobject.0 = type opaque

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ib_class_attributes = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_device_register_sysfs(%struct.ib_device* %0, i32 (%struct.ib_device*, i32, %struct.kobject*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32 (%struct.ib_device*, i32, %struct.kobject*)*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 (%struct.ib_device*, i32, %struct.kobject*)* %1, i32 (%struct.ib_device*, i32, %struct.kobject*)** %5, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %9, i32 0, i32 5
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %12 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %19 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_set_name(%struct.device* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %117

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @device_add(%struct.device* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %115

32:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** @ib_class_attributes, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i32*, i32** @ib_class_attributes, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_create_file(%struct.device* %39, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %112

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %33

53:                                               ; preds = %33
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %55)
  %57 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %58 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %60 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %109

66:                                               ; preds = %53
  %67 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %68 = call i64 @rdma_cap_ib_switch(%struct.ib_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %72 = load i32 (%struct.ib_device*, i32, %struct.kobject*)*, i32 (%struct.ib_device*, i32, %struct.kobject*)** %5, align 8
  %73 = bitcast i32 (%struct.ib_device*, i32, %struct.kobject*)* %72 to i32 (%struct.ib_device*, i32, %struct.kobject.0*)*
  %74 = call i32 @add_port(%struct.ib_device* %71, i32 0, i32 (%struct.ib_device*, i32, %struct.kobject.0*)* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %109

78:                                               ; preds = %70
  br label %100

79:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %83 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sle i32 %81, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32 (%struct.ib_device*, i32, %struct.kobject*)*, i32 (%struct.ib_device*, i32, %struct.kobject*)** %5, align 8
  %90 = bitcast i32 (%struct.ib_device*, i32, %struct.kobject*)* %89 to i32 (%struct.ib_device*, i32, %struct.kobject.0*)*
  %91 = call i32 @add_port(%struct.ib_device* %87, i32 %88, i32 (%struct.ib_device*, i32, %struct.kobject.0*)* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %109

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %80

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99, %78
  %101 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %102 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %107 = call i32 @setup_hw_stats(%struct.ib_device* %106, i32* null, i32 0)
  br label %108

108:                                              ; preds = %105, %100
  store i32 0, i32* %3, align 4
  br label %117

109:                                              ; preds = %94, %77, %63
  %110 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %111 = call i32 @free_port_list_attributes(%struct.ib_device* %110)
  br label %112

112:                                              ; preds = %109, %48
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = call i32 @device_unregister(%struct.device* %113)
  br label %115

115:                                              ; preds = %112, %31
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %108, %24
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32) #1

declare dso_local i32 @kobject_create_and_add(i8*, i32*) #1

declare dso_local i64 @rdma_cap_ib_switch(%struct.ib_device*) #1

declare dso_local i32 @add_port(%struct.ib_device*, i32, i32 (%struct.ib_device*, i32, %struct.kobject.0*)*) #1

declare dso_local i32 @setup_hw_stats(%struct.ib_device*, i32*, i32) #1

declare dso_local i32 @free_port_list_attributes(%struct.ib_device*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
