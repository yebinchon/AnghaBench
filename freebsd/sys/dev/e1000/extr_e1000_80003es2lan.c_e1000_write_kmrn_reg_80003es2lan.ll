; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_write_kmrn_reg_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_write_kmrn_reg_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"e1000_write_kmrn_reg_80003es2lan\00", align 1
@E1000_KMRNCTRLSTA_OFFSET_SHIFT = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32)* @e1000_write_kmrn_reg_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = call i64 @e1000_acquire_mac_csr_80003es2lan(%struct.e1000_hw* %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %4, align 8
  br label %35

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %26 = load i32, i32* @E1000_KMRNCTRLSTA, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %25, i32 %26, i32 %27)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %30 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %29)
  %31 = call i32 @usec_delay(i32 2)
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %33 = call i32 @e1000_release_mac_csr_80003es2lan(%struct.e1000_hw* %32)
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %17, %15
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_acquire_mac_csr_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @e1000_release_mac_csr_80003es2lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
