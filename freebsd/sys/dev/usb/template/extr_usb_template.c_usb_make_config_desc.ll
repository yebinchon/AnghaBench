; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_make_config_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_make_config_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_temp_setup = type { i32, i32, i64, i64, i64 }
%struct.usb_temp_config_desc = type { i32, i32, %struct.usb_temp_interface_desc** }
%struct.usb_temp_interface_desc = type { i32 }
%struct.usb_config_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@UDESC_CONFIG = common dso_local global i32 0, align 4
@usb_template_power = common dso_local global i32 0, align 4
@UC_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@UC_BUS_POWERED = common dso_local global i32 0, align 4
@UC_SELF_POWERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_temp_setup*, %struct.usb_temp_config_desc*)* @usb_make_config_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_make_config_desc(%struct.usb_temp_setup* %0, %struct.usb_temp_config_desc* %1) #0 {
  %3 = alloca %struct.usb_temp_setup*, align 8
  %4 = alloca %struct.usb_temp_config_desc*, align 8
  %5 = alloca %struct.usb_config_descriptor*, align 8
  %6 = alloca %struct.usb_temp_interface_desc**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.usb_temp_setup* %0, %struct.usb_temp_setup** %3, align 8
  store %struct.usb_temp_config_desc* %1, %struct.usb_temp_config_desc** %4, align 8
  %9 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %10 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %13 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, 32
  store i64 %15, i64* %13, align 8
  %16 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %17 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %16, i32 0, i32 0
  store i32 255, i32* %17, align 8
  %18 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %19 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.usb_temp_config_desc*, %struct.usb_temp_config_desc** %4, align 8
  %21 = getelementptr inbounds %struct.usb_temp_config_desc, %struct.usb_temp_config_desc* %20, i32 0, i32 2
  %22 = load %struct.usb_temp_interface_desc**, %struct.usb_temp_interface_desc*** %21, align 8
  store %struct.usb_temp_interface_desc** %22, %struct.usb_temp_interface_desc*** %6, align 8
  %23 = load %struct.usb_temp_interface_desc**, %struct.usb_temp_interface_desc*** %6, align 8
  %24 = icmp ne %struct.usb_temp_interface_desc** %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %30, %25
  %27 = load %struct.usb_temp_interface_desc**, %struct.usb_temp_interface_desc*** %6, align 8
  %28 = load %struct.usb_temp_interface_desc*, %struct.usb_temp_interface_desc** %27, align 8
  %29 = icmp ne %struct.usb_temp_interface_desc* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %32 = load %struct.usb_temp_interface_desc**, %struct.usb_temp_interface_desc*** %6, align 8
  %33 = load %struct.usb_temp_interface_desc*, %struct.usb_temp_interface_desc** %32, align 8
  %34 = call i32 @usb_make_interface_desc(%struct.usb_temp_setup* %31, %struct.usb_temp_interface_desc* %33)
  %35 = load %struct.usb_temp_interface_desc**, %struct.usb_temp_interface_desc*** %6, align 8
  %36 = getelementptr inbounds %struct.usb_temp_interface_desc*, %struct.usb_temp_interface_desc** %35, i32 1
  store %struct.usb_temp_interface_desc** %36, %struct.usb_temp_interface_desc*** %6, align 8
  br label %26

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %40 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %122

43:                                               ; preds = %38
  %44 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %45 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call %struct.usb_config_descriptor* @USB_ADD_BYTES(i64 %46, i64 %47)
  store %struct.usb_config_descriptor* %48, %struct.usb_config_descriptor** %5, align 8
  %49 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %50 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub nsw i64 %51, %52
  store i64 %53, i64* %7, align 8
  %54 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %55 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %54, i32 0, i32 0
  store i32 32, i32* %55, align 4
  %56 = load i32, i32* @UDESC_CONFIG, align 4
  %57 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %58 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  %59 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %60 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @USETW(i32 %61, i64 %62)
  %64 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %65 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  %68 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %69 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %71 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %74 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.usb_temp_config_desc*, %struct.usb_temp_config_desc** %4, align 8
  %76 = getelementptr inbounds %struct.usb_temp_config_desc, %struct.usb_temp_config_desc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %79 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.usb_temp_config_desc*, %struct.usb_temp_config_desc** %4, align 8
  %81 = getelementptr inbounds %struct.usb_temp_config_desc, %struct.usb_temp_config_desc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %84 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @usb_template_power, align 4
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sdiv i32 %86, 2
  %88 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %89 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @UC_REMOTE_WAKEUP, align 4
  %91 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %92 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %43
  %98 = load i32, i32* @UC_BUS_POWERED, align 4
  %99 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %100 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @UC_SELF_POWERED, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %106 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %121

109:                                              ; preds = %43
  %110 = load i32, i32* @UC_BUS_POWERED, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %113 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* @UC_SELF_POWERED, align 4
  %117 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %118 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %109, %97
  br label %122

122:                                              ; preds = %121, %38
  ret void
}

declare dso_local i32 @usb_make_interface_desc(%struct.usb_temp_setup*, %struct.usb_temp_interface_desc*) #1

declare dso_local %struct.usb_config_descriptor* @USB_ADD_BYTES(i64, i64) #1

declare dso_local i32 @USETW(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
