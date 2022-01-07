; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/efifb/extr_efifb.c_vt_efifb_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/efifb/extr_efifb.c_vt_efifb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32 }
%struct.efi_fb = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"hw.syscons.disable\00", align 1
@CN_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"elf kernel\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"elf64 kernel\00", align 1
@MODINFO_METADATA = common dso_local global i32 0, align 4
@MODINFOMD_EFI_FB = common dso_local global i32 0, align 4
@CN_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_device*)* @vt_efifb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_efifb_probe(%struct.vt_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efi_fb*, align 8
  %6 = alloca i32*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %4)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @CN_DEAD, align 4
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = call i32* @preload_search_by_type(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32* @preload_search_by_type(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %17, i32** %6, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @MODINFO_METADATA, align 4
  %21 = load i32, i32* @MODINFOMD_EFI_FB, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @preload_search_info(i32* %19, i32 %22)
  %24 = inttoptr i64 %23 to %struct.efi_fb*
  store %struct.efi_fb* %24, %struct.efi_fb** %5, align 8
  %25 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %26 = icmp eq %struct.efi_fb* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @CN_DEAD, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @CN_INTERNAL, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32* @preload_search_by_type(i8*) #1

declare dso_local i64 @preload_search_info(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
