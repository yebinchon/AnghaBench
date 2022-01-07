; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_update_nvm_checksum_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_update_nvm_checksum_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"e1000_update_nvm_checksum_82571\00", align 1
@e1000_nvm_flash_hw = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_FLASH_UPDATES = common dso_local global i64 0, align 8
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_FLUPD = common dso_local global i32 0, align 4
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@E1000_FLOP = common dso_local global i32 0, align 4
@E1000_STM_OPCODE = common dso_local global i32 0, align 4
@E1000_HICR = common dso_local global i32 0, align 4
@E1000_HICR_FW_RESET_ENABLE = common dso_local global i32 0, align 4
@E1000_HICR_FW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_update_nvm_checksum_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_update_nvm_checksum_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = call i64 @e1000_update_nvm_checksum_generic(%struct.e1000_hw* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %2, align 8
  br label %102

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @e1000_nvm_flash_hw, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %22, i64* %2, align 8
  br label %102

23:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @E1000_FLASH_UPDATES, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = call i32 @msec_delay(i32 1)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = load i32, i32* @E1000_EECD, align 4
  %32 = call i32 @E1000_READ_REG(%struct.e1000_hw* %30, i32 %31)
  %33 = load i32, i32* @E1000_EECD_FLUPD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %24

41:                                               ; preds = %36, %24
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @E1000_FLASH_UPDATES, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* @E1000_ERR_NVM, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %2, align 8
  br label %102

48:                                               ; preds = %41
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = load i32, i32* @E1000_FLOP, align 4
  %51 = call i32 @E1000_READ_REG(%struct.e1000_hw* %49, i32 %50)
  %52 = and i32 %51, 65280
  %53 = load i32, i32* @E1000_STM_OPCODE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = load i32, i32* @E1000_HICR, align 4
  %58 = load i32, i32* @E1000_HICR_FW_RESET_ENABLE, align 4
  %59 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %56, i32 %57, i32 %58)
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %60)
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = load i32, i32* @E1000_HICR, align 4
  %64 = load i32, i32* @E1000_HICR_FW_RESET, align 4
  %65 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %55, %48
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = load i32, i32* @E1000_EECD, align 4
  %69 = call i32 @E1000_READ_REG(%struct.e1000_hw* %67, i32 %68)
  %70 = load i32, i32* @E1000_EECD_FLUPD, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %4, align 4
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = load i32, i32* @E1000_EECD, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %72, i32 %73, i32 %74)
  store i64 0, i64* %6, align 8
  br label %76

76:                                               ; preds = %90, %66
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @E1000_FLASH_UPDATES, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = call i32 @msec_delay(i32 1)
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = load i32, i32* @E1000_EECD, align 4
  %84 = call i32 @E1000_READ_REG(%struct.e1000_hw* %82, i32 %83)
  %85 = load i32, i32* @E1000_EECD_FLUPD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  br label %93

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %6, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %76

93:                                               ; preds = %88, %76
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @E1000_FLASH_UPDATES, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i64, i64* @E1000_ERR_NVM, align 8
  %99 = sub nsw i64 0, %98
  store i64 %99, i64* %2, align 8
  br label %102

100:                                              ; preds = %93
  %101 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %101, i64* %2, align 8
  br label %102

102:                                              ; preds = %100, %97, %45, %21, %12
  %103 = load i64, i64* %2, align 8
  ret i64 %103
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_update_nvm_checksum_generic(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
