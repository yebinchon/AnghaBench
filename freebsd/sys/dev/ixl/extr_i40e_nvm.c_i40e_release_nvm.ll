; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_release_nvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_nvm.c_i40e_release_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"i40e_release_nvm\00", align 1
@I40E_NVM_RESOURCE_ID = common dso_local global i32 0, align 4
@I40E_ERR_ADMIN_QUEUE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_release_nvm(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %5 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %5, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %8 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %15 = load i32, i32* @I40E_NVM_RESOURCE_ID, align 4
  %16 = call i32 @i40e_aq_release_resource(%struct.i40e_hw* %14, i32 %15, i32 0, i32* null)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %30, %13
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @I40E_ERR_ADMIN_QUEUE_TIMEOUT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %22, %26
  br label %28

28:                                               ; preds = %21, %17
  %29 = phi i1 [ false, %17 ], [ %27, %21 ]
  br i1 %29, label %30, label %37

30:                                               ; preds = %28
  %31 = call i32 @i40e_msec_delay(i32 1)
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %33 = load i32, i32* @I40E_NVM_RESOURCE_ID, align 4
  %34 = call i32 @i40e_aq_release_resource(%struct.i40e_hw* %32, i32 %33, i32 0, i32* null)
  store i32 %34, i32* %3, align 4
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %17

37:                                               ; preds = %12, %28
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_aq_release_resource(%struct.i40e_hw*, i32, i32, i32*) #1

declare dso_local i32 @i40e_msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
