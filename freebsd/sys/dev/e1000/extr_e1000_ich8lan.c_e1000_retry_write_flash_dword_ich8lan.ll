; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_retry_write_flash_dword_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_retry_write_flash_dword_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"e1000_retry_write_flash_dword_ich8lan\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Retrying Byte %8.8X at offset %u\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32)* @e1000_retry_write_flash_dword_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_retry_write_flash_dword_ich8lan(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @e1000_write_flash_data32_ich8lan(%struct.e1000_hw* %13, i32 %14, i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %4, align 8
  br label %50

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 100
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = call i32 @usec_delay(i32 100)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @e1000_write_flash_data32_ich8lan(%struct.e1000_hw* %30, i32 %31, i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @E1000_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %42

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %22

42:                                               ; preds = %37, %22
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 100
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* @E1000_ERR_NVM, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %4, align 8
  br label %50

48:                                               ; preds = %42
  %49 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %48, %45, %19
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_write_flash_data32_ich8lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @DEBUGOUT2(i8*, i32, i32) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
