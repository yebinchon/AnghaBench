; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_init_shared_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_init_shared_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, %struct.TYPE_4__, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"i40e_init_shared_code\00", align 1
@I40E_ERR_DEVICE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@I40E_PFGEN_PORTNUM = common dso_local global i32 0, align 4
@I40E_PFGEN_PORTNUM_PORT_NUM_MASK = common dso_local global i32 0, align 4
@I40E_PFGEN_PORTNUM_PORT_NUM_SHIFT = common dso_local global i32 0, align 4
@I40E_GLPCI_CAPSUP = common dso_local global i32 0, align 4
@I40E_GLPCI_CAPSUP_ARI_EN_MASK = common dso_local global i32 0, align 4
@I40E_GLPCI_CAPSUP_ARI_EN_SHIFT = common dso_local global i32 0, align 4
@I40E_PF_FUNC_RID = common dso_local global i32 0, align 4
@I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE = common dso_local global i32 0, align 4
@I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_init_shared_code(%struct.i40e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  %8 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %8, i32* %4, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %11 = call i32 @i40e_set_mac_type(%struct.i40e_hw* %10)
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %17 [
    i32 128, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %1, %1
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @I40E_ERR_DEVICE_NOT_SUPPORTED, align 4
  store i32 %18, i32* %2, align 4
  br label %80

19:                                               ; preds = %16
  %20 = load i32, i32* @TRUE, align 4
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %25 = load i32, i32* @I40E_PFGEN_PORTNUM, align 4
  %26 = call i32 @rd32(%struct.i40e_hw* %24, i32 %25)
  %27 = load i32, i32* @I40E_PFGEN_PORTNUM_PORT_NUM_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @I40E_PFGEN_PORTNUM_PORT_NUM_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %35 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %37 = load i32, i32* @I40E_GLPCI_CAPSUP, align 4
  %38 = call i32 @rd32(%struct.i40e_hw* %36, i32 %37)
  %39 = load i32, i32* @I40E_GLPCI_CAPSUP_ARI_EN_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @I40E_GLPCI_CAPSUP_ARI_EN_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %6, align 4
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %44 = load i32, i32* @I40E_PF_FUNC_RID, align 4
  %45 = call i32 @rd32(%struct.i40e_hw* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %19
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 255
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %54 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %62

55:                                               ; preds = %19
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 7
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %61 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %55, %48
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %64 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 129
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load i32, i32* @I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE, align 4
  %70 = load i32, i32* @I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %73 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %68, %62
  %77 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %78 = call i32 @i40e_init_nvm(%struct.i40e_hw* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %17
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_set_mac_type(%struct.i40e_hw*) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_init_nvm(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
