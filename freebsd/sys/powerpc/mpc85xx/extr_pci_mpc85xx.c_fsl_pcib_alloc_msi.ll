; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_alloc_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_pcib_alloc_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pcib_softc = type { i32 }

@msi_vmem = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@VMEM_ADDR_MIN = common dso_local global i32 0, align 4
@VMEM_ADDR_MAX = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @fsl_pcib_alloc_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pcib_alloc_msi(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.fsl_pcib_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.fsl_pcib_softc* @device_get_softc(i32 %16)
  store %struct.fsl_pcib_softc* %17, %struct.fsl_pcib_softc** %12, align 8
  %18 = load i32*, i32** @msi_vmem, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @ENODEV, align 4
  store i32 %21, i32* %6, align 4
  br label %54

22:                                               ; preds = %5
  %23 = load i32*, i32** @msi_vmem, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @powerof2(i32 %25)
  %27 = load i32, i32* @VMEM_ADDR_MIN, align 4
  %28 = load i32, i32* @VMEM_ADDR_MAX, align 4
  %29 = load i32, i32* @M_BESTFIT, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @vmem_xalloc(i32* %23, i32 %24, i32 %26, i32 0, i32 0, i32 %27, i32 %28, i32 %31, i32* %13)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %6, align 4
  br label %54

37:                                               ; preds = %22
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %38

53:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %35, %20
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.fsl_pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @vmem_xalloc(i32*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @powerof2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
