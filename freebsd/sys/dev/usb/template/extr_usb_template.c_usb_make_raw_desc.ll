; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_make_raw_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_make_raw_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_temp_setup = type { i32, i64, i64 }
%struct.usb_cdc_union_descriptor = type { i32*, i32 }
%struct.usb_interface_assoc_descriptor = type { i32 }
%struct.usb_cdc_cm_descriptor = type { i32 }

@UDESC_CS_INTERFACE = common dso_local global i32 0, align 4
@UDESCSUB_CDC_UNION = common dso_local global i32 0, align 4
@UDESC_IFACE_ASSOC = common dso_local global i32 0, align 4
@UDESCSUB_CDC_CM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_temp_setup*, i32*)* @usb_make_raw_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_make_raw_desc(%struct.usb_temp_setup* %0, i32* %1) #0 {
  %3 = alloca %struct.usb_temp_setup*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_cdc_union_descriptor*, align 8
  %8 = alloca %struct.usb_interface_assoc_descriptor*, align 8
  %9 = alloca %struct.usb_cdc_cm_descriptor*, align 8
  store %struct.usb_temp_setup* %0, %struct.usb_temp_setup** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %133

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %17 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %127

20:                                               ; preds = %12
  %21 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %22 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %25 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @USB_ADD_BYTES(i64 %23, i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @memcpy(i8* %28, i32* %29, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %35, 16
  br i1 %36, label %37, label %72

37:                                               ; preds = %20
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @UDESC_CS_INTERFACE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %37
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UDESCSUB_CDC_UNION, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = bitcast i8* %50 to %struct.usb_cdc_union_descriptor*
  store %struct.usb_cdc_union_descriptor* %51, %struct.usb_cdc_union_descriptor** %7, align 8
  %52 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %53 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.usb_cdc_union_descriptor*, %struct.usb_cdc_union_descriptor** %7, align 8
  %56 = getelementptr inbounds %struct.usb_cdc_union_descriptor, %struct.usb_cdc_union_descriptor* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 8
  %61 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %62 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.usb_cdc_union_descriptor*, %struct.usb_cdc_union_descriptor** %7, align 8
  %65 = getelementptr inbounds %struct.usb_cdc_union_descriptor, %struct.usb_cdc_union_descriptor* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %63
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  br label %72

72:                                               ; preds = %49, %43, %37, %20
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 %76, 4
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @UDESC_IFACE_ASSOC, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  %86 = bitcast i8* %85 to %struct.usb_interface_assoc_descriptor*
  store %struct.usb_interface_assoc_descriptor* %86, %struct.usb_interface_assoc_descriptor** %8, align 8
  %87 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %88 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %8, align 8
  %91 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  br label %96

96:                                               ; preds = %84, %78, %72
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp eq i64 %100, 4
  br i1 %101, label %102, label %126

102:                                              ; preds = %96
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @UDESC_CS_INTERFACE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @UDESCSUB_CDC_CM, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = load i8*, i8** %5, align 8
  %116 = bitcast i8* %115 to %struct.usb_cdc_cm_descriptor*
  store %struct.usb_cdc_cm_descriptor* %116, %struct.usb_cdc_cm_descriptor** %9, align 8
  %117 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %118 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.usb_cdc_cm_descriptor*, %struct.usb_cdc_cm_descriptor** %9, align 8
  %121 = getelementptr inbounds %struct.usb_cdc_cm_descriptor, %struct.usb_cdc_cm_descriptor* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %119
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 4
  br label %126

126:                                              ; preds = %114, %108, %102, %96
  br label %127

127:                                              ; preds = %126, %12
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %130 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %127, %2
  ret void
}

declare dso_local i8* @USB_ADD_BYTES(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
