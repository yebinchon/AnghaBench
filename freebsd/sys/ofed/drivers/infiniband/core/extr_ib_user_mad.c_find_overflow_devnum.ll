; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_user_mad.c_find_overflow_devnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_user_mad.c_find_overflow_devnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }

@overflow_maj = common dso_local global i32 0, align 4
@IB_UMAD_MAX_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"infiniband_mad\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"couldn't register dynamic device number\0A\00", align 1
@overflow_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*)* @find_overflow_devnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_overflow_devnum(%struct.ib_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  %5 = load i32, i32* @overflow_maj, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @IB_UMAD_MAX_PORTS, align 4
  %9 = mul nsw i32 %8, 2
  %10 = call i32 @alloc_chrdev_region(i32* @overflow_maj, i32 0, i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %15 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* @overflow_map, align 4
  %21 = load i32, i32* @IB_UMAD_MAX_PORTS, align 4
  %22 = call i32 @find_first_zero_bit(i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IB_UMAD_MAX_PORTS, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %26, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
