; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_firmware.c_firmware_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_firmware.c_firmware_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.priv_fw = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@firmware_mtx = common dso_local global i32 0, align 4
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@FW_UNLOAD = common dso_local global i32 0, align 4
@firmware_tq = common dso_local global i32 0, align 4
@firmware_unload_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @firmware_put(%struct.firmware* %0, i32 %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.priv_fw*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.firmware*, %struct.firmware** %3, align 8
  %7 = call %struct.priv_fw* @PRIV_FW(%struct.firmware* %6)
  store %struct.priv_fw* %7, %struct.priv_fw** %5, align 8
  %8 = call i32 @mtx_lock(i32* @firmware_mtx)
  %9 = load %struct.priv_fw*, %struct.priv_fw** %5, align 8
  %10 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.priv_fw*, %struct.priv_fw** %5, align 8
  %14 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %2
  %18 = load %struct.priv_fw*, %struct.priv_fw** %5, align 8
  %19 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.priv_fw*, %struct.priv_fw** %5, align 8
  %24 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @FW_UNLOAD, align 4
  %36 = load %struct.priv_fw*, %struct.priv_fw** %5, align 8
  %37 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.priv_fw*, %struct.priv_fw** %5, align 8
  %42 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @firmware_tq, align 4
  %47 = call i32 @taskqueue_enqueue(i32 %46, i32* @firmware_unload_task)
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %2
  %50 = call i32 @mtx_unlock(i32* @firmware_mtx)
  ret void
}

declare dso_local %struct.priv_fw* @PRIV_FW(%struct.firmware*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
