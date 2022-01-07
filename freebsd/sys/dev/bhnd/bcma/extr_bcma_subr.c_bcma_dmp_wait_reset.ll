; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_dmp_wait_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_dmp_wait_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@BCMA_DMP_RESETSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BCMA_DMP_RESETSTATUS timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_dmp_wait_reset(i32 %0, %struct.bcma_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_devinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.bcma_devinfo* %1, %struct.bcma_devinfo** %5, align 8
  %8 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %5, align 8
  %9 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 10000
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %5, align 8
  %20 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @BCMA_DMP_RESETSTATUS, align 4
  %23 = call i64 @bhnd_bus_read_4(i32* %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %36

27:                                               ; preds = %18
  %28 = call i32 @DELAY(i32 10)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 10
  store i32 %31, i32* %7, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %26, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @bhnd_bus_read_4(i32*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
