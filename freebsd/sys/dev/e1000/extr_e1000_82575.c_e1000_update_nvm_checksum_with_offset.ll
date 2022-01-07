; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_update_nvm_checksum_with_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_update_nvm_checksum_with_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i64, i32, i64*)*, i64 (%struct.e1000_hw.1*, i64, i32, i64*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [38 x i8] c"e1000_update_nvm_checksum_with_offset\00", align 1
@NVM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"NVM Read Error while updating checksum.\0A\00", align 1
@NVM_SUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"NVM Write Error while updating checksum.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_update_nvm_checksum_with_offset(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %13, %14
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64 (%struct.e1000_hw.1*, i64, i32, i64*)*, i64 (%struct.e1000_hw.1*, i64, i32, i64*)** %21, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = bitcast %struct.e1000_hw* %23 to %struct.e1000_hw.1*
  %25 = load i64, i64* %7, align 8
  %26 = call i64 %22(%struct.e1000_hw.1* %24, i64 %25, i32 1, i64* %8)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %58

31:                                               ; preds = %17
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %11

38:                                               ; preds = %11
  %39 = load i64, i64* @NVM_SUM, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %6, align 8
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64 (%struct.e1000_hw.0*, i64, i32, i64*)*, i64 (%struct.e1000_hw.0*, i64, i32, i64*)** %45, align 8
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = bitcast %struct.e1000_hw* %47 to %struct.e1000_hw.0*
  %49 = load i64, i64* @NVM_CHECKSUM_REG, align 8
  %50 = load i64, i64* %4, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i64 %46(%struct.e1000_hw.0* %48, i64 %51, i32 1, i64* %6)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %38
  br label %58

58:                                               ; preds = %57, %29
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
