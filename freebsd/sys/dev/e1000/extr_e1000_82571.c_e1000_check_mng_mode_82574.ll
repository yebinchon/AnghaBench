; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_check_mng_mode_82574.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_check_mng_mode_82574.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [27 x i8] c"e1000_check_mng_mode_82574\00", align 1
@NVM_INIT_CONTROL2_REG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@E1000_NVM_INIT_CTRL2_MNGM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_check_mng_mode_82574 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_check_mng_mode_82574(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %10, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = bitcast %struct.e1000_hw* %12 to %struct.e1000_hw.0*
  %14 = load i32, i32* @NVM_INIT_CONTROL2_REG, align 4
  %15 = call i64 %11(%struct.e1000_hw.0* %13, i32 %14, i32 1, i32* %4)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @E1000_NVM_INIT_CTRL2_MNGM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %18
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
