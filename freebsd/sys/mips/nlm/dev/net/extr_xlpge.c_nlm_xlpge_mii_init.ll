; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_mii_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpge_softc = type { i32*, i32, i32 }

@xlpge_mediachange = common dso_local global i32 0, align 4
@xlpge_mediastatus = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nlm_xlpge_softc*)* @nlm_xlpge_mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_xlpge_mii_init(i32 %0, %struct.nlm_xlpge_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlm_xlpge_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.nlm_xlpge_softc* %1, %struct.nlm_xlpge_softc** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %8 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %7, i32 0, i32 0
  %9 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %10 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @xlpge_mediachange, align 4
  %13 = load i32, i32* @xlpge_mediastatus, align 4
  %14 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %15 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %16 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MII_OFFSET_ANY, align 4
  %19 = call i32 @mii_attach(i32 %6, i32** %8, i32 %11, i32 %12, i32 %13, i32 %14, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %26 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %4, align 8
  %29 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @mii_attach(i32, i32**, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
