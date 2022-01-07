; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32 }

@EI_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EEPROM offset too big\00", align 1
@ROMInterface = common dso_local global i32 0, align 4
@EI_REQ = common dso_local global i32 0, align 4
@EI_OP_RD = common dso_local global i32 0, align 4
@EI_OFFSET_SHIFT = common dso_local global i32 0, align 4
@SGE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"EEPROM read timeout : 0x%08x\0A\00", align 1
@EI_DATA = common dso_local global i32 0, align 4
@EI_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_softc*, i32)* @sge_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_read_eeprom(%struct.sge_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sge_softc* %0, %struct.sge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @EI_OFFSET, align 4
  %10 = icmp sle i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.sge_softc*, %struct.sge_softc** %4, align 8
  %14 = load i32, i32* @ROMInterface, align 4
  %15 = load i32, i32* @EI_REQ, align 4
  %16 = load i32, i32* @EI_OP_RD, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EI_OFFSET_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  %22 = call i32 @CSR_WRITE_4(%struct.sge_softc* %13, i32 %14, i32 %21)
  %23 = call i32 @DELAY(i32 500)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %39, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SGE_TIMEOUT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.sge_softc*, %struct.sge_softc** %4, align 8
  %30 = load i32, i32* @ROMInterface, align 4
  %31 = call i32 @CSR_READ_4(%struct.sge_softc* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @EI_REQ, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %42

37:                                               ; preds = %28
  %38 = call i32 @DELAY(i32 100)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %24

42:                                               ; preds = %36, %24
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SGE_TIMEOUT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.sge_softc*, %struct.sge_softc** %4, align 8
  %48 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 65535, i32* %3, align 4
  br label %58

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @EI_DATA, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @EI_DATA_SHIFT, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.sge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
