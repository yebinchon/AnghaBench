; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_simplebus.c_xlp_simplebus_init_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_simplebus.c_xlp_simplebus_init_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, i64 }

@irq_rman = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"PCI Mapped Interrupts\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"xlp_simplebus_init_resources irq_rman\00", align 1
@port_rman = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"I/O ports\00", align 1
@PCIE_IO_BASE = common dso_local global i32 0, align 4
@PCIE_IO_LIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"xlp_simplebus_init_resources port_rman\00", align 1
@mem_rman = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"I/O memory\00", align 1
@PCIE_MEM_BASE = common dso_local global i32 0, align 4
@PCIE_MEM_LIMIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"xlp_simplebus_init_resources mem_rman\00", align 1
@pci_ecfg_rman = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"PCI ECFG IO\00", align 1
@PCI_ECFG_BASE = common dso_local global i32 0, align 4
@PCI_ECFG_LIMIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"xlp_simplebus_init_resources pci_ecfg_rman\00", align 1
@gbu_rman = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"Flash region\00", align 1
@GBU_MEM_BASE = common dso_local global i32 0, align 4
@GBU_MEM_LIMIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"xlp_simplebus_init_resources gbu_rman\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xlp_simplebus_init_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_simplebus_init_resources() #0 {
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @irq_rman, i32 0, i32 3), align 8
  store i32 255, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @irq_rman, i32 0, i32 0), align 8
  %1 = load i8*, i8** @RMAN_ARRAY, align 8
  store i8* %1, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @irq_rman, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @irq_rman, i32 0, i32 1), align 8
  %2 = call i64 @rman_init(%struct.TYPE_8__* @irq_rman)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i64 @rman_manage_region(%struct.TYPE_8__* @irq_rman, i32 0, i32 255)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %0
  %8 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %4
  %10 = load i8*, i8** @RMAN_ARRAY, align 8
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @port_rman, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @port_rman, i32 0, i32 1), align 8
  %11 = call i64 @rman_init(%struct.TYPE_8__* @port_rman)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @PCIE_IO_BASE, align 4
  %15 = load i32, i32* @PCIE_IO_LIMIT, align 4
  %16 = call i64 @rman_manage_region(%struct.TYPE_8__* @port_rman, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %9
  %19 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i8*, i8** @RMAN_ARRAY, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mem_rman, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mem_rman, i32 0, i32 1), align 8
  %22 = call i64 @rman_init(%struct.TYPE_8__* @mem_rman)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @PCIE_MEM_BASE, align 4
  %26 = load i32, i32* @PCIE_MEM_LIMIT, align 4
  %27 = call i64 @rman_manage_region(%struct.TYPE_8__* @mem_rman, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %20
  %30 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i8*, i8** @RMAN_ARRAY, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pci_ecfg_rman, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pci_ecfg_rman, i32 0, i32 1), align 8
  %33 = call i64 @rman_init(%struct.TYPE_8__* @pci_ecfg_rman)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @PCI_ECFG_BASE, align 4
  %37 = load i32, i32* @PCI_ECFG_LIMIT, align 4
  %38 = call i64 @rman_manage_region(%struct.TYPE_8__* @pci_ecfg_rman, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %31
  %41 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i8*, i8** @RMAN_ARRAY, align 8
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gbu_rman, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gbu_rman, i32 0, i32 1), align 8
  %44 = call i64 @rman_init(%struct.TYPE_8__* @gbu_rman)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @GBU_MEM_BASE, align 4
  %48 = load i32, i32* @GBU_MEM_LIMIT, align 4
  %49 = call i64 @rman_manage_region(%struct.TYPE_8__* @gbu_rman, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %42
  %52 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  ret void
}

declare dso_local i64 @rman_init(%struct.TYPE_8__*) #1

declare dso_local i64 @rman_manage_region(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
