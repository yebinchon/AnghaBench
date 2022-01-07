; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hpt_iop_hba*)* }

@HPT_IOCTL_FLAG_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%d device is busy\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IOPMU_INBOUND_MSG0_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hptiop_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpt_iop_hba*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @device_get_softc(i32 %6)
  %8 = inttoptr i64 %7 to %struct.hpt_iop_hba*
  store %struct.hpt_iop_hba* %8, %struct.hpt_iop_hba** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %10 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HPT_IOCTL_FLAG_OPEN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %18 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EBUSY, align 4
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %24 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.hpt_iop_hba*)*, i32 (%struct.hpt_iop_hba*)** %26, align 8
  %28 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %29 = call i32 %27(%struct.hpt_iop_hba* %28)
  %30 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %31 = load i32, i32* @IOPMU_INBOUND_MSG0_SHUTDOWN, align 4
  %32 = call i64 @hptiop_send_sync_msg(%struct.hpt_iop_hba* %30, i32 %31, i32 60000)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @EBUSY, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %22
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %15
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @hptiop_send_sync_msg(%struct.hpt_iop_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
