; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pcfclock.c_pcfclock_read_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pcfclock.c_pcfclock_read_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pcfclock_data* }
%struct.pcfclock_data = type { i32 }

@PPB_COMPATIBLE = common dso_local global i32 0, align 4
@PCFCLOCK_CMD_TIME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i8*, i32)* @pcfclock_read_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcfclock_read_dev(%struct.cdev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcfclock_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cdev*, %struct.cdev** %4, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load %struct.pcfclock_data*, %struct.pcfclock_data** %12, align 8
  store %struct.pcfclock_data* %13, %struct.pcfclock_data** %7, align 8
  %14 = load %struct.pcfclock_data*, %struct.pcfclock_data** %7, align 8
  %15 = getelementptr inbounds %struct.pcfclock_data, %struct.pcfclock_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PPB_COMPATIBLE, align 4
  %21 = call i32 @ppb_set_mode(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %44, %39, %34, %3
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.cdev*, %struct.cdev** %4, align 8
  %28 = load i32, i32* @PCFCLOCK_CMD_TIME, align 4
  %29 = call i32 @pcfclock_write_cmd(%struct.cdev* %27, i32 %28)
  %30 = load %struct.cdev*, %struct.cdev** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @pcfclock_read_data(%struct.cdev* %30, i8* %31, i32 68)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %22

35:                                               ; preds = %26
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @PCFCLOCK_CORRECT_SYNC(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %22

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @PCFCLOCK_CORRECT_FORMAT(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %22

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @EIO, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_set_mode(i32, i32) #1

declare dso_local i32 @pcfclock_write_cmd(%struct.cdev*, i32) #1

declare dso_local i64 @pcfclock_read_data(%struct.cdev*, i8*, i32) #1

declare dso_local i32 @PCFCLOCK_CORRECT_SYNC(i8*) #1

declare dso_local i32 @PCFCLOCK_CORRECT_FORMAT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
