; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_kick_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_kick_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32, %struct.pvscsi_rings_state* }
%struct.pvscsi_rings_state = type { i64, i64, i64 }

@READ_6 = common dso_local global i64 0, align 8
@READ_10 = common dso_local global i64 0, align 8
@READ_12 = common dso_local global i64 0, align 8
@READ_16 = common dso_local global i64 0, align 8
@WRITE_6 = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@WRITE_12 = common dso_local global i64 0, align 8
@WRITE_16 = common dso_local global i64 0, align 8
@PVSCSI_REG_OFFSET_KICK_RW_IO = common dso_local global i32 0, align 4
@PVSCSI_REG_OFFSET_KICK_NON_RW_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_softc*, i64)* @pvscsi_kick_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_kick_io(%struct.pvscsi_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.pvscsi_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pvscsi_rings_state*, align 8
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @READ_6, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @READ_10, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @READ_12, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @READ_16, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @WRITE_6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @WRITE_10, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @WRITE_12, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @WRITE_16, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %33, %29, %25, %21, %17, %13, %9, %2
  %38 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %39 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %38, i32 0, i32 1
  %40 = load %struct.pvscsi_rings_state*, %struct.pvscsi_rings_state** %39, align 8
  store %struct.pvscsi_rings_state* %40, %struct.pvscsi_rings_state** %5, align 8
  %41 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %42 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct.pvscsi_rings_state*, %struct.pvscsi_rings_state** %5, align 8
  %47 = getelementptr inbounds %struct.pvscsi_rings_state, %struct.pvscsi_rings_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pvscsi_rings_state*, %struct.pvscsi_rings_state** %5, align 8
  %50 = getelementptr inbounds %struct.pvscsi_rings_state, %struct.pvscsi_rings_state* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.pvscsi_rings_state*, %struct.pvscsi_rings_state** %5, align 8
  %54 = getelementptr inbounds %struct.pvscsi_rings_state, %struct.pvscsi_rings_state* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %45, %37
  %58 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %59 = load i32, i32* @PVSCSI_REG_OFFSET_KICK_RW_IO, align 4
  %60 = call i32 @pvscsi_reg_write(%struct.pvscsi_softc* %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %57, %45
  br label %66

62:                                               ; preds = %33
  %63 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %64 = load i32, i32* @PVSCSI_REG_OFFSET_KICK_NON_RW_IO, align 4
  %65 = call i32 @pvscsi_reg_write(%struct.pvscsi_softc* %63, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %62, %61
  ret void
}

declare dso_local i32 @pvscsi_reg_write(%struct.pvscsi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
