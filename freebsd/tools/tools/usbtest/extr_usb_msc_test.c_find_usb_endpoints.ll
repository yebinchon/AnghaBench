; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_msc_test.c_find_usb_endpoints.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_msc_test.c_find_usb_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.libusb20_config = type { i64, %struct.libusb20_interface* }
%struct.libusb20_interface = type { i64, %struct.libusb20_endpoint*, %struct.TYPE_3__ }
%struct.libusb20_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_usb_endpoints(%struct.libusb20_device* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64* %5, i64* %6, i64* %7, i64 %8) #0 {
  %10 = alloca %struct.libusb20_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.libusb20_config*, align 8
  %20 = alloca %struct.libusb20_interface*, align 8
  %21 = alloca %struct.libusb20_endpoint*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.libusb20_device* %0, %struct.libusb20_device** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  store i64 %8, i64* %18, align 8
  %25 = load i64*, i64** %16, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64*, i64** %17, align 8
  store i64 0, i64* %26, align 8
  %27 = load i64*, i64** %15, align 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %29 = load %struct.libusb20_device*, %struct.libusb20_device** %10, align 8
  %30 = call i32 @libusb20_dev_get_config_index(%struct.libusb20_device* %29)
  %31 = call %struct.libusb20_config* @libusb20_dev_alloc_config(%struct.libusb20_device* %28, i32 %30)
  store %struct.libusb20_config* %31, %struct.libusb20_config** %19, align 8
  %32 = load %struct.libusb20_config*, %struct.libusb20_config** %19, align 8
  %33 = icmp eq %struct.libusb20_config* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %9
  br label %148

35:                                               ; preds = %9
  store i64 0, i64* %22, align 8
  br label %36

36:                                               ; preds = %142, %35
  %37 = load i64, i64* %22, align 8
  %38 = load %struct.libusb20_config*, %struct.libusb20_config** %19, align 8
  %39 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %145

42:                                               ; preds = %36
  %43 = load i64, i64* %14, align 8
  store i64 %43, i64* %23, align 8
  %44 = load %struct.libusb20_config*, %struct.libusb20_config** %19, align 8
  %45 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %44, i32 0, i32 1
  %46 = load %struct.libusb20_interface*, %struct.libusb20_interface** %45, align 8
  %47 = load i64, i64* %22, align 8
  %48 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %46, i64 %47
  store %struct.libusb20_interface* %48, %struct.libusb20_interface** %20, align 8
  %49 = load %struct.libusb20_interface*, %struct.libusb20_interface** %20, align 8
  %50 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %141

55:                                               ; preds = %42
  %56 = load %struct.libusb20_interface*, %struct.libusb20_interface** %20, align 8
  %57 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %12, align 8
  %64 = icmp eq i64 %63, 255
  br i1 %64, label %65, label %141

65:                                               ; preds = %62, %55
  %66 = load %struct.libusb20_interface*, %struct.libusb20_interface** %20, align 8
  %67 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i64, i64* %13, align 8
  %74 = icmp eq i64 %73, 255
  br i1 %74, label %75, label %141

75:                                               ; preds = %72, %65
  %76 = load i64, i64* %18, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i64, i64* %22, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %22, align 8
  %81 = load i64, i64* %22, align 8
  %82 = load %struct.libusb20_config*, %struct.libusb20_config** %19, align 8
  %83 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %145

87:                                               ; preds = %78
  %88 = load %struct.libusb20_config*, %struct.libusb20_config** %19, align 8
  %89 = getelementptr inbounds %struct.libusb20_config, %struct.libusb20_config* %88, i32 0, i32 1
  %90 = load %struct.libusb20_interface*, %struct.libusb20_interface** %89, align 8
  %91 = load i64, i64* %22, align 8
  %92 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %90, i64 %91
  store %struct.libusb20_interface* %92, %struct.libusb20_interface** %20, align 8
  br label %93

93:                                               ; preds = %87, %75
  %94 = load i64, i64* %22, align 8
  %95 = load i64*, i64** %15, align 8
  store i64 %94, i64* %95, align 8
  store i64 0, i64* %24, align 8
  br label %96

96:                                               ; preds = %137, %93
  %97 = load i64, i64* %24, align 8
  %98 = load %struct.libusb20_interface*, %struct.libusb20_interface** %20, align 8
  %99 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %140

102:                                              ; preds = %96
  %103 = load %struct.libusb20_interface*, %struct.libusb20_interface** %20, align 8
  %104 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %103, i32 0, i32 1
  %105 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %104, align 8
  %106 = load i64, i64* %24, align 8
  %107 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %105, i64 %106
  store %struct.libusb20_endpoint* %107, %struct.libusb20_endpoint** %21, align 8
  %108 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %21, align 8
  %109 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 3
  %113 = icmp ne i32 %112, 2
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  br label %137

115:                                              ; preds = %102
  %116 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %21, align 8
  %117 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 128
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %21, align 8
  %124 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64*, i64** %16, align 8
  store i64 %127, i64* %128, align 8
  br label %136

129:                                              ; preds = %115
  %130 = load %struct.libusb20_endpoint*, %struct.libusb20_endpoint** %21, align 8
  %131 = getelementptr inbounds %struct.libusb20_endpoint, %struct.libusb20_endpoint* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64*, i64** %17, align 8
  store i64 %134, i64* %135, align 8
  br label %136

136:                                              ; preds = %129, %122
  br label %137

137:                                              ; preds = %136, %114
  %138 = load i64, i64* %24, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %24, align 8
  br label %96

140:                                              ; preds = %96
  br label %145

141:                                              ; preds = %72, %62, %42
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %22, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %22, align 8
  br label %36

145:                                              ; preds = %140, %86, %36
  %146 = load %struct.libusb20_config*, %struct.libusb20_config** %19, align 8
  %147 = call i32 @free(%struct.libusb20_config* %146)
  br label %148

148:                                              ; preds = %145, %34
  ret void
}

declare dso_local %struct.libusb20_config* @libusb20_dev_alloc_config(%struct.libusb20_device*, i32) #1

declare dso_local i32 @libusb20_dev_get_config_index(%struct.libusb20_device*) #1

declare dso_local i32 @free(%struct.libusb20_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
