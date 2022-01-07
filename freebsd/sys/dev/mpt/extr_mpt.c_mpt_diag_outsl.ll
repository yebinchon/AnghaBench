; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_diag_outsl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_diag_outsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i64 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@MPT_OFFSET_DIAG_ADDR = common dso_local global i32 0, align 4
@MPT_OFFSET_DIAG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, i32, i32*, i32)* @mpt_diag_outsl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_diag_outsl(%struct.mpt_softc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @roundup2(i32 %11, i32 4)
  %13 = sdiv i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  store i32* %15, i32** %9, align 8
  %16 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %17 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %22 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SYS_RES_IOPORT, align 4
  %25 = call i32 @pci_enable_io(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %4
  %27 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %28 = load i32, i32* @MPT_OFFSET_DIAG_ADDR, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mpt_pio_write(%struct.mpt_softc* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %35, %26
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %37 = load i32, i32* @MPT_OFFSET_DIAG_DATA, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mpt_pio_write(%struct.mpt_softc* %36, i32 %37, i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  br label %31

43:                                               ; preds = %31
  %44 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %45 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %50 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SYS_RES_IOPORT, align 4
  %53 = call i32 @pci_disable_io(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %43
  ret void
}

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @pci_enable_io(i32, i32) #1

declare dso_local i32 @mpt_pio_write(%struct.mpt_softc*, i32, i32) #1

declare dso_local i32 @pci_disable_io(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
