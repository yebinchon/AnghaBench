; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_disk.c_mfi_disk_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_disk.c_mfi_disk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { %struct.mfi_disk* }
%struct.mfi_disk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MFI_DISK_FLAGS_DISABLED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MFI_DISK_FLAGS_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*)* @mfi_disk_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_disk_open(%struct.disk* %0) #0 {
  %2 = alloca %struct.disk*, align 8
  %3 = alloca %struct.mfi_disk*, align 8
  %4 = alloca i32, align 4
  store %struct.disk* %0, %struct.disk** %2, align 8
  %5 = load %struct.disk*, %struct.disk** %2, align 8
  %6 = getelementptr inbounds %struct.disk, %struct.disk* %5, i32 0, i32 0
  %7 = load %struct.mfi_disk*, %struct.mfi_disk** %6, align 8
  store %struct.mfi_disk* %7, %struct.mfi_disk** %3, align 8
  %8 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %9 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %14 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MFI_DISK_FLAGS_DISABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %4, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @MFI_DISK_FLAGS_OPEN, align 4
  %23 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %24 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %19
  %28 = load %struct.mfi_disk*, %struct.mfi_disk** %3, align 8
  %29 = getelementptr inbounds %struct.mfi_disk, %struct.mfi_disk* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mtx_unlock(i32* %31)
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
