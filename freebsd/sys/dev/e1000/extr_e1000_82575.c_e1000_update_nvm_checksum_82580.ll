; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_update_nvm_checksum_82580.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_update_nvm_checksum_82580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"e1000_update_nvm_checksum_82580\00", align 1
@NVM_COMPATIBILITY_REG_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"NVM Read Error while updating checksum compatibility bit.\0A\00", align 1
@NVM_COMPATIBILITY_BIT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"NVM Write Error while updating checksum compatibility bit.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_update_nvm_checksum_82580 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_update_nvm_checksum_82580(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64 (%struct.e1000_hw.1*, i32, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)** %11, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = bitcast %struct.e1000_hw* %13 to %struct.e1000_hw.1*
  %15 = load i32, i32* @NVM_COMPATIBILITY_REG_3, align 4
  %16 = call i64 %12(%struct.e1000_hw.1* %14, i32 %15, i32 1, i32* %5)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %62

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NVM_COMPATIBILITY_BIT_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @NVM_COMPATIBILITY_BIT_MASK, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %33, align 8
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = bitcast %struct.e1000_hw* %35 to %struct.e1000_hw.0*
  %37 = load i32, i32* @NVM_COMPATIBILITY_REG_3, align 4
  %38 = call i64 %34(%struct.e1000_hw.0* %36, i32 %37, i32 1, i32* %5)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %62

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %21
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @NVM_82580_LAN_FUNC_OFFSET(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @e1000_update_nvm_checksum_with_offset(%struct.e1000_hw* %51, i32 %52)
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %62

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %45

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61, %56, %41, %19
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @NVM_82580_LAN_FUNC_OFFSET(i32) #1

declare dso_local i64 @e1000_update_nvm_checksum_with_offset(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
