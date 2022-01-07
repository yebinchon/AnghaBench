; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.mthca_mr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*)* @mthca_dereg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_dereg_mr(%struct.ib_mr* %0) #0 {
  %2 = alloca %struct.ib_mr*, align 8
  %3 = alloca %struct.mthca_mr*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %2, align 8
  %4 = load %struct.ib_mr*, %struct.ib_mr** %2, align 8
  %5 = call %struct.mthca_mr* @to_mmr(%struct.ib_mr* %4)
  store %struct.mthca_mr* %5, %struct.mthca_mr** %3, align 8
  %6 = load %struct.ib_mr*, %struct.ib_mr** %2, align 8
  %7 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @to_mdev(i32 %8)
  %10 = load %struct.mthca_mr*, %struct.mthca_mr** %3, align 8
  %11 = call i32 @mthca_free_mr(i32 %9, %struct.mthca_mr* %10)
  %12 = load %struct.mthca_mr*, %struct.mthca_mr** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.mthca_mr*, %struct.mthca_mr** %3, align 8
  %18 = getelementptr inbounds %struct.mthca_mr, %struct.mthca_mr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ib_umem_release(i64 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.mthca_mr*, %struct.mthca_mr** %3, align 8
  %23 = call i32 @kfree(%struct.mthca_mr* %22)
  ret i32 0
}

declare dso_local %struct.mthca_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @mthca_free_mr(i32, %struct.mthca_mr*) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local i32 @ib_umem_release(i64) #1

declare dso_local i32 @kfree(%struct.mthca_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
