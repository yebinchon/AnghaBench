; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_bhndb.c_bcma_bhndb_resume_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_bhndb.c_bcma_bhndb_resume_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @bcma_bhndb_resume_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_bhndb_resume_child(i64 %0, i64 %1) #0 {
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
  %19 = call i32 @device_is_suspended(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EBUSY, align 4
  store i32 %22, i32* %3, align 4
  br label %70

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.bcma_devinfo* @device_get_ivars(i64 %24)
  store %struct.bcma_devinfo* %25, %struct.bcma_devinfo** %6, align 8
  %26 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %27 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @device_get_parent(i64 %31)
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* @SYS_RES_MEMORY, align 4
  %35 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %36 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BHNDB_RESUME_RESOURCE(i64 %32, i64 %33, i32 %34, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @bhnd_generic_br_resume_child(i64 %47, i64 %48)
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %53 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @device_get_parent(i64 %57)
  %59 = load i64, i64* %4, align 8
  %60 = load i32, i32* @SYS_RES_MEMORY, align 4
  %61 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %6, align 8
  %62 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @BHNDB_SUSPEND_RESOURCE(i64 %58, i64 %59, i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %56, %51
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %67, %43, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @BUS_SUSPEND_CHILD(i64, i64) #1

declare dso_local i32 @device_is_suspended(i64) #1

declare dso_local %struct.bcma_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @BHNDB_RESUME_RESOURCE(i64, i64, i32, i32) #1

declare dso_local i32 @bhnd_generic_br_resume_child(i64, i64) #1

declare dso_local i32 @BHNDB_SUSPEND_RESOURCE(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
