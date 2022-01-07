; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_obtain_mbx_lock_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mbx.c_e1000_obtain_mbx_lock_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_ERR_MBX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"e1000_obtain_mbx_lock_vf\00", align 1
@E1000_V2PMAILBOX_VFU = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_obtain_mbx_lock_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_obtain_mbx_lock_vf(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load i32, i32* @E1000_ERR_MBX, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  store i32 10, i32* %4, align 4
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %22, %1
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = call i32 @E1000_V2PMAILBOX(i32 0)
  %11 = load i32, i32* @E1000_V2PMAILBOX_VFU, align 4
  %12 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %9, i32 %10, i32 %11)
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = call i32 @e1000_read_v2p_mailbox(%struct.e1000_hw* %13)
  %15 = load i32, i32* @E1000_V2PMAILBOX_VFU, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %8
  %21 = call i32 @usec_delay(i32 1000)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = icmp sgt i32 %23, 0
  br i1 %25, label %8, label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_V2PMAILBOX(i32) #1

declare dso_local i32 @e1000_read_v2p_mailbox(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
