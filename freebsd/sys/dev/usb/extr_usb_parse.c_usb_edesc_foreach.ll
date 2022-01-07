; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_parse.c_usb_edesc_foreach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_parse.c_usb_edesc_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config_descriptor = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_descriptor = type { i64, i32 }

@UDESC_INTERFACE = common dso_local global i64 0, align 8
@UDESC_ENDPOINT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_endpoint_descriptor* @usb_edesc_foreach(%struct.usb_config_descriptor* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca %struct.usb_endpoint_descriptor*, align 8
  %4 = alloca %struct.usb_config_descriptor*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_descriptor*, align 8
  store %struct.usb_config_descriptor* %0, %struct.usb_config_descriptor** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %7 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %8 = bitcast %struct.usb_endpoint_descriptor* %7 to %struct.usb_descriptor*
  store %struct.usb_descriptor* %8, %struct.usb_descriptor** %6, align 8
  br label %9

9:                                                ; preds = %37, %2
  %10 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %11 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %12 = call %struct.usb_descriptor* @usb_desc_foreach(%struct.usb_config_descriptor* %10, %struct.usb_descriptor* %11)
  store %struct.usb_descriptor* %12, %struct.usb_descriptor** %6, align 8
  %13 = icmp ne %struct.usb_descriptor* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %16 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UDESC_INTERFACE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %38

21:                                               ; preds = %14
  %22 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %23 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UDESC_ENDPOINT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %29 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %38

34:                                               ; preds = %27
  %35 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %36 = bitcast %struct.usb_descriptor* %35 to %struct.usb_endpoint_descriptor*
  store %struct.usb_endpoint_descriptor* %36, %struct.usb_endpoint_descriptor** %3, align 8
  br label %39

37:                                               ; preds = %21
  br label %9

38:                                               ; preds = %33, %20, %9
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %3, align 8
  br label %39

39:                                               ; preds = %38, %34
  %40 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %3, align 8
  ret %struct.usb_endpoint_descriptor* %40
}

declare dso_local %struct.usb_descriptor* @usb_desc_foreach(%struct.usb_config_descriptor*, %struct.usb_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
