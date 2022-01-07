; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_commit_fc_settings_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_commit_fc_settings_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_mac_info }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_mac_info = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"e1000_commit_fc_settings_generic\00", align 1
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_TXCW_FD = common dso_local global i32 0, align 4
@E1000_TXCW_PAUSE_MASK = common dso_local global i32 0, align 4
@E1000_TXCW_ASM_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@E1000_TXCW = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_commit_fc_settings_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_mac_info* %7, %struct.e1000_mac_info** %4, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %35 [
    i32 130, label %13
    i32 129, label %17
    i32 128, label %23
    i32 131, label %29
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @E1000_TXCW_ANE, align 4
  %15 = load i32, i32* @E1000_TXCW_FD, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %5, align 4
  br label %39

17:                                               ; preds = %1
  %18 = load i32, i32* @E1000_TXCW_ANE, align 4
  %19 = load i32, i32* @E1000_TXCW_FD, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @E1000_TXCW_PAUSE_MASK, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %39

23:                                               ; preds = %1
  %24 = load i32, i32* @E1000_TXCW_ANE, align 4
  %25 = load i32, i32* @E1000_TXCW_FD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %5, align 4
  br label %39

29:                                               ; preds = %1
  %30 = load i32, i32* @E1000_TXCW_ANE, align 4
  %31 = load i32, i32* @E1000_TXCW_FD, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @E1000_TXCW_PAUSE_MASK, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %5, align 4
  br label %39

35:                                               ; preds = %1
  %36 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %48

39:                                               ; preds = %29, %23, %17, %13
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = load i32, i32* @E1000_TXCW, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %39, %35
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
