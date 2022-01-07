; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_release_pci_res_mv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_release_pci_res_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i64, i32, i32, i64, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpt_iop_hba*)* @hptiop_release_pci_res_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_release_pci_res_mv(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca %struct.hpt_iop_hba*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %2, align 8
  %3 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %4 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %9 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SYS_RES_MEMORY, align 4
  %12 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %13 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %16 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @bus_release_resource(i32 %10, i32 %11, i32 %14, i64 %17)
  br label %19

19:                                               ; preds = %7, %1
  %20 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %21 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %26 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SYS_RES_MEMORY, align 4
  %29 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %30 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %33 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bus_release_resource(i32 %27, i32 %28, i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
