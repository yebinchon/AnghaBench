; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_disk.c_mfi_disk_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_disk.c_mfi_disk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_disk = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MFI_DISK_FLAGS_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to delete busy ld device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MFI_DISK_FLAGS_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_disk_disable(%struct.mfi_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mfi_disk*, align 8
  store %struct.mfi_disk* %0, %struct.mfi_disk** %3, align 8
  %4 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %5 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %11 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MFI_DISK_FLAGS_OPEN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %18 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %36

24:                                               ; preds = %16
  %25 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %26 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EBUSY, align 4
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @MFI_DISK_FLAGS_DISABLED, align 4
  %32 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %33 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %24, %23
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
