; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_reset_hw_82540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_reset_hw_82540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"e1000_reset_hw_82540\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Issuing a global reset to 82540/82545/82546 MAC\0A\00", align 1
@E1000_CTRL_DUP = common dso_local global i32 0, align 4
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@E1000_MANC = common dso_local global i32 0, align 4
@E1000_MANC_ARP_EN = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_reset_hw_82540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_reset_hw_82540(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = load i32, i32* @E1000_IMC, align 4
  %11 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %9, i32 %10, i32 -1)
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = load i32, i32* @E1000_RCTL, align 4
  %14 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %12, i32 %13, i32 0)
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = load i32, i32* @E1000_TCTL, align 4
  %17 = load i32, i32* @E1000_TCTL_PSP, align 4
  %18 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %15, i32 %16, i32 %17)
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %19)
  %21 = call i32 @msec_delay(i32 10)
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = load i32, i32* @E1000_CTRL, align 4
  %24 = call i32 @E1000_READ_REG(%struct.e1000_hw* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %37 [
    i32 129, label %30
    i32 128, label %30
  ]

30:                                               ; preds = %1, %1
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = load i32, i32* @E1000_CTRL_DUP, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @E1000_CTRL_RST, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %31, i32 %32, i32 %35)
  br label %44

37:                                               ; preds = %1
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = load i32, i32* @E1000_CTRL, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @E1000_CTRL_RST, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @E1000_WRITE_REG_IO(%struct.e1000_hw* %38, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %30
  %45 = call i32 @msec_delay(i32 5)
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = load i32, i32* @E1000_MANC, align 4
  %48 = call i32 @E1000_READ_REG(%struct.e1000_hw* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @E1000_MANC_ARP_EN, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %54 = load i32, i32* @E1000_MANC, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %53, i32 %54, i32 %55)
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = load i32, i32* @E1000_IMC, align 4
  %59 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %57, i32 %58, i32 -1)
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = load i32, i32* @E1000_ICR, align 4
  %62 = call i32 @E1000_READ_REG(%struct.e1000_hw* %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG_IO(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
