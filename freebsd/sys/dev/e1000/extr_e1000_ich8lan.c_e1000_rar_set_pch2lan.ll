; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_rar_set_pch2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_rar_set_pch2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"e1000_rar_set_pch2lan\00", align 1
@E1000_RAH_AV = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"SHRA[%d] might be locked by ME - FWSM=0x%8.8x\0A\00", align 1
@E1000_FWSM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to write receive address at index %d\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64*, i32)* @e1000_rar_set_pch2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_rar_set_pch2lan(%struct.e1000_hw* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load i64*, i64** %6, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 8
  %21 = or i32 %15, %20
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 2
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 16
  %27 = or i32 %21, %26
  %28 = load i64*, i64** %6, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 3
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 24
  %33 = or i32 %27, %32
  store i32 %33, i32* %8, align 4
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 4
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 5
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = shl i32 %41, 8
  %43 = or i32 %37, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %3
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %3
  %50 = load i32, i32* @E1000_RAH_AV, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @E1000_RAL(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %57, i32 %59, i32 %60)
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %63 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %62)
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @E1000_RAH(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %64, i32 %66, i32 %67)
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %70 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %69)
  %71 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %71, i32* %4, align 4
  br label %135

72:                                               ; preds = %53
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = icmp slt i32 %73, %78
  br i1 %79, label %80, label %129

80:                                               ; preds = %72
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %82 = call i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw* %81)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %130

86:                                               ; preds = %80
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i32 @E1000_SHRAL(i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %87, i32 %90, i32 %91)
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %94 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %93)
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, 1
  %98 = call i32 @E1000_SHRAH(i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %95, i32 %98, i32 %99)
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %102 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %101)
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %104 = call i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw* %103)
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %106, 1
  %108 = call i32 @E1000_SHRAL(i32 %107)
  %109 = call i32 @E1000_READ_REG(%struct.e1000_hw* %105, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %86
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sub nsw i32 %114, 1
  %116 = call i32 @E1000_SHRAH(i32 %115)
  %117 = call i32 @E1000_READ_REG(%struct.e1000_hw* %113, i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %121, i32* %4, align 4
  br label %135

122:                                              ; preds = %112, %86
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %123, 1
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %126 = load i32, i32* @E1000_FWSM, align 4
  %127 = call i32 @E1000_READ_REG(%struct.e1000_hw* %125, i32 %126)
  %128 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %122, %72
  br label %130

130:                                              ; preds = %129, %85
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %130, %120, %56
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_RAL(i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_RAH(i32) #1

declare dso_local i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_SHRAL(i32) #1

declare dso_local i32 @E1000_SHRAH(i32) #1

declare dso_local i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT2(i8*, i32, i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
