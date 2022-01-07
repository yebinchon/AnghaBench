; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_lpc.c_pci_lpc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_lpc.c_pci_lpc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { i64 }
%struct.vmctx = type { i32 }

@lpc_bridge = common dso_local global %struct.pci_devinst* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Only one LPC bridge is allowed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"LPC bridge can be present only on bus 0.\0A\00", align 1
@PCIR_DEVICE = common dso_local global i32 0, align 4
@LPC_DEV = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@LPC_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_BRIDGE = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_BRIDGE_ISA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @pci_lpc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_lpc_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i8*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.pci_devinst*, %struct.pci_devinst** @lpc_bridge, align 8
  %9 = icmp ne %struct.pci_devinst* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %15 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %44

21:                                               ; preds = %13
  %22 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %23 = call i64 @lpc_init(%struct.vmctx* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %44

26:                                               ; preds = %21
  %27 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %28 = load i32, i32* @PCIR_DEVICE, align 4
  %29 = load i32, i32* @LPC_DEV, align 4
  %30 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %27, i32 %28, i32 %29)
  %31 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %32 = load i32, i32* @PCIR_VENDOR, align 4
  %33 = load i32, i32* @LPC_VENDOR, align 4
  %34 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %31, i32 %32, i32 %33)
  %35 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %36 = load i32, i32* @PCIR_CLASS, align 4
  %37 = load i32, i32* @PCIC_BRIDGE, align 4
  %38 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %35, i32 %36, i32 %37)
  %39 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %40 = load i32, i32* @PCIR_SUBCLASS, align 4
  %41 = load i32, i32* @PCIS_BRIDGE_ISA, align 4
  %42 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %39, i32 %40, i32 %41)
  %43 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  store %struct.pci_devinst* %43, %struct.pci_devinst** @lpc_bridge, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %26, %25, %18, %10
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @lpc_init(%struct.vmctx*) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
