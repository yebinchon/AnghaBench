; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_nvm_spi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_nvm_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@NVM_READ_OPCODE_SPI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"e1000_read_nvm_spi\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@NVM_A8_OPCODE_SPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_read_nvm_spi(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_nvm_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  store %struct.e1000_nvm_info* %16, %struct.e1000_nvm_info** %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i64, i64* @NVM_READ_OPCODE_SPI, align 8
  store i64 %17, i64* %14, align 8
  %18 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %21 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %27 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub nsw i64 %28, %29
  %31 = icmp sgt i64 %25, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %24, %4
  %36 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* @E1000_ERR_NVM, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %113

39:                                               ; preds = %32
  %40 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %41 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %42, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %45 = bitcast %struct.e1000_hw* %44 to %struct.e1000_hw.1*
  %46 = call i64 %43(%struct.e1000_hw.1* %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i64, i64* %12, align 8
  store i64 %50, i64* %5, align 8
  br label %113

51:                                               ; preds = %39
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %53 = call i64 @e1000_ready_nvm_eeprom(%struct.e1000_hw* %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %104

57:                                               ; preds = %51
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %59 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %58)
  %60 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %61 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load i64, i64* %7, align 8
  %66 = icmp sge i64 %65, 128
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i64, i64* @NVM_A8_OPCODE_SPI, align 8
  %69 = load i64, i64* %14, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %14, align 8
  br label %71

71:                                               ; preds = %67, %64, %57
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %75 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %72, i64 %73, i32 %76)
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = mul nsw i64 %79, 2
  %81 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %82 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %78, i64 %80, i32 %83)
  store i64 0, i64* %11, align 8
  br label %85

85:                                               ; preds = %100, %71
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %91 = call i64 @e1000_shift_in_eec_bits(%struct.e1000_hw* %90, i32 16)
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %13, align 8
  %93 = ashr i64 %92, 8
  %94 = load i64, i64* %13, align 8
  %95 = shl i64 %94, 8
  %96 = or i64 %93, %95
  %97 = load i64*, i64** %9, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64 %96, i64* %99, align 8
  br label %100

100:                                              ; preds = %89
  %101 = load i64, i64* %11, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %11, align 8
  br label %85

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103, %56
  %105 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %106 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %107, align 8
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %110 = bitcast %struct.e1000_hw* %109 to %struct.e1000_hw.0*
  %111 = call i32 %108(%struct.e1000_hw.0* %110)
  %112 = load i64, i64* %12, align 8
  store i64 %112, i64* %5, align 8
  br label %113

113:                                              ; preds = %104, %49, %35
  %114 = load i64, i64* %5, align 8
  ret i64 %114
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_ready_nvm_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_standby_nvm(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_shift_out_eec_bits(%struct.e1000_hw*, i64, i32) #1

declare dso_local i64 @e1000_shift_in_eec_bits(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
