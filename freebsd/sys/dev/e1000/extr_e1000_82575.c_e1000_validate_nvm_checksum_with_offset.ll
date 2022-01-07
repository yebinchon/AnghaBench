; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_validate_nvm_checksum_with_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_validate_nvm_checksum_with_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*, i64, i32, i64*)* }
%struct.e1000_hw.0 = type opaque

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"e1000_validate_nvm_checksum_with_offset\00", align 1
@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@NVM_SUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"NVM Checksum Invalid\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_validate_nvm_checksum_with_offset(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %9, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %37, %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %15 = load i64, i64* %4, align 8
  %16 = add nsw i64 %14, %15
  %17 = add nsw i64 %16, 1
  %18 = icmp slt i64 %13, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.e1000_hw.0*, i64, i32, i64*)*, i32 (%struct.e1000_hw.0*, i64, i32, i64*)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.0*
  %27 = load i64, i64* %7, align 8
  %28 = call i32 %24(%struct.e1000_hw.0* %26, i64 %27, i32 1, i64* %8)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %49

33:                                               ; preds = %19
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %12

40:                                               ; preds = %12
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @NVM_SUM, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @E1000_ERR_NVM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %44, %31
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
