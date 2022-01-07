; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_rar_set_pch_lpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_rar_set_pch_lpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"e1000_rar_set_pch_lpt\00", align 1
@E1000_RAH_AV = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_FWSM_WLOCK_MAC_MASK = common dso_local global i32 0, align 4
@E1000_FWSM_WLOCK_MAC_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to write receive address at index %d\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64*, i32)* @e1000_rar_set_pch_lpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_rar_set_pch_lpt(%struct.e1000_hw* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load i64*, i64** %6, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 8
  %22 = or i32 %16, %21
  %23 = load i64*, i64** %6, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 16
  %28 = or i32 %22, %27
  %29 = load i64*, i64** %6, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 3
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 24
  %34 = or i32 %28, %33
  store i32 %34, i32* %8, align 4
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 4
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64*, i64** %6, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 5
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 8
  %44 = or i32 %38, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %3
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47, %3
  %51 = load i32, i32* @E1000_RAH_AV, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @E1000_RAL(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %58, i32 %60, i32 %61)
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %64 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %63)
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @E1000_RAH(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %65, i32 %67, i32 %68)
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %71 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %70)
  %72 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %72, i32* %4, align 4
  br label %149

73:                                               ; preds = %54
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %143

80:                                               ; preds = %73
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %82 = load i32, i32* @E1000_FWSM, align 4
  %83 = call i32 @E1000_READ_REG(%struct.e1000_hw* %81, i32 %82)
  %84 = load i32, i32* @E1000_FWSM_WLOCK_MAC_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* @E1000_FWSM_WLOCK_MAC_SHIFT, align 4
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %144

92:                                               ; preds = %80
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %142

99:                                               ; preds = %95, %92
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %101 = call i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw* %100)
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %144

105:                                              ; preds = %99
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %107, 1
  %109 = call i32 @E1000_SHRAL_PCH_LPT(i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %106, i32 %109, i32 %110)
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %113 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %112)
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %115, 1
  %117 = call i32 @E1000_SHRAH_PCH_LPT(i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %114, i32 %117, i32 %118)
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %121 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %120)
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %123 = call i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw* %122)
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sub nsw i32 %125, 1
  %127 = call i32 @E1000_SHRAL_PCH_LPT(i32 %126)
  %128 = call i32 @E1000_READ_REG(%struct.e1000_hw* %124, i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %105
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sub nsw i32 %133, 1
  %135 = call i32 @E1000_SHRAH_PCH_LPT(i32 %134)
  %136 = call i32 @E1000_READ_REG(%struct.e1000_hw* %132, i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %140, i32* %4, align 4
  br label %149

141:                                              ; preds = %131, %105
  br label %142

142:                                              ; preds = %141, %95
  br label %143

143:                                              ; preds = %142, %73
  br label %144

144:                                              ; preds = %143, %104, %91
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %139, %57
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_RAL(i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_RAH(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_SHRAL_PCH_LPT(i32) #1

declare dso_local i32 @E1000_SHRAH_PCH_LPT(i32) #1

declare dso_local i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
