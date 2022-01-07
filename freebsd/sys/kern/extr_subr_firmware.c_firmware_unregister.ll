; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_firmware.c_firmware_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_firmware.c_firmware_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv_fw = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@firmware_mtx = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @firmware_unregister(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.priv_fw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 @mtx_lock(i32* @firmware_mtx)
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.priv_fw* @lookup(i8* %7, i32* null)
  store %struct.priv_fw* %8, %struct.priv_fw** %3, align 8
  %9 = load %struct.priv_fw*, %struct.priv_fw** %3, align 8
  %10 = icmp eq %struct.priv_fw* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.priv_fw*, %struct.priv_fw** %3, align 8
  %14 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @EBUSY, align 4
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %12
  %20 = load %struct.priv_fw*, %struct.priv_fw** %3, align 8
  %21 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.priv_fw*, %struct.priv_fw** %3, align 8
  %24 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* @M_TEMP, align 4
  %29 = call i32 @free(i8* %27, i32 %28)
  %30 = load %struct.priv_fw*, %struct.priv_fw** %3, align 8
  %31 = call i32 @bzero(%struct.priv_fw* %30, i32 24)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.priv_fw*, %struct.priv_fw** %3, align 8
  %34 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %19, %17
  br label %36

36:                                               ; preds = %35, %11
  %37 = call i32 @mtx_unlock(i32* @firmware_mtx)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.priv_fw* @lookup(i8*, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @bzero(%struct.priv_fw*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
