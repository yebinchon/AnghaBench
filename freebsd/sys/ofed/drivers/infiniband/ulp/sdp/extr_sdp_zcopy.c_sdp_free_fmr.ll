; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_free_fmr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp_zcopy.c_sdp_free_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.ib_pool_fmr = type { i32 }
%struct.ib_umem = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_free_fmr(%struct.socket* %0, %struct.ib_pool_fmr** %1, %struct.ib_umem** %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.ib_pool_fmr**, align 8
  %6 = alloca %struct.ib_umem**, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.ib_pool_fmr** %1, %struct.ib_pool_fmr*** %5, align 8
  store %struct.ib_umem** %2, %struct.ib_umem*** %6, align 8
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = call %struct.TYPE_2__* @sdp_sk(%struct.socket* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %22

13:                                               ; preds = %3
  %14 = load %struct.ib_pool_fmr**, %struct.ib_pool_fmr*** %5, align 8
  %15 = load %struct.ib_pool_fmr*, %struct.ib_pool_fmr** %14, align 8
  %16 = call i32 @ib_fmr_pool_unmap(%struct.ib_pool_fmr* %15)
  %17 = load %struct.ib_pool_fmr**, %struct.ib_pool_fmr*** %5, align 8
  store %struct.ib_pool_fmr* null, %struct.ib_pool_fmr** %17, align 8
  %18 = load %struct.ib_umem**, %struct.ib_umem*** %6, align 8
  %19 = load %struct.ib_umem*, %struct.ib_umem** %18, align 8
  %20 = call i32 @ib_umem_release(%struct.ib_umem* %19)
  %21 = load %struct.ib_umem**, %struct.ib_umem*** %6, align 8
  store %struct.ib_umem* null, %struct.ib_umem** %21, align 8
  br label %22

22:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.TYPE_2__* @sdp_sk(%struct.socket*) #1

declare dso_local i32 @ib_fmr_pool_unmap(%struct.ib_pool_fmr*) #1

declare dso_local i32 @ib_umem_release(%struct.ib_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
