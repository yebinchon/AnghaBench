; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcm.c_bhnd_nvram_bcm_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcm.c_bhnd_nvram_bcm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }
%struct.bhnd_nvram_bcmhdr = type { i32, i32 }

@BCM_NVRAM_MAGIC = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@BHND_NVRAM_DATA_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*)* @bhnd_nvram_bcm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_bcm_probe(%struct.bhnd_nvram_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_nvram_io*, align 8
  %4 = alloca %struct.bhnd_nvram_bcmhdr, align 4
  %5 = alloca i32, align 4
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %3, align 8
  %6 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %3, align 8
  %7 = call i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %6, i32 0, %struct.bhnd_nvram_bcmhdr* %4, i32 8)
  store i32 %7, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bhnd_nvram_bcmhdr, %struct.bhnd_nvram_bcmhdr* %4, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le32toh(i32 %13)
  %15 = load i64, i64* @BCM_NVRAM_MAGIC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %30

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.bhnd_nvram_bcmhdr, %struct.bhnd_nvram_bcmhdr* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le32toh(i32 %21)
  %23 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %3, align 8
  %24 = call i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io* %23)
  %25 = icmp sgt i64 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @BHND_NVRAM_DATA_PROBE_DEFAULT, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %26, %17, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io*, i32, %struct.bhnd_nvram_bcmhdr*, i32) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
