; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_bhndb.c_bcma_bhndb_suspend_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_bhndb.c_bcma_bhndb_suspend_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @bcma_bhndb_suspend_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_bhndb_suspend_child(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bcma_devinfo*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @device_get_parent(i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @device_get_parent(i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @BUS_SUSPEND_CHILD(i64 %14, i64 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @device_is_suspended(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @EBUSY, align 4
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.bcma_devinfo* @device_get_ivars(i64 %24)
  store %struct.bcma_devinfo* %25, %struct.bcma_devinfo** %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @bhnd_generic_br_suspend_child(i64 %26, i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %23
  %33 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %34 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @device_get_parent(i64 %38)
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  %42 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %43 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @BHNDB_SUSPEND_RESOURCE(i64 %39, i64 %40, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %37, %32
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %30, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @BUS_SUSPEND_CHILD(i64, i64) #1

declare dso_local i64 @device_is_suspended(i64) #1

declare dso_local %struct.bcma_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @bhnd_generic_br_suspend_child(i64, i64) #1

declare dso_local i32 @BHNDB_SUSPEND_RESOURCE(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
