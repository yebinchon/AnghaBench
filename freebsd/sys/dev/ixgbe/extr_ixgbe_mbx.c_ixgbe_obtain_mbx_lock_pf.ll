; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_mbx.c_ixgbe_obtain_mbx_lock_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_mbx.c_ixgbe_obtain_mbx_lock_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_MBX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ixgbe_obtain_mbx_lock_pf\00", align 1
@IXGBE_PFMAILBOX_PFU = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_ERROR_POLLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to obtain mailbox lock for VF%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32)* @ixgbe_obtain_mbx_lock_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_obtain_mbx_lock_pf(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @IXGBE_ERR_MBX, align 4
  store i32 %7, i32* %5, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @IXGBE_PFMAILBOX(i32 %10)
  %12 = load i32, i32* @IXGBE_PFMAILBOX_PFU, align 4
  %13 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %9, i32 %11, i32 %12)
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @IXGBE_PFMAILBOX(i32 %15)
  %17 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @IXGBE_PFMAILBOX_PFU, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IXGBE_SUCCESS, align 4
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @IXGBE_ERROR_POLLING, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ERROR_REPORT2(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %22
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_PFMAILBOX(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
