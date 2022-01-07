; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_set_qctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_set_qctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32 }
%struct.virtchnl_vector_map = type { i32, i32, i32 }

@I40E_QUEUE_TYPE_RX = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_MSIX_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.virtchnl_vector_map*, i32, i32, i32*, i32*)* @ixl_vf_set_qctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_set_qctl(%struct.ixl_pf* %0, %struct.virtchnl_vector_map* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.ixl_pf*, align 8
  %8 = alloca %struct.virtchnl_vector_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %7, align 8
  store %struct.virtchnl_vector_map* %1, %struct.virtchnl_vector_map** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @I40E_QUEUE_TYPE_RX, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @I40E_QINT_RQCTL(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %8, align 8
  %23 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  br label %31

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @I40E_QINT_TQCTL(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %8, align 8
  %29 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %8, align 8
  %33 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I40E_QINT_RQCTL_MSIX_INDX_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %36, %40
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %41, %45
  %47 = load i32, i32* @I40E_QINT_RQCTL_CAUSE_ENA_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @I40E_QINT_RQCTL_ITR_INDX_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = call i32 @htole32(i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load %struct.ixl_pf*, %struct.ixl_pf** %7, align 8
  %55 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %54, i32 0, i32 0
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @wr32(i32* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  ret void
}

declare dso_local i32 @I40E_QINT_RQCTL(i32) #1

declare dso_local i32 @I40E_QINT_TQCTL(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @wr32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
