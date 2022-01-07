; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_intr_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_intr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_vector = type { %struct.fire_icarg* }
%struct.fire_icarg = type { i32, i32, %struct.fire_softc* }
%struct.fire_softc = type { i32 }

@FO_PCI_IMAP_V = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@INTCLR_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fire_intr_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fire_intr_assign(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intr_vector*, align 8
  %4 = alloca %struct.fire_icarg*, align 8
  %5 = alloca %struct.fire_softc*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.intr_vector*
  store %struct.intr_vector* %8, %struct.intr_vector** %3, align 8
  %9 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %10 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %9, i32 0, i32 0
  %11 = load %struct.fire_icarg*, %struct.fire_icarg** %10, align 8
  store %struct.fire_icarg* %11, %struct.fire_icarg** %4, align 8
  %12 = load %struct.fire_icarg*, %struct.fire_icarg** %4, align 8
  %13 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %12, i32 0, i32 2
  %14 = load %struct.fire_softc*, %struct.fire_softc** %13, align 8
  store %struct.fire_softc* %14, %struct.fire_softc** %5, align 8
  %15 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %16 = load %struct.fire_icarg*, %struct.fire_icarg** %4, align 8
  %17 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @FIRE_PCI_READ_8(%struct.fire_softc* %15, i32 %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @FO_PCI_IMAP_V, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %1
  %26 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %27 = load %struct.fire_icarg*, %struct.fire_icarg** %4, align 8
  %28 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FO_PCI_IMAP_V, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %26, i32 %29, i32 %33)
  %35 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %36 = load %struct.fire_icarg*, %struct.fire_icarg** %4, align 8
  %37 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %40 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @FIRE_PCI_BARRIER(%struct.fire_softc* %35, i32 %38, i32 8, i32 %41)
  br label %43

43:                                               ; preds = %25, %1
  br label %44

44:                                               ; preds = %52, %43
  %45 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %46 = load %struct.fire_icarg*, %struct.fire_icarg** %4, align 8
  %47 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @FIRE_PCI_READ_8(%struct.fire_softc* %45, i32 %48)
  %50 = load i64, i64* @INTCLR_IDLE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %44

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @FO_PCI_IMAP_V, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @fire_intr_enable(i8* %59)
  br label %61

61:                                               ; preds = %58, %53
  ret void
}

declare dso_local i64 @FIRE_PCI_READ_8(%struct.fire_softc*, i32) #1

declare dso_local i32 @FIRE_PCI_WRITE_8(%struct.fire_softc*, i32, i32) #1

declare dso_local i32 @FIRE_PCI_BARRIER(%struct.fire_softc*, i32, i32, i32) #1

declare dso_local i32 @fire_intr_enable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
