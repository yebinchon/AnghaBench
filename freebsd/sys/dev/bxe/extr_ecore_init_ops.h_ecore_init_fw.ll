; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_init_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_init_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32)* @ecore_init_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_init_fw(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = call i32* @ecore_sel_blob(%struct.bxe_softc* %8, i32 %9, i32* %10)
  store i32* %11, i32** %7, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %13 = call i64 @DMAE_READY(%struct.bxe_softc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @VIRT_WR_DMAE_LEN(%struct.bxe_softc* %16, i32* %17, i32 %18, i32 %19, i32 1)
  br label %38

21:                                               ; preds = %3
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %23 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ecore_init_ind_wr(%struct.bxe_softc* %26, i32 %27, i32* %28, i32 %29)
  br label %37

31:                                               ; preds = %21
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ecore_init_str_wr(%struct.bxe_softc* %32, i32 %33, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37, %15
  ret void
}

declare dso_local i32* @ecore_sel_blob(%struct.bxe_softc*, i32, i32*) #1

declare dso_local i64 @DMAE_READY(%struct.bxe_softc*) #1

declare dso_local i32 @VIRT_WR_DMAE_LEN(%struct.bxe_softc*, i32*, i32, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_init_ind_wr(%struct.bxe_softc*, i32, i32*, i32) #1

declare dso_local i32 @ecore_init_str_wr(%struct.bxe_softc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
