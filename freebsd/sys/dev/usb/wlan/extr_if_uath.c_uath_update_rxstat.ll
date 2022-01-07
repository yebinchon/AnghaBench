; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_update_rxstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_update_rxstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32 }

@st_stopinprogress = common dso_local global i32 0, align 4
@st_crcerr = common dso_local global i32 0, align 4
@st_phyerr = common dso_local global i32 0, align 4
@st_decrypt_crcerr = common dso_local global i32 0, align 4
@st_decrypt_micerr = common dso_local global i32 0, align 4
@st_decomperr = common dso_local global i32 0, align 4
@st_keyerr = common dso_local global i32 0, align 4
@st_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uath_softc*, i32)* @uath_update_rxstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uath_update_rxstat(%struct.uath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uath_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.uath_softc* %0, %struct.uath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %38 [
    i32 128, label %6
    i32 135, label %10
    i32 129, label %14
    i32 133, label %18
    i32 132, label %22
    i32 134, label %26
    i32 130, label %30
    i32 131, label %34
  ]

6:                                                ; preds = %2
  %7 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %8 = load i32, i32* @st_stopinprogress, align 4
  %9 = call i32 @UATH_STAT_INC(%struct.uath_softc* %7, i32 %8)
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %12 = load i32, i32* @st_crcerr, align 4
  %13 = call i32 @UATH_STAT_INC(%struct.uath_softc* %11, i32 %12)
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %16 = load i32, i32* @st_phyerr, align 4
  %17 = call i32 @UATH_STAT_INC(%struct.uath_softc* %15, i32 %16)
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %20 = load i32, i32* @st_decrypt_crcerr, align 4
  %21 = call i32 @UATH_STAT_INC(%struct.uath_softc* %19, i32 %20)
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %24 = load i32, i32* @st_decrypt_micerr, align 4
  %25 = call i32 @UATH_STAT_INC(%struct.uath_softc* %23, i32 %24)
  br label %39

26:                                               ; preds = %2
  %27 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %28 = load i32, i32* @st_decomperr, align 4
  %29 = call i32 @UATH_STAT_INC(%struct.uath_softc* %27, i32 %28)
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %32 = load i32, i32* @st_keyerr, align 4
  %33 = call i32 @UATH_STAT_INC(%struct.uath_softc* %31, i32 %32)
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %36 = load i32, i32* @st_err, align 4
  %37 = call i32 @UATH_STAT_INC(%struct.uath_softc* %35, i32 %36)
  br label %39

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %34, %30, %26, %22, %18, %14, %10, %6
  ret void
}

declare dso_local i32 @UATH_STAT_INC(%struct.uath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
