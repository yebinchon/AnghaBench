; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_update_nvm_checksum_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_update_nvm_checksum_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i64, i32, i64*)*, i64 (%struct.e1000_hw.1*, i64, i32, i64*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [26 x i8] c"e1000_update_nvm_checksum\00", align 1
@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"NVM Read Error while updating checksum.\0A\00", align 1
@NVM_SUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"NVM Write Error while updating checksum.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_update_nvm_checksum_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64 (%struct.e1000_hw.1*, i64, i32, i64*)*, i64 (%struct.e1000_hw.1*, i64, i32, i64*)** %17, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = bitcast %struct.e1000_hw* %19 to %struct.e1000_hw.1*
  %21 = load i64, i64* %6, align 8
  %22 = call i64 %18(%struct.e1000_hw.1* %20, i64 %21, i32 1, i64* %7)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %2, align 8
  br label %54

28:                                               ; preds = %13
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %9

35:                                               ; preds = %9
  %36 = load i64, i64* @NVM_SUM, align 8
  %37 = load i64, i64* %5, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %5, align 8
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64 (%struct.e1000_hw.0*, i64, i32, i64*)*, i64 (%struct.e1000_hw.0*, i64, i32, i64*)** %42, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = bitcast %struct.e1000_hw* %44 to %struct.e1000_hw.0*
  %46 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %47 = call i64 %43(%struct.e1000_hw.0* %45, i64 %46, i32 1, i64* %5)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %35
  %53 = load i64, i64* %4, align 8
  store i64 %53, i64* %2, align 8
  br label %54

54:                                               ; preds = %52, %25
  %55 = load i64, i64* %2, align 8
  ret i64 %55
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
