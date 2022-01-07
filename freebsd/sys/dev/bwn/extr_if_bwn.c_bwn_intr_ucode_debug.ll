; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_intr_ucode_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_intr_ucode_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__, %struct.bwn_softc* }
%struct.TYPE_2__ = type { i64 }
%struct.bwn_softc = type { i32 }

@BWN_SCRATCH = common dso_local global i32 0, align 4
@BWN_DEBUGINTR_REASON_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"BWN_DEBUGINTR_DUMP_SHM\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"BWN_DEBUGINTR_DUMP_REGS\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"BWN_DEBUGINTR_MARKER\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ucode debug unknown reason: %#x\0A\00", align 1
@BWN_DEBUGINTR_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_intr_ucode_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_intr_ucode_debug(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %5 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %6 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %5, i32 0, i32 1
  %7 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  store %struct.bwn_softc* %7, %struct.bwn_softc** %3, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %16 = load i32, i32* @BWN_SCRATCH, align 4
  %17 = load i32, i32* @BWN_DEBUGINTR_REASON_REG, align 4
  %18 = call i32 @bwn_shm_read_2(%struct.bwn_mac* %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %38 [
    i32 128, label %20
    i32 130, label %23
    i32 131, label %28
    i32 129, label %33
  ]

20:                                               ; preds = %14
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %22 = call i32 @bwn_handle_fwpanic(%struct.bwn_mac* %21)
  br label %44

23:                                               ; preds = %14
  %24 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %25 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %44

28:                                               ; preds = %14
  %29 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %30 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %44

33:                                               ; preds = %14
  %34 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %35 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %44

38:                                               ; preds = %14
  %39 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %40 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %33, %28, %23, %20
  %45 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %46 = load i32, i32* @BWN_SCRATCH, align 4
  %47 = load i32, i32* @BWN_DEBUGINTR_REASON_REG, align 4
  %48 = load i32, i32* @BWN_DEBUGINTR_ACK, align 4
  %49 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %13
  ret void
}

declare dso_local i32 @bwn_shm_read_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_handle_fwpanic(%struct.bwn_mac*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
