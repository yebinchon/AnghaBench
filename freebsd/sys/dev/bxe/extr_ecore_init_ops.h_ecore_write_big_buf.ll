; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_write_big_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_write_big_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32, i64)* @ecore_write_big_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_write_big_buf(%struct.bxe_softc* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %10 = call i64 @DMAE_READY(%struct.bxe_softc* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %15 = call i32 @GUNZIP_PHYS(%struct.bxe_softc* %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ecore_write_dmae_phys_len(%struct.bxe_softc* %13, i32 %15, i32 %16, i32 %17)
  br label %41

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %24 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %30 = call i32 @GUNZIP_BUF(%struct.bxe_softc* %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ecore_init_ind_wr(%struct.bxe_softc* %27, i32 %28, i32 %30, i32 %31)
  br label %40

33:                                               ; preds = %22, %19
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %37 = call i32 @GUNZIP_BUF(%struct.bxe_softc* %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ecore_init_str_wr(%struct.bxe_softc* %34, i32 %35, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %26
  br label %41

41:                                               ; preds = %40, %12
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
