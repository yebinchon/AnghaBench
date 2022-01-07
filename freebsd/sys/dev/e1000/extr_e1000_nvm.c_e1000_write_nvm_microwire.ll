; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_write_nvm_microwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_write_nvm_microwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [26 x i8] c"e1000_write_nvm_microwire\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@NVM_EWEN_OPCODE_MICROWIRE = common dso_local global i64 0, align 8
@NVM_WRITE_OPCODE_MICROWIRE = common dso_local global i64 0, align 8
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_DO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"NVM Write did not complete\0A\00", align 1
@NVM_EWDS_OPCODE_MICROWIRE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_write_nvm_microwire(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_nvm_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  store %struct.e1000_nvm_info* %16, %struct.e1000_nvm_info** %10, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %17 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
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
  %36 = load i32, i32* @E1000_ERR_NVM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %154

38:                                               ; preds = %31
  %39 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %40 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.0*
  %45 = call i32 %42(%struct.e1000_hw.0* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %154

50:                                               ; preds = %38
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %52 = call i32 @e1000_ready_nvm_eeprom(%struct.e1000_hw* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %145

56:                                               ; preds = %50
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %58 = load i64, i64* @NVM_EWEN_OPCODE_MICROWIRE, align 8
  %59 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %60 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 2
  %63 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %57, i64 %58, i64 %62)
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %65 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %66 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %64, i64 0, i64 %69)
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %72 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %71)
  br label %73

73:                                               ; preds = %125, %56
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %130

77:                                               ; preds = %73
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %79 = load i64, i64* @NVM_WRITE_OPCODE_MICROWIRE, align 8
  %80 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %81 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %78, i64 %79, i64 %82)
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %13, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %89 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %84, i64 %87, i64 %91)
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %93, i64 %97, i64 16)
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %100 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %99)
  store i64 0, i64* %14, align 8
  br label %101

101:                                              ; preds = %115, %77
  %102 = load i64, i64* %14, align 8
  %103 = icmp slt i64 %102, 200
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %106 = load i32, i32* @E1000_EECD, align 4
  %107 = call i32 @E1000_READ_REG(%struct.e1000_hw* %105, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @E1000_EECD_DO, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %118

113:                                              ; preds = %104
  %114 = call i32 @usec_delay(i32 50)
  br label %115

115:                                              ; preds = %113
  %116 = load i64, i64* %14, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %14, align 8
  br label %101

118:                                              ; preds = %112, %101
  %119 = load i64, i64* %14, align 8
  %120 = icmp eq i64 %119, 200
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @E1000_ERR_NVM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %11, align 4
  br label %145

125:                                              ; preds = %118
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %127 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %126)
  %128 = load i64, i64* %13, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %13, align 8
  br label %73

130:                                              ; preds = %73
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %132 = load i64, i64* @NVM_EWDS_OPCODE_MICROWIRE, align 8
  %133 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %134 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 2
  %137 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %131, i64 %132, i64 %136)
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %139 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %140 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %138, i64 0, i64 %143)
  br label %145

145:                                              ; preds = %130, %121, %55
  %146 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %147 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %148, align 8
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %151 = bitcast %struct.e1000_hw* %150 to %struct.e1000_hw.1*
  %152 = call i32 %149(%struct.e1000_hw.1* %151)
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %145, %48, %34
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_ready_nvm_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_shift_out_eec_bits(%struct.e1000_hw*, i64, i64) #1

declare dso_local i32 @e1000_standby_nvm(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
