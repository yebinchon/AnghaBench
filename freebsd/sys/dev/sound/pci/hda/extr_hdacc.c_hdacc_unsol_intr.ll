; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdacc.c_hdacc_unsol_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdacc.c_hdacc_unsol_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdacc_softc = type { i32, i32** }

@.str = private unnamed_addr constant [51 x i8] c"Unexpected unsolicited response with tag %d: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @hdacc_unsol_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdacc_unsol_intr(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdacc_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.hdacc_softc* @device_get_softc(i32* %8)
  store %struct.hdacc_softc* %9, %struct.hdacc_softc** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 26
  store i32 %11, i32* %7, align 4
  %12 = load %struct.hdacc_softc*, %struct.hdacc_softc** %5, align 8
  %13 = getelementptr inbounds %struct.hdacc_softc, %struct.hdacc_softc* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @HDAC_UNSOL_INTR(i32* %21, i32 %22)
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.hdacc_softc*, %struct.hdacc_softc** %5, align 8
  %26 = getelementptr inbounds %struct.hdacc_softc, %struct.hdacc_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %20
  ret void
}

declare dso_local %struct.hdacc_softc* @device_get_softc(i32*) #1

declare dso_local i32 @HDAC_UNSOL_INTR(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
