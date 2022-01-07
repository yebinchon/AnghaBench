; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_chip_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mos_softc = type { i32* }

@MOS_PAUSE_TRHD = common dso_local global i32 0, align 4
@MOS_PAUSE_REWRITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mos_softc*)* @mos_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_chip_init(%struct.mos_softc* %0) #0 {
  %2 = alloca %struct.mos_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mos_softc* %0, %struct.mos_softc** %2, align 8
  %4 = load %struct.mos_softc*, %struct.mos_softc** %2, align 8
  %5 = load i32, i32* @MOS_PAUSE_TRHD, align 4
  %6 = call i32 @mos_reg_read_1(%struct.mos_softc* %4, i32 %5)
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %17, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MOS_PAUSE_REWRITES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load %struct.mos_softc*, %struct.mos_softc** %2, align 8
  %15 = load i32, i32* @MOS_PAUSE_TRHD, align 4
  %16 = call i32 @mos_reg_write_1(%struct.mos_softc* %14, i32 %15, i32 0)
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %9

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.mos_softc*, %struct.mos_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.mos_softc*, %struct.mos_softc** %2, align 8
  %27 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 255, i32* %29, align 4
  ret void
}

declare dso_local i32 @mos_reg_read_1(%struct.mos_softc*, i32) #1

declare dso_local i32 @mos_reg_write_1(%struct.mos_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
