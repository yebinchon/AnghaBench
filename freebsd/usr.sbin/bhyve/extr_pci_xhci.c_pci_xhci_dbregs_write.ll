; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_dbregs_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_dbregs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32, i32* }

@.str = private unnamed_addr constant [47 x i8] c"pci_xhci: doorbell write offset 0x%lx: 0x%lx\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"pci_xhci: controller halted\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_xhci_softc*, i32, i32)* @pci_xhci_dbregs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_dbregs_write(%struct.pci_xhci_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %9 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %7, %10
  %12 = sext i32 %11 to i64
  %13 = udiv i64 %12, 4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @DPRINTF(i8* %18)
  %20 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %21 = call i64 @XHCI_HALTED(%struct.pci_xhci_softc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %45

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %30 = call i32 @pci_xhci_complete_commands(%struct.pci_xhci_softc* %29)
  br label %45

31:                                               ; preds = %25
  %32 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %33 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @XHCI_DB_TARGET_GET(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @XHCI_DB_SID_GET(i32 %41)
  %43 = call i32 @pci_xhci_device_doorbell(%struct.pci_xhci_softc* %37, i32 %38, i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %36, %31
  br label %45

45:                                               ; preds = %23, %44, %28
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @XHCI_HALTED(%struct.pci_xhci_softc*) #1

declare dso_local i32 @pci_xhci_complete_commands(%struct.pci_xhci_softc*) #1

declare dso_local i32 @pci_xhci_device_doorbell(%struct.pci_xhci_softc*, i32, i32, i32) #1

declare dso_local i32 @XHCI_DB_TARGET_GET(i32) #1

declare dso_local i32 @XHCI_DB_SID_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
