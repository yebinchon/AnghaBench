; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_acquire_nvm_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_acquire_nvm_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"e1000_acquire_nvm_82575\00", align 1
@E1000_SWFW_EEP_SM = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i64 0, align 8
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_BLOCKED = common dso_local global i32 0, align 4
@E1000_EECD_ABORT = common dso_local global i32 0, align 4
@E1000_EECD_TIMEOUT = common dso_local global i32 0, align 4
@E1000_EECD_ERROR_CLR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Nvm bit banging access error detected and cleared.\0A\00", align 1
@e1000_82580 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_acquire_nvm_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_acquire_nvm_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %6, i64* %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = load i32, i32* @E1000_SWFW_EEP_SM, align 4
  %10 = call i64 @e1000_acquire_swfw_sync(%struct.e1000_hw* %8, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @e1000_i350, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %14
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = load i32, i32* @E1000_EECD, align 4
  %24 = call i32 @E1000_READ_REG(%struct.e1000_hw* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @E1000_EECD_BLOCKED, align 4
  %27 = load i32, i32* @E1000_EECD_ABORT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @E1000_EECD_TIMEOUT, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = load i32, i32* @E1000_EECD, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @E1000_EECD_ERROR_CLR, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %34, i32 %35, i32 %38)
  %40 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %33, %21
  br label %42

42:                                               ; preds = %41, %14
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @e1000_82580, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = load i32, i32* @E1000_EECD, align 4
  %52 = call i32 @E1000_READ_REG(%struct.e1000_hw* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @E1000_EECD_BLOCKED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = load i32, i32* @E1000_EECD, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @E1000_EECD_BLOCKED, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %58, i32 %59, i32 %62)
  %64 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %57, %49
  br label %66

66:                                               ; preds = %65, %42
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %68 = call i64 @e1000_acquire_nvm_generic(%struct.e1000_hw* %67)
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %3, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = load i32, i32* @E1000_SWFW_EEP_SM, align 4
  %74 = call i32 @e1000_release_swfw_sync(%struct.e1000_hw* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75, %13
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_acquire_swfw_sync(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_acquire_nvm_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_release_swfw_sync(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
