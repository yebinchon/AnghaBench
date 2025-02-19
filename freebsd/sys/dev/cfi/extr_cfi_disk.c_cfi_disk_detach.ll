; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_disk.c_cfi_disk_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_disk.c_cfi_disk_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_disk_softc = type { i32, i32, i32, i32 }

@CFI_DISK_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cfi_disk_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_disk_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfi_disk_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.cfi_disk_softc* @device_get_softc(i32 %5)
  store %struct.cfi_disk_softc* %6, %struct.cfi_disk_softc** %4, align 8
  %7 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %8 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CFI_DISK_OPEN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %17 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @taskqueue_free(i32 %18)
  %20 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %21 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @disk_destroy(i32 %22)
  %24 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %25 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %24, i32 0, i32 1
  %26 = call i32 @mtx_destroy(i32* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %15, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.cfi_disk_softc* @device_get_softc(i32) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @disk_destroy(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
