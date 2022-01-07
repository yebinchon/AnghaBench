; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_mbx.c_ixgbe_write_mbx_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_mbx.c_ixgbe_write_mbx_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ixgbe_write_mbx_vf\00", align 1
@IXGBE_VFMBMEM = common dso_local global i32 0, align 4
@IXGBE_VFMAILBOX = common dso_local global i32 0, align 4
@IXGBE_VFMAILBOX_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*, i64, i64)* @ixgbe_write_mbx_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_write_mbx_vf(%struct.ixgbe_hw* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @UNREFERENCED_1PARAMETER(i64 %11)
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = call i64 @ixgbe_obtain_mbx_lock_vf(%struct.ixgbe_hw* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %51

19:                                               ; preds = %4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = call i32 @ixgbe_check_for_msg_vf(%struct.ixgbe_hw* %20, i32 0)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = call i32 @ixgbe_check_for_ack_vf(%struct.ixgbe_hw* %22, i32 0)
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %37, %19
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %30 = load i32, i32* @IXGBE_VFMBMEM, align 4
  %31 = load i64, i64* %10, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw* %29, i32 %30, i64 %31, i32 %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %10, align 8
  br label %24

40:                                               ; preds = %24
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %48 = load i32, i32* @IXGBE_VFMAILBOX, align 4
  %49 = load i32, i32* @IXGBE_VFMAILBOX_REQ, align 4
  %50 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %40, %18
  %52 = load i64, i64* %9, align 8
  ret i64 %52
}

declare dso_local i32 @UNREFERENCED_1PARAMETER(i64) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_obtain_mbx_lock_vf(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_check_for_msg_vf(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_check_for_ack_vf(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw*, i32, i64, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
