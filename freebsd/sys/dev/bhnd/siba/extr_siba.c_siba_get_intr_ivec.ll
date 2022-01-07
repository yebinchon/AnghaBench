; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_get_intr_ivec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba.c_siba_get_intr_ivec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid ivec %u\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"core does not have an interrupt assigned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siba_get_intr_ivec(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.siba_devinfo*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @device_get_parent(i64 %11)
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @device_get_parent(i64 %16)
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = call i32 @BHND_BUS_GET_INTR_IVEC(i64 %17, i64 %18, i64 %19, i64* %20)
  store i32 %21, i32* %5, align 4
  br label %49

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @siba_get_intr_count(i64 %24, i64 %25)
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %5, align 4
  br label %49

30:                                               ; preds = %22
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %8, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %33, i8* %35)
  %37 = load i64, i64* %7, align 8
  %38 = call %struct.siba_devinfo* @device_get_ivars(i64 %37)
  store %struct.siba_devinfo* %38, %struct.siba_devinfo** %10, align 8
  %39 = load %struct.siba_devinfo*, %struct.siba_devinfo** %10, align 8
  %40 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.siba_devinfo*, %struct.siba_devinfo** %10, align 8
  %45 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %30, %28, %15
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @BHND_BUS_GET_INTR_IVEC(i64, i64, i64, i64*) #1

declare dso_local i64 @siba_get_intr_count(i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.siba_devinfo* @device_get_ivars(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
