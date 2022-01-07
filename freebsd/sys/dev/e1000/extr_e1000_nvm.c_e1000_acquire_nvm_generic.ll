; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_acquire_nvm_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_acquire_nvm_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_EECD = common dso_local global i32 0, align 4
@E1000_NVM_GRANT_ATTEMPTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"e1000_acquire_nvm_generic\00", align 1
@E1000_EECD_REQ = common dso_local global i32 0, align 4
@E1000_EECD_GNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not acquire NVM grant\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_acquire_nvm_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = load i32, i32* @E1000_EECD, align 4
  %8 = call i32 @E1000_READ_REG(%struct.e1000_hw* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i64, i64* @E1000_NVM_GRANT_ATTEMPTS, align 8
  store i64 %9, i64* %5, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = load i32, i32* @E1000_EECD, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @E1000_EECD_REQ, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %11, i32 %12, i32 %15)
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = load i32, i32* @E1000_EECD, align 4
  %19 = call i32 @E1000_READ_REG(%struct.e1000_hw* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %29, %1
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @E1000_EECD_GNT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %36

29:                                               ; preds = %23
  %30 = call i32 @usec_delay(i32 5)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = load i32, i32* @E1000_EECD, align 4
  %33 = call i32 @E1000_READ_REG(%struct.e1000_hw* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %5, align 8
  br label %20

36:                                               ; preds = %28, %20
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @E1000_EECD_REQ, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = load i32, i32* @E1000_EECD, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %44, i32 %45, i32 %46)
  %48 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i64, i64* @E1000_ERR_NVM, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %2, align 8
  br label %53

51:                                               ; preds = %36
  %52 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %52, i64* %2, align 8
  br label %53

53:                                               ; preds = %51, %39
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
