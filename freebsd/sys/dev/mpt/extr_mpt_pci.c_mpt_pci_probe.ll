; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPI_MANUFACTPAGE_VENDORID_LSILOGIC = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"LSILogic FC909 FC Adapter\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"LSILogic FC909A FC Adapter\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"LSILogic FC919 FC Adapter\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"LSILogic FC919 LAN Adapter\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Dual LSILogic FC929 FC Adapter\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Dual LSILogic FC929 LAN Adapter\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"LSILogic FC919 FC PCI-X Adapter\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"LSILogic FC919 LAN PCI-X Adapter\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Dual LSILogic FC929X 2Gb/s FC PCI-X Adapter\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Dual LSILogic FC929X LAN PCI-X Adapter\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Dual LSILogic FC7X04X 4Gb/s FC PCI-Express Adapter\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Dual LSILogic FC7X04X 4Gb/s FC PCI-X Adapter\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"LSILogic 1030 Ultra4 Adapter\00", align 1
@BUS_PROBE_LOW_PRIORITY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"LSILogic SAS/SATA Adapter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpt_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @pci_get_vendor(i32 %6)
  %8 = load i64, i64* @MPI_MANUFACTPAGE_VENDORID_LSILOGIC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pci_get_device(i32 %14)
  switch i32 %15, label %32 [
    i32 151, label %16
    i32 152, label %17
    i32 150, label %18
    i32 147, label %19
    i32 146, label %20
    i32 143, label %21
    i32 149, label %22
    i32 148, label %23
    i32 145, label %24
    i32 144, label %25
    i32 142, label %26
    i32 141, label %27
    i32 140, label %28
    i32 139, label %28
    i32 130, label %29
    i32 138, label %31
    i32 137, label %31
    i32 136, label %31
    i32 135, label %31
    i32 134, label %31
    i32 133, label %31
    i32 132, label %31
    i32 131, label %31
    i32 129, label %31
    i32 128, label %31
  ]

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %34

17:                                               ; preds = %12
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %34

18:                                               ; preds = %12
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %34

19:                                               ; preds = %12
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %34

20:                                               ; preds = %12
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %34

21:                                               ; preds = %12
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %34

22:                                               ; preds = %12
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %34

23:                                               ; preds = %12
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %34

24:                                               ; preds = %12
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %34

25:                                               ; preds = %12
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %34

26:                                               ; preds = %12
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %34

27:                                               ; preds = %12
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  br label %34

28:                                               ; preds = %12, %12
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  br label %34

29:                                               ; preds = %12
  %30 = load i32, i32* @BUS_PROBE_LOW_PRIORITY, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %29
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8** %4, align 8
  br label %34

32:                                               ; preds = %12
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %31, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16
  %35 = load i32, i32* %3, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @device_set_desc(i32 %35, i8* %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %32, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
