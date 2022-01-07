; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ufm.c_ufm_get_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ufm.c_ufm_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufm_softc = type { i32 }

@hz = common dso_local global i32 0, align 4
@UFM_CMD0 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufm_softc*, i8*)* @ufm_get_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufm_get_stat(%struct.ufm_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ufm_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ufm_softc* %0, %struct.ufm_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @hz, align 4
  %8 = sdiv i32 %7, 4
  %9 = call i32 @usb_pause_mtx(i32* null, i32 %8)
  %10 = load %struct.ufm_softc*, %struct.ufm_softc** %4, align 8
  %11 = load i32, i32* @UFM_CMD0, align 4
  %12 = call i64 @ufm_do_req(%struct.ufm_softc* %10, i32 %11, i32 0, i32 36, i32* %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i64 @ufm_do_req(%struct.ufm_softc*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
