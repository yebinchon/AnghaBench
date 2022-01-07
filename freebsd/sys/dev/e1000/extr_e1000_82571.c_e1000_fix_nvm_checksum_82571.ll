; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_fix_nvm_checksum_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_fix_nvm_checksum_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"e1000_fix_nvm_checksum_82571\00", align 1
@e1000_nvm_flash_hw = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_fix_nvm_checksum_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_fix_nvm_checksum_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_nvm_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_nvm_info* %8, %struct.e1000_nvm_info** %4, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_nvm_flash_hw, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %16, i64* %2, align 8
  br label %79

17:                                               ; preds = %1
  %18 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64 (%struct.e1000_hw.2*, i32, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32, i32*)** %20, align 8
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = bitcast %struct.e1000_hw* %22 to %struct.e1000_hw.2*
  %24 = call i64 %21(%struct.e1000_hw.2* %23, i32 16, i32 1, i32* %6)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %2, align 8
  br label %79

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 16
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %77, label %33

33:                                               ; preds = %29
  %34 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %35 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64 (%struct.e1000_hw.2*, i32, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32, i32*)** %36, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = bitcast %struct.e1000_hw* %38 to %struct.e1000_hw.2*
  %40 = call i64 %37(%struct.e1000_hw.2* %39, i32 35, i32 1, i32* %6)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %2, align 8
  br label %79

45:                                               ; preds = %33
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 32768
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, 32768
  store i32 %51, i32* %6, align 4
  %52 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %53 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64 (%struct.e1000_hw.1*, i32, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)** %54, align 8
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = bitcast %struct.e1000_hw* %56 to %struct.e1000_hw.1*
  %58 = call i64 %55(%struct.e1000_hw.1* %57, i32 35, i32 1, i32* %6)
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i64, i64* %5, align 8
  store i64 %62, i64* %2, align 8
  br label %79

63:                                               ; preds = %49
  %64 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %66, align 8
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = bitcast %struct.e1000_hw* %68 to %struct.e1000_hw.0*
  %70 = call i64 %67(%struct.e1000_hw.0* %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* %2, align 8
  br label %79

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %45
  br label %77

77:                                               ; preds = %76, %29
  %78 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %78, i64* %2, align 8
  br label %79

79:                                               ; preds = %77, %73, %61, %43, %27, %15
  %80 = load i64, i64* %2, align 8
  ret i64 %80
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
