; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_chipid = type { i64 }
%struct.bhnd_erom_io = type { i32 }
%struct.bcma_erom = type { %struct.bhnd_erom_io*, i64 }

@BHND_ADDR_MAX = common dso_local global i64 0, align 8
@BCMA_EROM_TABLE_START = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@BCMA_EROM_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bhnd_chipid*, %struct.bhnd_erom_io*)* @bcma_erom_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_init(i32* %0, %struct.bhnd_chipid* %1, %struct.bhnd_erom_io* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bhnd_chipid*, align 8
  %7 = alloca %struct.bhnd_erom_io*, align 8
  %8 = alloca %struct.bcma_erom*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.bhnd_chipid* %1, %struct.bhnd_chipid** %6, align 8
  store %struct.bhnd_erom_io* %2, %struct.bhnd_erom_io** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.bcma_erom*
  store %struct.bcma_erom* %12, %struct.bcma_erom** %8, align 8
  %13 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %7, align 8
  %14 = load %struct.bcma_erom*, %struct.bcma_erom** %8, align 8
  %15 = getelementptr inbounds %struct.bcma_erom, %struct.bcma_erom* %14, i32 0, i32 0
  store %struct.bhnd_erom_io* %13, %struct.bhnd_erom_io** %15, align 8
  %16 = load %struct.bcma_erom*, %struct.bcma_erom** %8, align 8
  %17 = getelementptr inbounds %struct.bcma_erom, %struct.bcma_erom* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i64, i64* @BHND_ADDR_MAX, align 8
  %19 = load i64, i64* @BCMA_EROM_TABLE_START, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %6, align 8
  %22 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %4, align 4
  br label %44

27:                                               ; preds = %3
  %28 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %6, align 8
  %29 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BCMA_EROM_TABLE_START, align 8
  %32 = add nsw i64 %30, %31
  store i64 %32, i64* %9, align 8
  %33 = load %struct.bcma_erom*, %struct.bcma_erom** %8, align 8
  %34 = getelementptr inbounds %struct.bcma_erom, %struct.bcma_erom* %33, i32 0, i32 0
  %35 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* @BCMA_EROM_TABLE_SIZE, align 4
  %38 = call i32 @bhnd_erom_io_map(%struct.bhnd_erom_io* %35, i64 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %41, %25
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @bhnd_erom_io_map(%struct.bhnd_erom_io*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
