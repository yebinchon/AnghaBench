; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_flashmap.c_g_flashmap_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_flashmap.c_g_flashmap_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i32 }
%struct.flash_slice = type { i64, i64, i32 }
%struct.g_flashmap_head = type { i32 }
%struct.g_flashmap_slice = type { i64, i64, i32 }

@FLASH_SLICES_MAX_NUM = common dso_local global i32 0, align 4
@M_FLASHMAP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@sl_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.g_provider*, i64 (i32, i32, %struct.flash_slice*, i32*)*, %struct.g_flashmap_head*)* @g_flashmap_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_flashmap_load(i32 %0, %struct.g_provider* %1, i64 (i32, i32, %struct.flash_slice*, i32*)* %2, %struct.g_flashmap_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i64 (i32, i32, %struct.flash_slice*, i32*)*, align 8
  %8 = alloca %struct.g_flashmap_head*, align 8
  %9 = alloca %struct.flash_slice*, align 8
  %10 = alloca %struct.g_flashmap_slice*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.g_provider* %1, %struct.g_provider** %6, align 8
  store i64 (i32, i32, %struct.flash_slice*, i32*)* %2, i64 (i32, i32, %struct.flash_slice*, i32*)** %7, align 8
  store %struct.g_flashmap_head* %3, %struct.g_flashmap_head** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @FLASH_SLICES_MAX_NUM, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 24, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @M_FLASHMAP, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @malloc(i32 %16, i32 %17, i32 %20)
  %22 = bitcast i8* %21 to %struct.flash_slice*
  store %struct.flash_slice* %22, %struct.flash_slice** %9, align 8
  %23 = load i64 (i32, i32, %struct.flash_slice*, i32*)*, i64 (i32, i32, %struct.flash_slice*, i32*)** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.flash_slice*, %struct.flash_slice** %9, align 8
  %29 = call i64 %23(i32 %24, i32 %27, %struct.flash_slice* %28, i32* %12)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %81

31:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %77, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %32
  %37 = load i32, i32* @M_FLASHMAP, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = call i8* @malloc(i32 24, i32 %37, i32 %38)
  %40 = bitcast i8* %39 to %struct.g_flashmap_slice*
  store %struct.g_flashmap_slice* %40, %struct.g_flashmap_slice** %10, align 8
  %41 = load %struct.flash_slice*, %struct.flash_slice** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %41, i64 %43
  %45 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.g_flashmap_slice*, %struct.g_flashmap_slice** %10, align 8
  %48 = getelementptr inbounds %struct.g_flashmap_slice, %struct.g_flashmap_slice* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.flash_slice*, %struct.flash_slice** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %49, i64 %51
  %53 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.g_flashmap_slice*, %struct.g_flashmap_slice** %10, align 8
  %56 = getelementptr inbounds %struct.g_flashmap_slice, %struct.g_flashmap_slice* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.flash_slice*, %struct.flash_slice** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %57, i64 %59
  %61 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.flash_slice*, %struct.flash_slice** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %63, i64 %65
  %67 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %62, %68
  %70 = sub nsw i64 %69, 1
  %71 = load %struct.g_flashmap_slice*, %struct.g_flashmap_slice** %10, align 8
  %72 = getelementptr inbounds %struct.g_flashmap_slice, %struct.g_flashmap_slice* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.g_flashmap_head*, %struct.g_flashmap_head** %8, align 8
  %74 = load %struct.g_flashmap_slice*, %struct.g_flashmap_slice** %10, align 8
  %75 = load i32, i32* @sl_link, align 4
  %76 = call i32 @STAILQ_INSERT_TAIL(%struct.g_flashmap_head* %73, %struct.g_flashmap_slice* %74, i32 %75)
  br label %77

77:                                               ; preds = %36
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %32

80:                                               ; preds = %32
  br label %81

81:                                               ; preds = %80, %4
  %82 = load %struct.flash_slice*, %struct.flash_slice** %9, align 8
  %83 = load i32, i32* @M_FLASHMAP, align 4
  %84 = call i32 @free(%struct.flash_slice* %82, i32 %83)
  %85 = load i32, i32* %12, align 4
  ret i32 %85
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.g_flashmap_head*, %struct.g_flashmap_slice*, i32) #1

declare dso_local i32 @free(%struct.flash_slice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
