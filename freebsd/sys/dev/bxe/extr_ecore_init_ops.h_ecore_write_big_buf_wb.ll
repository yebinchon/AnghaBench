; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_write_big_buf_wb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_write_big_buf_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32)* @ecore_write_big_buf_wb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_write_big_buf_wb(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %8 = call i64 @DMAE_READY(%struct.bxe_softc* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %13 = call i32 @GUNZIP_PHYS(%struct.bxe_softc* %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ecore_write_dmae_phys_len(%struct.bxe_softc* %11, i32 %13, i32 %14, i32 %15)
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %19 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %25 = call i32 @GUNZIP_BUF(%struct.bxe_softc* %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ecore_init_ind_wr(%struct.bxe_softc* %22, i32 %23, i32 %25, i32 %26)
  br label %35

28:                                               ; preds = %17
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %32 = call i32 @GUNZIP_BUF(%struct.bxe_softc* %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ecore_init_str_wr(%struct.bxe_softc* %29, i32 %30, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %21
  br label %36

36:                                               ; preds = %35, %10
  ret void
}

declare dso_local i64 @DMAE_READY(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_write_dmae_phys_len(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @GUNZIP_PHYS(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_init_ind_wr(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @GUNZIP_BUF(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_init_str_wr(%struct.bxe_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
