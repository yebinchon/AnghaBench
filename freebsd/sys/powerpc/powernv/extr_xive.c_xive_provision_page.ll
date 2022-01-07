; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_provision_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_provision_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_softc = type { i32 }

@M_XIVE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@OPAL_XIVE_DONATE_PAGE = common dso_local global i32 0, align 4
@OPAL_XIVE_PROVISIONING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xive_softc*)* @xive_provision_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_provision_page(%struct.xive_softc* %0) #0 {
  %2 = alloca %struct.xive_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.xive_softc* %0, %struct.xive_softc** %2, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = load %struct.xive_softc*, %struct.xive_softc** %2, align 8
  %7 = getelementptr inbounds %struct.xive_softc, %struct.xive_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @M_XIVE, align 4
  %10 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %11 = load %struct.xive_softc*, %struct.xive_softc** %2, align 8
  %12 = getelementptr inbounds %struct.xive_softc, %struct.xive_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xive_softc*, %struct.xive_softc** %2, align 8
  %15 = getelementptr inbounds %struct.xive_softc, %struct.xive_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @contigmalloc(i32 %8, i32 %9, i32 0, i32 0, i32 %10, i32 %13, i32 %16)
  store i8* %17, i8** %3, align 8
  %18 = load i32, i32* @OPAL_XIVE_DONATE_PAGE, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @vtophys(i8* %19)
  %21 = call i32 @opal_call(i32 %18, i32 -1, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @OPAL_XIVE_PROVISIONING, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %5, label %26

26:                                               ; preds = %22
  ret i32 0
}

declare dso_local i8* @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @opal_call(i32, i32, i32) #1

declare dso_local i32 @vtophys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
