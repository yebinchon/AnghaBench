; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_nvm_microwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_nvm_microwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@NVM_READ_OPCODE_MICROWIRE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"e1000_read_nvm_microwire\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_read_nvm_microwire(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_nvm_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  store %struct.e1000_nvm_info* %15, %struct.e1000_nvm_info** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i64, i64* @NVM_READ_OPCODE_MICROWIRE, align 8
  store i64 %16, i64* %13, align 8
  %17 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %20 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %26 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %27, %28
  %30 = icmp sgt i64 %24, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %23, %4
  %35 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* @E1000_ERR_NVM, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %96

38:                                               ; preds = %31
  %39 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %40 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.1*
  %45 = call i64 %42(%struct.e1000_hw.1* %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i64, i64* %12, align 8
  store i64 %49, i64* %5, align 8
  br label %96

50:                                               ; preds = %38
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %52 = call i64 @e1000_ready_nvm_eeprom(%struct.e1000_hw* %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %87

56:                                               ; preds = %50
  store i64 0, i64* %11, align 8
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %65 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %62, i64 %63, i32 %66)
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %73 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %68, i64 %71, i32 %74)
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %77 = call i64 @e1000_shift_in_eec_bits(%struct.e1000_hw* %76, i32 16)
  %78 = load i64*, i64** %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %77, i64* %80, align 8
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %82 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %81)
  br label %83

83:                                               ; preds = %61
  %84 = load i64, i64* %11, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %11, align 8
  br label %57

86:                                               ; preds = %57
  br label %87

87:                                               ; preds = %86, %55
  %88 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %89 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %90, align 8
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %93 = bitcast %struct.e1000_hw* %92 to %struct.e1000_hw.0*
  %94 = call i32 %91(%struct.e1000_hw.0* %93)
  %95 = load i64, i64* %12, align 8
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %87, %48, %34
  %97 = load i64, i64* %5, align 8
  ret i64 %97
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_ready_nvm_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_shift_out_eec_bits(%struct.e1000_hw*, i64, i32) #1

declare dso_local i64 @e1000_shift_in_eec_bits(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_standby_nvm(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
