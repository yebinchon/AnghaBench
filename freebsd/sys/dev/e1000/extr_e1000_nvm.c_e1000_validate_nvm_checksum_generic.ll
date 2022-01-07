; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_validate_nvm_checksum_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_validate_nvm_checksum_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i64, i32, i64*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [36 x i8] c"e1000_validate_nvm_checksum_generic\00", align 1
@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@NVM_SUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"NVM Checksum Invalid\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_validate_nvm_checksum_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %12 = add nsw i64 %11, 1
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %9
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (%struct.e1000_hw.0*, i64, i32, i64*)*, i64 (%struct.e1000_hw.0*, i64, i32, i64*)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.0*
  %22 = load i64, i64* %6, align 8
  %23 = call i64 %19(%struct.e1000_hw.0* %21, i64 %22, i32 1, i64* %7)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %2, align 8
  br label %46

29:                                               ; preds = %14
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %9

36:                                               ; preds = %9
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @NVM_SUM, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i64, i64* @E1000_ERR_NVM, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %2, align 8
  br label %46

44:                                               ; preds = %36
  %45 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %44, %40, %26
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
