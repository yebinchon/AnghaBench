; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_ioctl_param*)* }
%struct.hpt_iop_ioctl_param = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32, i32)* @hptiop_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_ioctl(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hpt_iop_hba*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @EFAULT, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.hpt_iop_hba* @hba_from_dev(i32 %14)
  store %struct.hpt_iop_hba* %15, %struct.hpt_iop_hba** %12, align 8
  %16 = call i32 @mtx_lock(i32* @Giant)
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %31 [
    i32 129, label %18
    i32 128, label %28
  ]

18:                                               ; preds = %5
  %19 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %12, align 8
  %20 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_ioctl_param*)*, i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_ioctl_param*)** %22, align 8
  %24 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %12, align 8
  %25 = load i64, i64* %8, align 8
  %26 = inttoptr i64 %25 to %struct.hpt_iop_ioctl_param*
  %27 = call i32 %23(%struct.hpt_iop_hba* %24, %struct.hpt_iop_ioctl_param* %26)
  store i32 %27, i32* %11, align 4
  br label %31

28:                                               ; preds = %5
  %29 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %12, align 8
  %30 = call i32 @hptiop_rescan_bus(%struct.hpt_iop_hba* %29)
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %5, %28, %18
  %32 = call i32 @mtx_unlock(i32* @Giant)
  %33 = load i32, i32* %11, align 4
  ret i32 %33
}

declare dso_local %struct.hpt_iop_hba* @hba_from_dev(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @hptiop_rescan_bus(%struct.hpt_iop_hba*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
