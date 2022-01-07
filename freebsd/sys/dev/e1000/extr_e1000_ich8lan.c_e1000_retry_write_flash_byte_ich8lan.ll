; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_retry_write_flash_byte_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_retry_write_flash_byte_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"e1000_retry_write_flash_byte_ich8lan\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Retrying Byte %2.2X at offset %u\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32)* @e1000_retry_write_flash_byte_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_retry_write_flash_byte_ich8lan(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @e1000_write_flash_byte_ich8lan(%struct.e1000_hw* %11, i32 %12, i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %4, align 8
  br label %48

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 100
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = call i32 @usec_delay(i32 100)
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @e1000_write_flash_byte_ich8lan(%struct.e1000_hw* %28, i32 %29, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @E1000_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %40

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %20

40:                                               ; preds = %35, %20
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 100
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* @E1000_ERR_NVM, align 8
  %45 = sub nsw i64 0, %44
  store i64 %45, i64* %4, align 8
  br label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %46, %43, %17
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_write_flash_byte_ich8lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @DEBUGOUT2(i8*, i32, i32) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
