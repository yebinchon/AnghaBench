; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_active_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_active_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PQ_INACTIVE = common dso_local global i64 0, align 8
@PQ_LAUNDRY = common dso_local global i64 0, align 8
@act_scan_laundry_weight = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_domain*)* @vm_pageout_active_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_pageout_active_target(%struct.vm_domain* %0) #0 {
  %2 = alloca %struct.vm_domain*, align 8
  %3 = alloca i32, align 4
  store %struct.vm_domain* %0, %struct.vm_domain** %2, align 8
  %4 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %5 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %8 = call i32 @vm_paging_target(%struct.vm_domain* %7)
  %9 = add nsw i32 %6, %8
  %10 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %11 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* @PQ_INACTIVE, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vm_domain*, %struct.vm_domain** %2, align 8
  %18 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @PQ_LAUNDRY, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @act_scan_laundry_weight, align 4
  %25 = sdiv i32 %23, %24
  %26 = add nsw i32 %16, %25
  %27 = sub nsw i32 %9, %26
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @act_scan_laundry_weight, align 4
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @vm_paging_target(%struct.vm_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
