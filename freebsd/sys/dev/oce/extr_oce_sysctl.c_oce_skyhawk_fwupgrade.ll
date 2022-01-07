; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_skyhawk_fwupgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_skyhawk_fwupgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.firmware = type { i64 }
%struct.flash_file_hdr = type { i32, i32* }
%struct.image_hdr = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Flashing Firmware %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Cant load SH A0 UFI on B0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.firmware*)* @oce_skyhawk_fwupgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oce_skyhawk_fwupgrade(%struct.TYPE_5__* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.flash_file_hdr*, align 8
  %10 = alloca %struct.image_hdr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.firmware*, %struct.firmware** %4, align 8
  %12 = getelementptr inbounds %struct.firmware, %struct.firmware* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.flash_file_hdr*
  store %struct.flash_file_hdr* %14, %struct.flash_file_hdr** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = load %struct.flash_file_hdr*, %struct.flash_file_hdr** %9, align 8
  %17 = call i32 @oce_get_ufi_type(%struct.TYPE_5__* %15, %struct.flash_file_hdr* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.flash_file_hdr*, %struct.flash_file_hdr** %9, align 8
  %22 = getelementptr inbounds %struct.flash_file_hdr, %struct.flash_file_hdr* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = load %struct.flash_file_hdr*, %struct.flash_file_hdr** %9, align 8
  %27 = getelementptr inbounds %struct.flash_file_hdr, %struct.flash_file_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %74, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %29
  %34 = load %struct.firmware*, %struct.firmware** %4, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = bitcast i8* %42 to %struct.image_hdr*
  store %struct.image_hdr* %43, %struct.image_hdr** %10, align 8
  %44 = load %struct.image_hdr*, %struct.image_hdr** %10, align 8
  %45 = getelementptr inbounds %struct.image_hdr, %struct.image_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %74

49:                                               ; preds = %33
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %72 [
    i32 128, label %51
    i32 129, label %56
  ]

51:                                               ; preds = %49
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = load %struct.firmware*, %struct.firmware** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @oce_sh_be3_flashdata(%struct.TYPE_5__* %52, %struct.firmware* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %73

56:                                               ; preds = %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = load %struct.firmware*, %struct.firmware** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @oce_sh_be3_flashdata(%struct.TYPE_5__* %62, %struct.firmware* %63, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %71

66:                                               ; preds = %56
  store i32 -1, i32* %5, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %61
  br label %73

72:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %71, %51
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %29

77:                                               ; preds = %29
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @oce_get_ufi_type(%struct.TYPE_5__*, %struct.flash_file_hdr*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @oce_sh_be3_flashdata(%struct.TYPE_5__*, %struct.firmware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
