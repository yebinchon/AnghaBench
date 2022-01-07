; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%d file system is busy. id=%d\00", align 1
@IOPMU_INBOUND_MSG0_STOP_BACKGROUND_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hptiop_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpt_iop_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @device_get_softc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.hpt_iop_hba*
  store %struct.hpt_iop_hba* %9, %struct.hpt_iop_hba** %4, align 8
  %10 = load i32, i32* @EBUSY, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %12 = call i32 @hptiop_lock_adapter(%struct.hpt_iop_hba* %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %16 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @hptiop_os_query_remove_device(%struct.hpt_iop_hba* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %27 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %51

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @hptiop_shutdown(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %51

40:                                               ; preds = %35
  %41 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %42 = load i32, i32* @IOPMU_INBOUND_MSG0_STOP_BACKGROUND_TASK, align 4
  %43 = call i64 @hptiop_send_sync_msg(%struct.hpt_iop_hba* %41, i32 %42, i32 60000)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  %47 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %48 = call i32 @hptiop_unlock_adapter(%struct.hpt_iop_hba* %47)
  %49 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %50 = call i32 @hptiop_release_resource(%struct.hpt_iop_hba* %49)
  store i32 0, i32* %2, align 4
  br label %55

51:                                               ; preds = %45, %39, %24
  %52 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %53 = call i32 @hptiop_unlock_adapter(%struct.hpt_iop_hba* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @hptiop_lock_adapter(%struct.hpt_iop_hba*) #1

declare dso_local i64 @hptiop_os_query_remove_device(%struct.hpt_iop_hba*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @hptiop_shutdown(i32) #1

declare dso_local i64 @hptiop_send_sync_msg(%struct.hpt_iop_hba*, i32, i32) #1

declare dso_local i32 @hptiop_unlock_adapter(%struct.hpt_iop_hba*) #1

declare dso_local i32 @hptiop_release_resource(%struct.hpt_iop_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
