; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_slicer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_slicer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_slice = type { i64, i32, i32 }
%struct.mmcsd_softc = type { i64, i32, %struct.mmcsd_part** }
%struct.mmcsd_part = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@MMCSD_PART_NAMELEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EXT_CSD_PART_CONFIG_ACC_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@MMCSD_LABEL_ENH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.flash_slice*, i32*)* @mmcsd_slicer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcsd_slicer(i32 %0, i8* %1, %struct.flash_slice* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.flash_slice*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mmcsd_softc*, align 8
  %13 = alloca %struct.mmcsd_part*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.flash_slice* %2, %struct.flash_slice** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @MMCSD_PART_NAMELEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.flash_slice*, %struct.flash_slice** %8, align 8
  %21 = icmp eq %struct.flash_slice* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %75

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.mmcsd_softc* @device_get_softc(i32 %25)
  store %struct.mmcsd_softc* %26, %struct.mmcsd_softc** %12, align 8
  %27 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %12, align 8
  %28 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %75

33:                                               ; preds = %24
  %34 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %12, align 8
  %35 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %34, i32 0, i32 2
  %36 = load %struct.mmcsd_part**, %struct.mmcsd_part*** %35, align 8
  %37 = load i64, i64* @EXT_CSD_PART_CONFIG_ACC_DEFAULT, align 8
  %38 = getelementptr inbounds %struct.mmcsd_part*, %struct.mmcsd_part** %36, i64 %37
  %39 = load %struct.mmcsd_part*, %struct.mmcsd_part** %38, align 8
  store %struct.mmcsd_part* %39, %struct.mmcsd_part** %13, align 8
  %40 = trunc i64 %16 to i32
  %41 = load %struct.mmcsd_part*, %struct.mmcsd_part** %13, align 8
  %42 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.mmcsd_part*, %struct.mmcsd_part** %13, align 8
  %47 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snprintf(i8* %18, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strcmp(i8* %18, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %33
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %75

57:                                               ; preds = %33
  %58 = load i32*, i32** %9, align 8
  store i32 1, i32* %58, align 4
  %59 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %12, align 8
  %60 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.flash_slice*, %struct.flash_slice** %8, align 8
  %63 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %62, i64 0
  %64 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %12, align 8
  %66 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.flash_slice*, %struct.flash_slice** %8, align 8
  %69 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %68, i64 0
  %70 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load i32, i32* @MMCSD_LABEL_ENH, align 4
  %72 = load %struct.flash_slice*, %struct.flash_slice** %8, align 8
  %73 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %72, i64 0
  %74 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %75

75:                                               ; preds = %57, %55, %31, %22
  %76 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mmcsd_softc* @device_get_softc(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
