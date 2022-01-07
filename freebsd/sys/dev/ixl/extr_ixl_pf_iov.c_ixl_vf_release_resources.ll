; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ixl_vf = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*)* @ixl_vf_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_release_resources(%struct.ixl_pf* %0, %struct.ixl_vf* %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ixl_vf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %4, align 8
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %9, i32 0, i32 0
  store %struct.i40e_hw* %10, %struct.i40e_hw** %5, align 8
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %12 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %13 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %12, i32 0, i32 0
  %14 = call i32 @ixl_vf_vsi_release(%struct.ixl_pf* %11, %struct.TYPE_4__* %13)
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %16 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %17 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @I40E_VFINT_DYN_CTL0(i32 %18)
  %20 = call i32 @ixl_vf_disable_queue_intr(%struct.i40e_hw* %15, i32 %19)
  store i32 1, i32* %8, align 4
  br label %21

21:                                               ; preds = %38, %2
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %24 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %32 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @IXL_VFINT_DYN_CTLN_REG(%struct.i40e_hw* %29, i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ixl_vf_disable_queue_intr(%struct.i40e_hw* %35, i32 %36)
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %43 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %44 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @I40E_VPINT_LNKLST0(i32 %45)
  %47 = call i32 @ixl_vf_unregister_intr(%struct.i40e_hw* %42, i32 %46)
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %65, %41
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %51 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %59 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @IXL_VPINT_LNKLSTN_REG(%struct.i40e_hw* %56, i32 %57, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ixl_vf_unregister_intr(%struct.i40e_hw* %62, i32 %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %48

68:                                               ; preds = %48
  %69 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %70 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %73 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  ret void
}

declare dso_local i32 @ixl_vf_vsi_release(%struct.ixl_pf*, %struct.TYPE_4__*) #1

declare dso_local i32 @ixl_vf_disable_queue_intr(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_VFINT_DYN_CTL0(i32) #1

declare dso_local i32 @IXL_VFINT_DYN_CTLN_REG(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @ixl_vf_unregister_intr(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_VPINT_LNKLST0(i32) #1

declare dso_local i32 @IXL_VPINT_LNKLSTN_REG(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
