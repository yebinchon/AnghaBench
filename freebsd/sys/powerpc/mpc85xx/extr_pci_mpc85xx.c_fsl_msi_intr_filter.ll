; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_msi_intr_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_msi_intr_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_msi_irq = type { i32*, i64 }

@ccsrbar_va = common dso_local global i64 0, align 8
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fsl_msi_intr_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_msi_intr_filter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fsl_msi_irq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.fsl_msi_irq*
  store %struct.fsl_msi_irq* %7, %struct.fsl_msi_irq** %3, align 8
  %8 = load i64, i64* @ccsrbar_va, align 8
  %9 = load %struct.fsl_msi_irq*, %struct.fsl_msi_irq** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_msi_irq, %struct.fsl_msi_irq* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %8, %11
  %13 = call i32 @ccsr_read4(i64 %12)
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.fsl_msi_irq*, %struct.fsl_msi_irq** %3, align 8
  %23 = getelementptr inbounds %struct.fsl_msi_irq, %struct.fsl_msi_irq* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @powerpc_dispatch_intr(i32 %28, i32* null)
  br label %30

30:                                               ; preds = %21, %17
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @ccsr_read4(i64) #1

declare dso_local i32 @powerpc_dispatch_intr(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
