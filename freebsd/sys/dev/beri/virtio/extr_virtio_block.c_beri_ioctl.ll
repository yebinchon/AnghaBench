; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_beri_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_beri_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.beri_vtblk_softc* }
%struct.beri_vtblk_softc = type { i32, i32, i32*, %struct.md_ioctl* }
%struct.md_ioctl = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"opening file, td 0x%08x\0A\00", align 1
@vtblk_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"closing file, td 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @beri_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.beri_vtblk_softc*, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load %struct.cdev*, %struct.cdev** %7, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %15, align 8
  store %struct.beri_vtblk_softc* %16, %struct.beri_vtblk_softc** %12, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %74 [
    i32 129, label %18
    i32 128, label %50
  ]

18:                                               ; preds = %5
  %19 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %12, align 8
  %20 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %76

24:                                               ; preds = %18
  %25 = load i64, i64* %9, align 8
  %26 = inttoptr i64 %25 to %struct.md_ioctl*
  %27 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %12, align 8
  %28 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %27, i32 0, i32 3
  store %struct.md_ioctl* %26, %struct.md_ioctl** %28, align 8
  %29 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %12, align 8
  %30 = call i32 @backend_info(%struct.beri_vtblk_softc* %29)
  %31 = load %struct.thread*, %struct.thread** %11, align 8
  %32 = ptrtoint %struct.thread* %31 to i32
  %33 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %12, align 8
  %35 = load %struct.thread*, %struct.thread** %11, align 8
  %36 = call i32 @open_file(%struct.beri_vtblk_softc* %34, %struct.thread* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %76

41:                                               ; preds = %24
  %42 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %12, align 8
  %43 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @vtblk_intr, align 4
  %46 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %12, align 8
  %47 = call i32 @PIO_SETUP_IRQ(i32 %44, i32 %45, %struct.beri_vtblk_softc* %46)
  %48 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %12, align 8
  %49 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %75

50:                                               ; preds = %5
  %51 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %12, align 8
  %52 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  br label %76

56:                                               ; preds = %50
  %57 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %12, align 8
  %58 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.thread*, %struct.thread** %11, align 8
  %60 = ptrtoint %struct.thread* %59 to i32
  %61 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %12, align 8
  %63 = load %struct.thread*, %struct.thread** %11, align 8
  %64 = call i32 @close_file(%struct.beri_vtblk_softc* %62, %struct.thread* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %76

69:                                               ; preds = %56
  %70 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %12, align 8
  %71 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PIO_TEARDOWN_IRQ(i32 %72)
  br label %75

74:                                               ; preds = %5
  br label %75

75:                                               ; preds = %74, %69, %41
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %67, %55, %39, %23
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @backend_info(%struct.beri_vtblk_softc*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @open_file(%struct.beri_vtblk_softc*, %struct.thread*) #1

declare dso_local i32 @PIO_SETUP_IRQ(i32, i32, %struct.beri_vtblk_softc*) #1

declare dso_local i32 @close_file(%struct.beri_vtblk_softc*, %struct.thread*) #1

declare dso_local i32 @PIO_TEARDOWN_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
