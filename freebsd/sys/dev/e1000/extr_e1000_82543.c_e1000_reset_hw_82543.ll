; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_reset_hw_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_reset_hw_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"e1000_reset_hw_82543\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Issuing a global reset to 82543/82544 MAC\0A\00", align 1
@e1000_82543 = common dso_local global i64 0, align 8
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_reset_hw_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_reset_hw_82543(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = load i32, i32* @E1000_IMC, align 4
  %10 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %8, i32 %9, i32 -1)
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = load i32, i32* @E1000_RCTL, align 4
  %13 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %11, i32 %12, i32 0)
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = load i32, i32* @E1000_TCTL, align 4
  %16 = load i32, i32* @E1000_TCTL_PSP, align 4
  %17 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %14, i32 %15, i32 %16)
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %18)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @e1000_set_tbi_sbp_82543(%struct.e1000_hw* %20, i32 %21)
  %23 = call i32 @msec_delay(i32 10)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = load i32, i32* @E1000_CTRL, align 4
  %26 = call i32 @E1000_READ_REG(%struct.e1000_hw* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @e1000_82543, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = load i32, i32* @E1000_CTRL, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @E1000_CTRL_RST, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %35, i32 %36, i32 %39)
  br label %48

41:                                               ; preds = %1
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = load i32, i32* @E1000_CTRL, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @E1000_CTRL_RST, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @E1000_WRITE_REG_IO(%struct.e1000_hw* %42, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %41, %34
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %52, align 8
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = bitcast %struct.e1000_hw* %54 to %struct.e1000_hw.0*
  %56 = call i32 %53(%struct.e1000_hw.0* %55)
  %57 = call i32 @msec_delay(i32 2)
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = load i32, i32* @E1000_IMC, align 4
  %60 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %58, i32 %59, i32 -1)
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = load i32, i32* @E1000_ICR, align 4
  %63 = call i32 @E1000_READ_REG(%struct.e1000_hw* %61, i32 %62)
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_set_tbi_sbp_82543(%struct.e1000_hw*, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG_IO(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
