; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_update_nvm_checksum_i210.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_i210.c_e1000_update_nvm_checksum_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"e1000_update_nvm_checksum_i210\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"NVM Read Error while updating checksum.\0A\00", align 1
@NVM_SUM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"NVM Write Error while updating checksum.\0A\00", align 1
@E1000_ERR_SWFW_SYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_update_nvm_checksum_i210(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %4, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = call i64 @e1000_read_nvm_eerd(%struct.e1000_hw* %8, i64 0, i32 1, i64* %6)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @E1000_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %88

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %19, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = bitcast %struct.e1000_hw* %21 to %struct.e1000_hw.0*
  %23 = call i64 %20(%struct.e1000_hw.0* %22)
  %24 = load i64, i64* @E1000_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %15
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @e1000_read_nvm_eerd(%struct.e1000_hw* %32, i64 %33, i32 1, i64* %6)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.1*
  %45 = call i32 %42(%struct.e1000_hw.1* %44)
  %46 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %88

47:                                               ; preds = %31
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %4, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %27

54:                                               ; preds = %27
  %55 = load i64, i64* @NVM_SUM, align 8
  %56 = load i64, i64* %4, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %4, align 8
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %60 = call i64 @e1000_write_nvm_srwr(%struct.e1000_hw* %58, i64 %59, i32 1, i64* %4)
  store i64 %60, i64* %3, align 8
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @E1000_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %54
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %68, align 8
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %71 = bitcast %struct.e1000_hw* %70 to %struct.e1000_hw.1*
  %72 = call i32 %69(%struct.e1000_hw.1* %71)
  %73 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %88

74:                                               ; preds = %54
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %78, align 8
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %81 = bitcast %struct.e1000_hw* %80 to %struct.e1000_hw.1*
  %82 = call i32 %79(%struct.e1000_hw.1* %81)
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %84 = call i64 @e1000_update_flash_i210(%struct.e1000_hw* %83)
  store i64 %84, i64* %3, align 8
  br label %87

85:                                               ; preds = %15
  %86 = load i64, i64* @E1000_ERR_SWFW_SYNC, align 8
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %85, %74
  br label %88

88:                                               ; preds = %87, %64, %37, %13
  %89 = load i64, i64* %3, align 8
  ret i64 %89
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_read_nvm_eerd(%struct.e1000_hw*, i64, i32, i64*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_write_nvm_srwr(%struct.e1000_hw*, i64, i32, i64*) #1

declare dso_local i64 @e1000_update_flash_i210(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
