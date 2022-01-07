; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_make_interface_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_make_interface_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_temp_setup = type { i32, i64, i64, i64, i64 }
%struct.usb_temp_interface_desc = type { i64, i8**, i32, i32, i32, i32, %struct.usb_temp_endpoint_desc** }
%struct.usb_temp_endpoint_desc = type { i32 }
%struct.usb_interface_descriptor = type { i32, i32, i32, i32, i32, i64, i64, i64, i32 }

@UDESC_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_temp_setup*, %struct.usb_temp_interface_desc*)* @usb_make_interface_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_make_interface_desc(%struct.usb_temp_setup* %0, %struct.usb_temp_interface_desc* %1) #0 {
  %3 = alloca %struct.usb_temp_setup*, align 8
  %4 = alloca %struct.usb_temp_interface_desc*, align 8
  %5 = alloca %struct.usb_interface_descriptor*, align 8
  %6 = alloca %struct.usb_temp_endpoint_desc**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.usb_temp_setup* %0, %struct.usb_temp_setup** %3, align 8
  store %struct.usb_temp_interface_desc* %1, %struct.usb_temp_interface_desc** %4, align 8
  %9 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %10 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %13 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 56
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 8
  %18 = load %struct.usb_temp_interface_desc*, %struct.usb_temp_interface_desc** %4, align 8
  %19 = getelementptr inbounds %struct.usb_temp_interface_desc, %struct.usb_temp_interface_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %24 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %26 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %31 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.usb_temp_interface_desc*, %struct.usb_temp_interface_desc** %4, align 8
  %36 = getelementptr inbounds %struct.usb_temp_interface_desc, %struct.usb_temp_interface_desc* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  store i8** %37, i8*** %7, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i8**, i8*** %7, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %47 = load i8**, i8*** %7, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @usb_make_raw_desc(%struct.usb_temp_setup* %46, i8* %48)
  %50 = load i8**, i8*** %7, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %51, i8*** %7, align 8
  br label %41

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %55 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.usb_temp_interface_desc*, %struct.usb_temp_interface_desc** %4, align 8
  %57 = getelementptr inbounds %struct.usb_temp_interface_desc, %struct.usb_temp_interface_desc* %56, i32 0, i32 6
  %58 = load %struct.usb_temp_endpoint_desc**, %struct.usb_temp_endpoint_desc*** %57, align 8
  store %struct.usb_temp_endpoint_desc** %58, %struct.usb_temp_endpoint_desc*** %6, align 8
  %59 = load %struct.usb_temp_endpoint_desc**, %struct.usb_temp_endpoint_desc*** %6, align 8
  %60 = icmp ne %struct.usb_temp_endpoint_desc** %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %66, %61
  %63 = load %struct.usb_temp_endpoint_desc**, %struct.usb_temp_endpoint_desc*** %6, align 8
  %64 = load %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %63, align 8
  %65 = icmp ne %struct.usb_temp_endpoint_desc* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %68 = load %struct.usb_temp_endpoint_desc**, %struct.usb_temp_endpoint_desc*** %6, align 8
  %69 = load %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %68, align 8
  %70 = call i32 @usb_make_endpoint_desc(%struct.usb_temp_setup* %67, %struct.usb_temp_endpoint_desc* %69)
  %71 = load %struct.usb_temp_endpoint_desc**, %struct.usb_temp_endpoint_desc*** %6, align 8
  %72 = getelementptr inbounds %struct.usb_temp_endpoint_desc*, %struct.usb_temp_endpoint_desc** %71, i32 1
  store %struct.usb_temp_endpoint_desc** %72, %struct.usb_temp_endpoint_desc*** %6, align 8
  br label %62

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %76 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %125

79:                                               ; preds = %74
  %80 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %81 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call %struct.usb_interface_descriptor* @USB_ADD_BYTES(i64 %82, i32 %83)
  store %struct.usb_interface_descriptor* %84, %struct.usb_interface_descriptor** %5, align 8
  %85 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %86 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %85, i32 0, i32 0
  store i32 56, i32* %86, align 8
  %87 = load i32, i32* @UDESC_INTERFACE, align 4
  %88 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %89 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 8
  %90 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %91 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %94 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %93, i32 0, i32 7
  store i64 %92, i64* %94, align 8
  %95 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %96 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %99 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %98, i32 0, i32 6
  store i64 %97, i64* %99, align 8
  %100 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %101 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %104 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %103, i32 0, i32 5
  store i64 %102, i64* %104, align 8
  %105 = load %struct.usb_temp_interface_desc*, %struct.usb_temp_interface_desc** %4, align 8
  %106 = getelementptr inbounds %struct.usb_temp_interface_desc, %struct.usb_temp_interface_desc* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %109 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.usb_temp_interface_desc*, %struct.usb_temp_interface_desc** %4, align 8
  %111 = getelementptr inbounds %struct.usb_temp_interface_desc, %struct.usb_temp_interface_desc* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %114 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.usb_temp_interface_desc*, %struct.usb_temp_interface_desc** %4, align 8
  %116 = getelementptr inbounds %struct.usb_temp_interface_desc, %struct.usb_temp_interface_desc* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %119 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.usb_temp_interface_desc*, %struct.usb_temp_interface_desc** %4, align 8
  %121 = getelementptr inbounds %struct.usb_temp_interface_desc, %struct.usb_temp_interface_desc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %124 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %79, %74
  ret void
}

declare dso_local i32 @usb_make_raw_desc(%struct.usb_temp_setup*, i8*) #1

declare dso_local i32 @usb_make_endpoint_desc(%struct.usb_temp_setup*, %struct.usb_temp_endpoint_desc*) #1

declare dso_local %struct.usb_interface_descriptor* @USB_ADD_BYTES(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
