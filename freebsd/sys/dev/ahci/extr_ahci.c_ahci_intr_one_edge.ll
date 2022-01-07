; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_intr_one_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_intr_one_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller_irq = type { i32, %struct.ahci_controller* }
%struct.ahci_controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i8*)*, i8* }

@AHCI_IS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ahci_intr_one_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_intr_one_edge(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ahci_controller_irq*, align 8
  %4 = alloca %struct.ahci_controller*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ahci_controller_irq*
  store %struct.ahci_controller_irq* %8, %struct.ahci_controller_irq** %3, align 8
  %9 = load %struct.ahci_controller_irq*, %struct.ahci_controller_irq** %3, align 8
  %10 = getelementptr inbounds %struct.ahci_controller_irq, %struct.ahci_controller_irq* %9, i32 0, i32 1
  %11 = load %struct.ahci_controller*, %struct.ahci_controller** %10, align 8
  store %struct.ahci_controller* %11, %struct.ahci_controller** %4, align 8
  %12 = load %struct.ahci_controller_irq*, %struct.ahci_controller_irq** %3, align 8
  %13 = getelementptr inbounds %struct.ahci_controller_irq, %struct.ahci_controller_irq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %17 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AHCI_IS, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 1, %20
  %22 = call i32 @ATA_OUTL(i32 %18, i32 %19, i32 %21)
  %23 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %24 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %1
  %33 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %34 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i8*)*, i32 (i8*)** %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 %40(i8* %41)
  br label %43

43:                                               ; preds = %32, %1
  %44 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %45 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AHCI_IS, align 4
  %48 = call i32 @ATA_RBL(i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_RBL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
