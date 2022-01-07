; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_pci_console.c_opcic_cnprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_pci_console.c_opcic_cnprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opcic_softc = type { i64, i64 }
%struct.consdev = type { i32, i32, %struct.opcic_softc* }
%struct.cvmx_bootmem_named_block_desc = type { i64 }
%struct.TYPE_2__ = type { i32 }

@opcic_instance = common dso_local global %struct.opcic_softc zeroinitializer, align 8
@CN_DEAD = common dso_local global i32 0, align 4
@OCTEON_PCI_CONSOLE_BLOCK_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"opcic@%p\00", align 1
@boothowto = common dso_local global i32 0, align 4
@RB_SERIAL = common dso_local global i32 0, align 4
@CN_REMOTE = common dso_local global i32 0, align 4
@CN_NORMAL = common dso_local global i32 0, align 4
@OPCIC_FLAG_RSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @opcic_cnprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opcic_cnprobe(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca %struct.cvmx_bootmem_named_block_desc*, align 8
  %4 = alloca %struct.opcic_softc*, align 8
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  store %struct.opcic_softc* @opcic_instance, %struct.opcic_softc** %4, align 8
  %5 = load %struct.opcic_softc*, %struct.opcic_softc** %4, align 8
  %6 = getelementptr inbounds %struct.opcic_softc, %struct.opcic_softc* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.opcic_softc*, %struct.opcic_softc** %4, align 8
  %8 = getelementptr inbounds %struct.opcic_softc, %struct.opcic_softc* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @CN_DEAD, align 4
  %10 = load %struct.consdev*, %struct.consdev** %2, align 8
  %11 = getelementptr inbounds %struct.consdev, %struct.consdev* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %15 [
  ]

15:                                               ; preds = %1
  %16 = load i8*, i8** @OCTEON_PCI_CONSOLE_BLOCK_NAME, align 8
  %17 = call %struct.cvmx_bootmem_named_block_desc* @cvmx_bootmem_find_named_block(i8* %16)
  store %struct.cvmx_bootmem_named_block_desc* %17, %struct.cvmx_bootmem_named_block_desc** %3, align 8
  %18 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %3, align 8
  %19 = icmp eq %struct.cvmx_bootmem_named_block_desc* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %50

21:                                               ; preds = %15
  %22 = load %struct.cvmx_bootmem_named_block_desc*, %struct.cvmx_bootmem_named_block_desc** %3, align 8
  %23 = getelementptr inbounds %struct.cvmx_bootmem_named_block_desc, %struct.cvmx_bootmem_named_block_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.opcic_softc*, %struct.opcic_softc** %4, align 8
  %26 = getelementptr inbounds %struct.opcic_softc, %struct.opcic_softc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %21
  %28 = load %struct.opcic_softc*, %struct.opcic_softc** %4, align 8
  %29 = load %struct.consdev*, %struct.consdev** %2, align 8
  %30 = getelementptr inbounds %struct.consdev, %struct.consdev* %29, i32 0, i32 2
  store %struct.opcic_softc* %28, %struct.opcic_softc** %30, align 8
  %31 = load %struct.consdev*, %struct.consdev** %2, align 8
  %32 = getelementptr inbounds %struct.consdev, %struct.consdev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.consdev*, %struct.consdev** %2, align 8
  %35 = getelementptr inbounds %struct.consdev, %struct.consdev* %34, i32 0, i32 2
  %36 = load %struct.opcic_softc*, %struct.opcic_softc** %35, align 8
  %37 = call i32 @snprintf(i32 %33, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.opcic_softc* %36)
  %38 = load i32, i32* @boothowto, align 4
  %39 = load i32, i32* @RB_SERIAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* @CN_REMOTE, align 4
  br label %46

44:                                               ; preds = %27
  %45 = load i32, i32* @CN_NORMAL, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.consdev*, %struct.consdev** %2, align 8
  %49 = getelementptr inbounds %struct.consdev, %struct.consdev* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %20
  ret void
}

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local %struct.cvmx_bootmem_named_block_desc* @cvmx_bootmem_find_named_block(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, %struct.opcic_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
