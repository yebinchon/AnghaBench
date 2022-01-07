; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_temp_get_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_temp_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_device_request = type { i32, i32*, i32, i32 }

@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_device_request*, i8**, i64*)* @usb_temp_get_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_temp_get_desc(%struct.usb_device* %0, %struct.usb_device_request* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_device_request*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store %struct.usb_device_request* %1, %struct.usb_device_request** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* null, i64** %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.usb_device_request*, %struct.usb_device_request** %7, align 8
  %13 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %27 [
    i32 128, label %15
    i32 129, label %21
  ]

15:                                               ; preds = %4
  %16 = load %struct.usb_device_request*, %struct.usb_device_request** %7, align 8
  %17 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %20 [
    i32 130, label %19
  ]

19:                                               ; preds = %15
  br label %28

20:                                               ; preds = %15
  br label %120

21:                                               ; preds = %4
  %22 = load %struct.usb_device_request*, %struct.usb_device_request** %7, align 8
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %26 [
    i32 130, label %25
  ]

25:                                               ; preds = %21
  br label %92

26:                                               ; preds = %21
  br label %120

27:                                               ; preds = %4
  br label %120

28:                                               ; preds = %19
  %29 = load %struct.usb_device_request*, %struct.usb_device_request** %7, align 8
  %30 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %91 [
    i32 134, label %34
    i32 133, label %45
    i32 132, label %63
    i32 135, label %71
    i32 131, label %79
  ]

34:                                               ; preds = %28
  %35 = load %struct.usb_device_request*, %struct.usb_device_request** %7, align 8
  %36 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %120

42:                                               ; preds = %34
  %43 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %44 = call i64* @usb_temp_get_device_desc(%struct.usb_device* %43)
  store i64* %44, i64** %10, align 8
  br label %103

45:                                               ; preds = %28
  %46 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @USB_SPEED_HIGH, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %120

52:                                               ; preds = %45
  %53 = load %struct.usb_device_request*, %struct.usb_device_request** %7, align 8
  %54 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %120

60:                                               ; preds = %52
  %61 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %62 = call i64* @usb_temp_get_qualifier_desc(%struct.usb_device* %61)
  store i64* %62, i64** %10, align 8
  br label %103

63:                                               ; preds = %28
  %64 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %65 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @USB_SPEED_HIGH, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %120

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %28, %70
  %72 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %73 = load %struct.usb_device_request*, %struct.usb_device_request** %7, align 8
  %74 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64* @usb_temp_get_config_desc(%struct.usb_device* %72, i64* %11, i32 %77)
  store i64* %78, i64** %10, align 8
  br label %103

79:                                               ; preds = %28
  %80 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %81 = load %struct.usb_device_request*, %struct.usb_device_request** %7, align 8
  %82 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @UGETW(i32 %83)
  %85 = load %struct.usb_device_request*, %struct.usb_device_request** %7, align 8
  %86 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64* @usb_temp_get_string_desc(%struct.usb_device* %80, i32 %84, i32 %89)
  store i64* %90, i64** %10, align 8
  br label %103

91:                                               ; preds = %28
  br label %120

92:                                               ; preds = %25
  %93 = load %struct.usb_device_request*, %struct.usb_device_request** %7, align 8
  %94 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %120

100:                                              ; preds = %92
  %101 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %102 = call i64* @usb_temp_get_hub_desc(%struct.usb_device* %101)
  store i64* %102, i64** %10, align 8
  br label %103

103:                                              ; preds = %126, %100, %79, %71, %60, %42
  %104 = load i64*, i64** %10, align 8
  %105 = icmp eq i64* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %120

107:                                              ; preds = %103
  %108 = load i64, i64* %11, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64*, i64** %10, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %11, align 8
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i64*, i64** %10, align 8
  %116 = bitcast i64* %115 to i8*
  %117 = load i8**, i8*** %8, align 8
  store i8* %116, i8** %117, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64*, i64** %9, align 8
  store i64 %118, i64* %119, align 8
  store i32 0, i32* %5, align 4
  br label %130

120:                                              ; preds = %106, %99, %91, %69, %59, %51, %41, %27, %26, %20
  store i64 0, i64* %11, align 8
  %121 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %122 = load %struct.usb_device_request*, %struct.usb_device_request** %7, align 8
  %123 = call i64* @usb_temp_get_vendor_desc(%struct.usb_device* %121, %struct.usb_device_request* %122, i64* %11)
  store i64* %123, i64** %10, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = icmp ne i64* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %103

127:                                              ; preds = %120
  %128 = load i8**, i8*** %8, align 8
  store i8* null, i8** %128, align 8
  %129 = load i64*, i64** %9, align 8
  store i64 0, i64* %129, align 8
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %127, %114
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i64* @usb_temp_get_device_desc(%struct.usb_device*) #1

declare dso_local i64* @usb_temp_get_qualifier_desc(%struct.usb_device*) #1

declare dso_local i64* @usb_temp_get_config_desc(%struct.usb_device*, i64*, i32) #1

declare dso_local i64* @usb_temp_get_string_desc(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i64* @usb_temp_get_hub_desc(%struct.usb_device*) #1

declare dso_local i64* @usb_temp_get_vendor_desc(%struct.usb_device*, %struct.usb_device_request*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
