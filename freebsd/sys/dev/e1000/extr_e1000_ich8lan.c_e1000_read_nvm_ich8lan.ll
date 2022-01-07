; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_read_nvm_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_read_nvm_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_nvm_info }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.e1000_nvm_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"e1000_read_nvm_ich8lan\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not detect valid bank, assuming bank 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"NVM read error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_read_nvm_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_read_nvm_ich8lan(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.e1000_nvm_info*, align 8
  %10 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 1
  store %struct.e1000_nvm_info* %17, %struct.e1000_nvm_info** %9, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %20, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %21 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %21, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %22 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %25 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %39, label %28

28:                                               ; preds = %4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %31 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub nsw i64 %32, %33
  %35 = icmp sgt i64 %29, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36, %28, %4
  %40 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @E1000_ERR_NVM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %126

43:                                               ; preds = %36
  %44 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %45 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %46, align 8
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %49 = bitcast %struct.e1000_hw* %48 to %struct.e1000_hw.1*
  %50 = call i32 %47(%struct.e1000_hw.1* %49)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %52 = call i32 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw* %51, i64* %13)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @E1000_SUCCESS, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %13, align 8
  br label %58

58:                                               ; preds = %56, %43
  %59 = load i64, i64* %13, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %63 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  br label %66

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i64 [ %64, %61 ], [ 0, %65 ]
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %11, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %11, align 8
  %71 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %71, i32* %12, align 4
  store i64 0, i64* %14, align 8
  br label %72

72:                                               ; preds = %115, %66
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %118

76:                                               ; preds = %72
  %77 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %78 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %14, align 8
  %82 = add nsw i64 %80, %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %76
  %88 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %89 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %14, align 8
  %93 = add nsw i64 %91, %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64 %96, i64* %99, align 8
  br label %114

100:                                              ; preds = %76
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %14, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @e1000_read_flash_word_ich8lan(%struct.e1000_hw* %101, i64 %104, i64* %15)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %118

109:                                              ; preds = %100
  %110 = load i64, i64* %15, align 8
  %111 = load i64*, i64** %8, align 8
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  store i64 %110, i64* %113, align 8
  br label %114

114:                                              ; preds = %109, %87
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %14, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %14, align 8
  br label %72

118:                                              ; preds = %108, %72
  %119 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %120 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %121, align 8
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %124 = bitcast %struct.e1000_hw* %123 to %struct.e1000_hw.0*
  %125 = call i32 %122(%struct.e1000_hw.0* %124)
  br label %126

126:                                              ; preds = %118, %39
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %12, align 4
  ret i32 %133
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @e1000_read_flash_word_ich8lan(%struct.e1000_hw*, i64, i64*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
