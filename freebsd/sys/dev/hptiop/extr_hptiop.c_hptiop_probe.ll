; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_adapter_ops = type { i32 }
%struct.hpt_iop_hba = type { %struct.hptiop_adapter_ops* }

@hptiop_probe.buf = internal global [256 x i8] zeroinitializer, align 16
@ENXIO = common dso_local global i32 0, align 4
@hptiop_mvfrey_ops = common dso_local global %struct.hptiop_adapter_ops zeroinitializer, align 4
@hptiop_itl_ops = common dso_local global %struct.hptiop_adapter_ops zeroinitializer, align 4
@hptiop_mv_ops = common dso_local global %struct.hptiop_adapter_ops zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"adapter at PCI %d:%d:%d, IRQ %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"RocketRAID %x %s Controller\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SAS\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SATA\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"hba->ops=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hptiop_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpt_iop_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hptiop_adapter_ops*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @pci_get_vendor(i32 %8)
  %10 = icmp ne i32 %9, 4355
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pci_get_device(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %22 [
    i32 17696, label %17
    i32 17697, label %17
    i32 17698, label %17
    i32 13856, label %18
    i32 13858, label %18
    i32 13888, label %18
    i32 16912, label %19
    i32 16913, label %19
    i32 17168, label %19
    i32 17169, label %19
    i32 17184, label %19
    i32 17185, label %19
    i32 17186, label %19
    i32 12832, label %20
    i32 13088, label %20
    i32 13328, label %20
    i32 13600, label %20
    i32 13584, label %20
    i32 13585, label %20
    i32 13601, label %20
    i32 13602, label %20
    i32 13616, label %20
    i32 13632, label %20
    i32 13664, label %20
    i32 12320, label %21
    i32 12576, label %21
    i32 12578, label %21
  ]

17:                                               ; preds = %13, %13, %13
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %13, %13, %13, %17
  store %struct.hptiop_adapter_ops* @hptiop_mvfrey_ops, %struct.hptiop_adapter_ops** %7, align 8
  br label %24

19:                                               ; preds = %13, %13, %13, %13, %13, %13, %13
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %19
  store %struct.hptiop_adapter_ops* @hptiop_itl_ops, %struct.hptiop_adapter_ops** %7, align 8
  br label %24

21:                                               ; preds = %13, %13, %13
  store %struct.hptiop_adapter_ops* @hptiop_mv_ops, %struct.hptiop_adapter_ops** %7, align 8
  br label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %21, %20, %18
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @pci_get_bus(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pci_get_slot(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @pci_get_function(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pci_get_irq(i32 %32)
  %34 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29, i32 %31, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %40 = call i32 @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hptiop_probe.buf, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_set_desc_copy(i32 %41, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hptiop_probe.buf, i64 0, i64 0))
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @device_get_softc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.hpt_iop_hba*
  store %struct.hpt_iop_hba* %45, %struct.hpt_iop_hba** %4, align 8
  %46 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %47 = call i32 @bzero(%struct.hpt_iop_hba* %46, i32 8)
  %48 = load %struct.hptiop_adapter_ops*, %struct.hptiop_adapter_ops** %7, align 8
  %49 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %50 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %49, i32 0, i32 0
  store %struct.hptiop_adapter_ops* %48, %struct.hptiop_adapter_ops** %50, align 8
  %51 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %52 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %51, i32 0, i32 0
  %53 = load %struct.hptiop_adapter_ops*, %struct.hptiop_adapter_ops** %52, align 8
  %54 = bitcast %struct.hptiop_adapter_ops* %53 to i8*
  %55 = call i32 @KdPrint(i8* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %24, %22, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @pci_get_irq(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.hpt_iop_hba*, i32) #1

declare dso_local i32 @KdPrint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
