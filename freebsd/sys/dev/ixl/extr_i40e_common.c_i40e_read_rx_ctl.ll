; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_read_rx_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_read_rx_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_MAC_X722 = common dso_local global i64 0, align 8
@I40E_AQ_RC_EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_read_rx_ctl(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %9, i32* %5, align 4
  store i32 5, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %28, label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %23 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @I40E_MAC_X722, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i1 [ true, %15 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %47, %33
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @i40e_aq_rx_ctl_read_register(%struct.i40e_hw* %35, i32 %36, i32* %8, i32* null)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %39 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @I40E_AQ_RC_EAGAIN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = call i32 @i40e_msec_delay(i32 1)
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %7, align 4
  br label %34

51:                                               ; preds = %44, %34
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55, %52
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @rd32(%struct.i40e_hw* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @i40e_aq_rx_ctl_read_register(%struct.i40e_hw*, i32, i32*, i32*) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
