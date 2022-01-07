; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_write_nvm_spi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_write_nvm_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_ERR_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"e1000_write_nvm_spi\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@NVM_WRITE_OPCODE_SPI = common dso_local global i64 0, align 8
@NVM_WREN_OPCODE_SPI = common dso_local global i64 0, align 8
@NVM_A8_OPCODE_SPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_write_nvm_spi(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_nvm_info*, align 8
  %11 = alloca i32, align 4
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
  %17 = load i32, i32* @E1000_ERR_NVM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %19 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %22 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %28 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub nsw i64 %29, %30
  %32 = icmp sgt i64 %26, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33, %25, %4
  %37 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @E1000_ERR_NVM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %153

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %142, %40
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %151

45:                                               ; preds = %41
  %46 = load i64, i64* @NVM_WRITE_OPCODE_SPI, align 8
  store i64 %46, i64* %13, align 8
  %47 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %48 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %49, align 8
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %52 = bitcast %struct.e1000_hw* %51 to %struct.e1000_hw.1*
  %53 = call i32 %50(%struct.e1000_hw.1* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %153

58:                                               ; preds = %45
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %60 = call i32 @e1000_ready_nvm_eeprom(%struct.e1000_hw* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %65 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %66, align 8
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %69 = bitcast %struct.e1000_hw* %68 to %struct.e1000_hw.0*
  %70 = call i32 %67(%struct.e1000_hw.0* %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %153

72:                                               ; preds = %58
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %74 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %73)
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %76 = load i64, i64* @NVM_WREN_OPCODE_SPI, align 8
  %77 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %78 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %75, i64 %76, i32 %79)
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %82 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %81)
  %83 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %84 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %87, label %94

87:                                               ; preds = %72
  %88 = load i64, i64* %7, align 8
  %89 = icmp sge i64 %88, 128
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i64, i64* @NVM_A8_OPCODE_SPI, align 8
  %92 = load i64, i64* %13, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %13, align 8
  br label %94

94:                                               ; preds = %90, %87, %72
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %98 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %95, i64 %96, i32 %99)
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %12, align 8
  %104 = add nsw i64 %102, %103
  %105 = mul nsw i64 %104, 2
  %106 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %107 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %101, i64 %105, i32 %108)
  br label %110

110:                                              ; preds = %141, %94
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %8, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %110
  %115 = load i64*, i64** %9, align 8
  %116 = load i64, i64* %12, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %14, align 8
  %120 = ashr i64 %119, 8
  %121 = load i64, i64* %14, align 8
  %122 = shl i64 %121, 8
  %123 = or i64 %120, %122
  store i64 %123, i64* %14, align 8
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %125 = load i64, i64* %14, align 8
  %126 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %124, i64 %125, i32 16)
  %127 = load i64, i64* %12, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %12, align 8
  %131 = add nsw i64 %129, %130
  %132 = mul nsw i64 %131, 2
  %133 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %134 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = srem i64 %132, %135
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %114
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %140 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %139)
  br label %142

141:                                              ; preds = %114
  br label %110

142:                                              ; preds = %138, %110
  %143 = call i32 @msec_delay(i32 10)
  %144 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %145 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %146, align 8
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %149 = bitcast %struct.e1000_hw* %148 to %struct.e1000_hw.0*
  %150 = call i32 %147(%struct.e1000_hw.0* %149)
  br label %41

151:                                              ; preds = %41
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %63, %56, %36
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_ready_nvm_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_standby_nvm(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_shift_out_eec_bits(%struct.e1000_hw*, i64, i32) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
