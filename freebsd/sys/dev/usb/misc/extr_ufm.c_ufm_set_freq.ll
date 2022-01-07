; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ufm.c_ufm_set_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ufm.c_ufm_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufm_softc = type { i32, i32 }

@UFM_CMD_SET_FREQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UFM_CMD0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufm_softc*, i8*)* @ufm_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufm_set_freq(%struct.ufm_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ufm_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ufm_softc* %0, %struct.ufm_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.ufm_softc*, %struct.ufm_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ufm_softc, %struct.ufm_softc* %10, i32 0, i32 1
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ufm_softc*, %struct.ufm_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ufm_softc, %struct.ufm_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ufm_softc*, %struct.ufm_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ufm_softc, %struct.ufm_softc* %16, i32 0, i32 1
  %18 = call i32 @mtx_unlock(i32* %17)
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 10700001
  %21 = sdiv i32 %20, 12500
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ufm_softc*, %struct.ufm_softc** %4, align 8
  %23 = load i32, i32* @UFM_CMD_SET_FREQ, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @ufm_do_req(%struct.ufm_softc* %22, i32 %23, i32 %25, i32 %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @EIO, align 4
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.ufm_softc*, %struct.ufm_softc** %4, align 8
  %33 = load i32, i32* @UFM_CMD0, align 4
  %34 = call i64 @ufm_do_req(%struct.ufm_softc* %32, i32 %33, i32 150, i32 183, i32* null)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EIO, align 4
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %36, %29
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @ufm_do_req(%struct.ufm_softc*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
