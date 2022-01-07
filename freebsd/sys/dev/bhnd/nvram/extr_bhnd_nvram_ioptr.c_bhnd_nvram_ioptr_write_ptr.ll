; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_ioptr.c_bhnd_nvram_ioptr_write_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_ioptr.c_bhnd_nvram_ioptr_write_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }
%struct.bhnd_nvram_ioptr = type { i32 }

@BHND_NVRAM_IOPTR_RDWR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*, i64, i8**, i64, i64*)* @bhnd_nvram_ioptr_write_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_ioptr_write_ptr(%struct.bhnd_nvram_io* %0, i64 %1, i8** %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_nvram_io*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.bhnd_nvram_ioptr*, align 8
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %14 = bitcast %struct.bhnd_nvram_io* %13 to %struct.bhnd_nvram_ioptr*
  store %struct.bhnd_nvram_ioptr* %14, %struct.bhnd_nvram_ioptr** %12, align 8
  %15 = load %struct.bhnd_nvram_ioptr*, %struct.bhnd_nvram_ioptr** %12, align 8
  %16 = getelementptr inbounds %struct.bhnd_nvram_ioptr, %struct.bhnd_nvram_ioptr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BHND_NVRAM_IOPTR_RDWR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENODEV, align 4
  store i32 %22, i32* %6, align 4
  br label %30

23:                                               ; preds = %5
  %24 = load %struct.bhnd_nvram_ioptr*, %struct.bhnd_nvram_ioptr** %12, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64*, i64** %11, align 8
  %29 = call i32 @bhnd_nvram_ioptr_ptr(%struct.bhnd_nvram_ioptr* %24, i64 %25, i8** %26, i64 %27, i64* %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %23, %21
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @bhnd_nvram_ioptr_ptr(%struct.bhnd_nvram_ioptr*, i64, i8**, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
