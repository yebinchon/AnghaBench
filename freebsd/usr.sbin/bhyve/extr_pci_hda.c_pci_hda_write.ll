; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_pci_hda_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_pci_hda_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.hda_softc* }
%struct.hda_softc = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"offset: 0x%lx value: 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32, i32)* @pci_hda_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_hda_write(%struct.vmctx* %0, i32 %1, %struct.pci_devinst* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_devinst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hda_softc*, align 8
  %16 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pci_devinst* %2, %struct.pci_devinst** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %18 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %17, i32 0, i32 0
  %19 = load %struct.hda_softc*, %struct.hda_softc** %18, align 8
  store %struct.hda_softc* %19, %struct.hda_softc** %15, align 8
  %20 = load %struct.hda_softc*, %struct.hda_softc** %15, align 8
  %21 = ptrtoint %struct.hda_softc* %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %13, align 4
  %28 = icmp sle i32 %27, 4
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.hda_softc*, %struct.hda_softc** %15, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @hda_write(%struct.hda_softc* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32) #1

declare dso_local i32 @hda_write(%struct.hda_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
