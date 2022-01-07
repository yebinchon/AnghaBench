; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_e820.c_nvdimm_e820_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_e820.c_nvdimm_e820_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_smap = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@smapbase = common dso_local global %struct.bios_smap* null, align 8
@SMAP_TYPE_PRAM = common dso_local global i64 0, align 8
@pram_segments = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Found PRAM 0x%jx +0x%jx\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"No e820 PRAM regions detected\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@pram_nreg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nvdimm_e820_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_e820_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_smap*, align 8
  %5 = alloca %struct.bios_smap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load %struct.bios_smap*, %struct.bios_smap** @smapbase, align 8
  %10 = bitcast %struct.bios_smap* %9 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 -1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bios_smap*, %struct.bios_smap** @smapbase, align 8
  %14 = bitcast %struct.bios_smap* %13 to i8*
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = bitcast i8* %17 to %struct.bios_smap*
  store %struct.bios_smap* %18, %struct.bios_smap** %4, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.bios_smap*, %struct.bios_smap** @smapbase, align 8
  store %struct.bios_smap* %19, %struct.bios_smap** %5, align 8
  br label %20

20:                                               ; preds = %65, %1
  %21 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %22 = load %struct.bios_smap*, %struct.bios_smap** %4, align 8
  %23 = icmp ult %struct.bios_smap* %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %20
  %25 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %26 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SMAP_TYPE_PRAM, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %32 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24
  br label %65

36:                                               ; preds = %30
  %37 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %38 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pram_segments, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i64 %39, i64* %44, align 8
  %45 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %46 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pram_segments, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %47, i64* %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %55 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %59 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %36, %35
  %66 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %67 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %66, i32 1
  store %struct.bios_smap* %67, %struct.bios_smap** %5, align 8
  br label %20

68:                                               ; preds = %20
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* @pram_nreg, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @nvdimm_e820_create_spas(i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @nvdimm_e820_create_spas(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
