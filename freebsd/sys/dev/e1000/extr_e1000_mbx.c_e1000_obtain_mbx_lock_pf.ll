; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_obtain_mbx_lock_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_obtain_mbx_lock_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_ERR_MBX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"e1000_obtain_mbx_lock_pf\00", align 1
@E1000_P2VMAILBOX_PFU = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32)* @e1000_obtain_mbx_lock_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_obtain_mbx_lock_pf(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @E1000_ERR_MBX, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  store i32 10, i32* %7, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %29, %2
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @E1000_P2VMAILBOX(i32 %13)
  %15 = load i32, i32* @E1000_P2VMAILBOX_PFU, align 4
  %16 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %12, i32 %14, i32 %15)
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @E1000_P2VMAILBOX(i32 %18)
  %20 = call i32 @E1000_READ_REG(%struct.e1000_hw* %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @E1000_P2VMAILBOX_PFU, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %11
  %26 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %26, i32* %5, align 4
  br label %33

27:                                               ; preds = %11
  %28 = call i32 @usec_delay(i32 1000)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %7, align 4
  %32 = icmp sgt i32 %30, 0
  br i1 %32, label %11, label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_P2VMAILBOX(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
