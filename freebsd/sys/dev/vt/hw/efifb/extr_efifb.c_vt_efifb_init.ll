; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/efifb/extr_efifb.c_vt_efifb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/efifb/extr_efifb.c_vt_efifb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.fb_info* }
%struct.fb_info = type { i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.efi_fb = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@local_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"elf kernel\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"elf64 kernel\00", align 1
@MODINFO_METADATA = common dso_local global i32 0, align 4
@MODINFOMD_EFI_FB = common dso_local global i32 0, align 4
@CN_DEAD = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@COLOR_FORMAT_RGB = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@CN_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_device*)* @vt_efifb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_efifb_init(%struct.vt_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.efi_fb*, align 8
  %6 = alloca i32*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  %7 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %8 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %7, i32 0, i32 0
  %9 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  store %struct.fb_info* %9, %struct.fb_info** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = icmp eq %struct.fb_info* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %14 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %13, i32 0, i32 0
  store %struct.fb_info* bitcast (i32* @local_info to %struct.fb_info*), %struct.fb_info** %14, align 8
  store %struct.fb_info* bitcast (i32* @local_info to %struct.fb_info*), %struct.fb_info** %4, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = call i32* @preload_search_by_type(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32* @preload_search_by_type(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %6, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @MODINFO_METADATA, align 4
  %24 = load i32, i32* @MODINFOMD_EFI_FB, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @preload_search_info(i32* %22, i32 %25)
  %27 = inttoptr i64 %26 to %struct.efi_fb*
  store %struct.efi_fb* %27, %struct.efi_fb** %5, align 8
  %28 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %29 = icmp eq %struct.efi_fb* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @CN_DEAD, align 4
  store i32 %31, i32* %2, align 4
  br label %135

32:                                               ; preds = %21
  %33 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %34 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %39 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %44 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %47 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %51 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  %54 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %55 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = call i32 @fls(i32 %57)
  %59 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NBBY, align 4
  %65 = call i32 @roundup2(i32 %63, i32 %64)
  %66 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %69 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NBBY, align 4
  %75 = sdiv i32 %73, %74
  %76 = mul nsw i32 %70, %75
  %77 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @COLOR_FORMAT_RGB, align 4
  %83 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %84 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %87 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ffs(i32 %88)
  %90 = sub nsw i64 %89, 1
  %91 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %92 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %95 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @ffs(i32 %96)
  %98 = sub nsw i64 %97, 1
  %99 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %100 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %103 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @ffs(i32 %104)
  %106 = sub nsw i64 %105, 1
  %107 = call i32 @vt_generate_cons_palette(i32 %81, i32 %82, i32 %85, i64 %90, i32 %93, i64 %98, i32 %101, i64 %106)
  %108 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  %115 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.efi_fb*, %struct.efi_fb** %5, align 8
  %118 = getelementptr inbounds %struct.efi_fb, %struct.efi_fb* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  %122 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %123 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  %129 = call i64 @pmap_mapdev_attr(i32 %124, i32 %127, i32 %128)
  %130 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %131 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %130, i32 0, i32 4
  store i64 %129, i64* %131, align 8
  %132 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %133 = call i32 @vt_fb_init(%struct.vt_device* %132)
  %134 = load i32, i32* @CN_INTERNAL, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %32, %30
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32* @preload_search_by_type(i8*) #1

declare dso_local i64 @preload_search_info(i32*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @vt_generate_cons_palette(i32, i32, i32, i64, i32, i64, i32, i64) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i64 @pmap_mapdev_attr(i32, i32, i32) #1

declare dso_local i32 @vt_fb_init(%struct.vt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
