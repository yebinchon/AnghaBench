; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_flush_pcie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_flush_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ixl_vf = type { i32 }

@I40E_PF_PCI_CIAA = common dso_local global i32 0, align 4
@IXL_PF_PCI_CIAA_VF_DEVICE_STATUS = common dso_local global i32 0, align 4
@I40E_PF_PCI_CIAA_VF_NUM_SHIFT = common dso_local global i32 0, align 4
@IXL_VF_RESET_TIMEOUT = common dso_local global i32 0, align 4
@I40E_PF_PCI_CIAD = common dso_local global i32 0, align 4
@IXL_PF_PCI_CIAD_VF_TRANS_PENDING_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_pf*, %struct.ixl_vf*)* @ixl_flush_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_flush_pcie(%struct.ixl_pf* %0, %struct.ixl_vf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixl_pf*, align 8
  %5 = alloca %struct.ixl_vf*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %4, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %5, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 0
  store %struct.i40e_hw* %11, %struct.i40e_hw** %6, align 8
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %13 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %17 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %21 = load i32, i32* @I40E_PF_PCI_CIAA, align 4
  %22 = load i32, i32* @IXL_PF_PCI_CIAA_VF_DEVICE_STATUS, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @I40E_PF_PCI_CIAA_VF_NUM_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = call i32 @wr32(%struct.i40e_hw* %20, i32 %21, i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %43, %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @IXL_VF_RESET_TIMEOUT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %34 = load i32, i32* @I40E_PF_PCI_CIAD, align 4
  %35 = call i32 @rd32(%struct.i40e_hw* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @IXL_PF_PCI_CIAD_VF_TRANS_PENDING_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %48

41:                                               ; preds = %32
  %42 = call i32 @DELAY(i32 1)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
