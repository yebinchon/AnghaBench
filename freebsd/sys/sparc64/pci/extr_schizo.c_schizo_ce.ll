; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_ce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.schizo_softc = type { i32, i32, i32 }

@STX_CTRL_CE_AFAR = common dso_local global i32 0, align 4
@STX_CTRL_UE_AFSR = common dso_local global i32 0, align 4
@STX_CTRL_CE_AFSR_ERRPNDG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"correctable DMA error AFAR %#llx AFSR %#llx\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @schizo_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_ce(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.schizo_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.schizo_softc*
  store %struct.schizo_softc* %8, %struct.schizo_softc** %3, align 8
  %9 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %10 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mtx_lock_spin(i32 %11)
  %13 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %14 = load i32, i32* @STX_CTRL_CE_AFAR, align 4
  %15 = call i32 @SCHIZO_CTRL_READ_8(%struct.schizo_softc* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 1000
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %21 = load i32, i32* @STX_CTRL_UE_AFSR, align 4
  %22 = call i32 @SCHIZO_CTRL_READ_8(%struct.schizo_softc* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @STX_CTRL_CE_AFSR_ERRPNDG, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %16

31:                                               ; preds = %26, %16
  %32 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %33 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %37 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %42)
  %44 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %45 = load i32, i32* @STX_CTRL_UE_AFSR, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @SCHIZO_CTRL_WRITE_8(%struct.schizo_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %49 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mtx_unlock_spin(i32 %50)
  %52 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %52
}

declare dso_local i32 @mtx_lock_spin(i32) #1

declare dso_local i32 @SCHIZO_CTRL_READ_8(%struct.schizo_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

declare dso_local i32 @SCHIZO_CTRL_WRITE_8(%struct.schizo_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
