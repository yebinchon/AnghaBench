; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_intr_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_vector = type { i64, %struct.fire_icarg* }
%struct.fire_icarg = type { i32, %struct.fire_softc* }
%struct.fire_softc = type { i64 }
%struct.pcpu = type { i64, i32 }

@FO_PCI_IMAP_V = common dso_local global i64 0, align 8
@FIRE_MODE_OBERON = common dso_local global i64 0, align 8
@OBERON_PCI_IMAP_T_DESTID_SHFT = common dso_local global i64 0, align 8
@OBERON_PCI_IMAP_T_DESTID_MASK = common dso_local global i64 0, align 8
@FIRE_PCI_IMAP_T_JPID_SHFT = common dso_local global i64 0, align 8
@FIRE_PCI_IMAP_T_JPID_MASK = common dso_local global i64 0, align 8
@mp_ncpus = common dso_local global i64 0, align 8
@FO_PCI_IMAP_INT_CTRL_NUM_SHFT = common dso_local global i64 0, align 8
@FO_PCI_IMAP_INT_CTRL_NUM_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fire_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fire_intr_enable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intr_vector*, align 8
  %4 = alloca %struct.fire_icarg*, align 8
  %5 = alloca %struct.fire_softc*, align 8
  %6 = alloca %struct.pcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.intr_vector*
  store %struct.intr_vector* %11, %struct.intr_vector** %3, align 8
  %12 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %13 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %12, i32 0, i32 1
  %14 = load %struct.fire_icarg*, %struct.fire_icarg** %13, align 8
  store %struct.fire_icarg* %14, %struct.fire_icarg** %4, align 8
  %15 = load %struct.fire_icarg*, %struct.fire_icarg** %4, align 8
  %16 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %15, i32 0, i32 1
  %17 = load %struct.fire_softc*, %struct.fire_softc** %16, align 8
  store %struct.fire_softc* %17, %struct.fire_softc** %5, align 8
  %18 = load i64, i64* @FO_PCI_IMAP_V, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %20 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FIRE_MODE_OBERON, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %26 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OBERON_PCI_IMAP_T_DESTID_SHFT, align 8
  %29 = shl i64 %27, %28
  %30 = load i64, i64* @OBERON_PCI_IMAP_T_DESTID_MASK, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* %7, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %7, align 8
  br label %44

34:                                               ; preds = %1
  %35 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %36 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FIRE_PCI_IMAP_T_JPID_SHFT, align 8
  %39 = shl i64 %37, %38
  %40 = load i64, i64* @FIRE_PCI_IMAP_T_JPID_MASK, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* %7, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %34, %24
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %69, %44
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @mp_ncpus, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  %51 = call %struct.pcpu* @pcpu_find(i64 %50)
  store %struct.pcpu* %51, %struct.pcpu** %6, align 8
  %52 = load %struct.pcpu*, %struct.pcpu** %6, align 8
  %53 = icmp eq %struct.pcpu* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %56 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.pcpu*, %struct.pcpu** %6, align 8
  %59 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54, %49
  br label %69

63:                                               ; preds = %54
  %64 = load %struct.pcpu*, %struct.pcpu** %6, align 8
  %65 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = srem i32 %66, 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %8, align 8
  br label %72

69:                                               ; preds = %62
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %45

72:                                               ; preds = %63, %45
  %73 = load i64, i64* %8, align 8
  %74 = shl i64 1, %73
  %75 = load i64, i64* @FO_PCI_IMAP_INT_CTRL_NUM_SHFT, align 8
  %76 = shl i64 %74, %75
  %77 = load i64, i64* @FO_PCI_IMAP_INT_CTRL_NUM_MASK, align 8
  %78 = and i64 %76, %77
  %79 = load i64, i64* %7, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %7, align 8
  %81 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %82 = load %struct.fire_icarg*, %struct.fire_icarg** %4, align 8
  %83 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %81, i32 %84, i64 %85)
  ret void
}

declare dso_local %struct.pcpu* @pcpu_find(i64) #1

declare dso_local i32 @FIRE_PCI_WRITE_8(%struct.fire_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
