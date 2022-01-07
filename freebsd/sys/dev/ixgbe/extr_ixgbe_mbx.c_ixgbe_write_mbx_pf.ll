; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_mbx.c_ixgbe_write_mbx_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_mbx.c_ixgbe_write_mbx_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ixgbe_write_mbx_pf\00", align 1
@IXGBE_PFMAILBOX_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*, i64, i64)* @ixgbe_write_mbx_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_write_mbx_pf(%struct.ixgbe_hw* %0, i32* %1, i64 %2, i64 %3) #0 {
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
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @ixgbe_obtain_mbx_lock_pf(%struct.ixgbe_hw* %12, i64 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %54

18:                                               ; preds = %4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @ixgbe_check_for_msg_pf(%struct.ixgbe_hw* %19, i64 %20)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @ixgbe_check_for_ack_pf(%struct.ixgbe_hw* %22, i64 %23)
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %39, %18
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @IXGBE_PFMBMEM(i64 %31)
  %33 = load i64, i64* %10, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw* %30, i32 %32, i64 %33, i32 %37)
  br label %39

39:                                               ; preds = %29
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %25

42:                                               ; preds = %25
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @IXGBE_PFMAILBOX(i64 %44)
  %46 = load i32, i32* @IXGBE_PFMAILBOX_STS, align 4
  %47 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %43, i32 %45, i32 %46)
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %42, %17
  %55 = load i64, i64* %9, align 8
  ret i64 %55
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_obtain_mbx_lock_pf(%struct.ixgbe_hw*, i64) #1

declare dso_local i32 @ixgbe_check_for_msg_pf(%struct.ixgbe_hw*, i64) #1

declare dso_local i32 @ixgbe_check_for_ack_pf(%struct.ixgbe_hw*, i64) #1

declare dso_local i32 @IXGBE_WRITE_REG_ARRAY(%struct.ixgbe_hw*, i32, i64, i32) #1

declare dso_local i32 @IXGBE_PFMBMEM(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_PFMAILBOX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
