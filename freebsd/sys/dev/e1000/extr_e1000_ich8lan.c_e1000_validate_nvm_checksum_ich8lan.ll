; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_validate_nvm_checksum_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_validate_nvm_checksum_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"e1000_validate_nvm_checksum_ich8lan\00", align 1
@NVM_COMPAT = common dso_local global i32 0, align 4
@NVM_COMPAT_VALID_CSUM = common dso_local global i32 0, align 4
@NVM_FUTURE_INIT_WORD1 = common dso_local global i32 0, align 4
@NVM_FUTURE_INIT_WORD1_VALID_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_validate_nvm_checksum_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_validate_nvm_checksum_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %16 [
    i32 129, label %13
    i32 128, label %13
    i32 130, label %13
  ]

13:                                               ; preds = %1, %1, %1
  %14 = load i32, i32* @NVM_COMPAT, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @NVM_COMPAT_VALID_CSUM, align 4
  store i32 %15, i32* %7, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @NVM_FUTURE_INIT_WORD1, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @NVM_FUTURE_INIT_WORD1_VALID_CSUM, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i64 (%struct.e1000_hw.2*, i32, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32, i32*)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.2*
  %27 = load i32, i32* %6, align 4
  %28 = call i64 %24(%struct.e1000_hw.2* %26, i32 %27, i32 1, i32* %5)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %2, align 8
  br label %72

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %69, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64 (%struct.e1000_hw.1*, i32, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32, i32*)** %45, align 8
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = bitcast %struct.e1000_hw* %47 to %struct.e1000_hw.1*
  %49 = load i32, i32* %6, align 4
  %50 = call i64 %46(%struct.e1000_hw.1* %48, i32 %49, i32 1, i32* %5)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i64, i64* %4, align 8
  store i64 %54, i64* %2, align 8
  br label %72

55:                                               ; preds = %38
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %59, align 8
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = bitcast %struct.e1000_hw* %61 to %struct.e1000_hw.0*
  %63 = call i64 %60(%struct.e1000_hw.0* %62)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i64, i64* %4, align 8
  store i64 %67, i64* %2, align 8
  br label %72

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %33
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = call i64 @e1000_validate_nvm_checksum_generic(%struct.e1000_hw* %70)
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %69, %66, %53, %31
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_validate_nvm_checksum_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
