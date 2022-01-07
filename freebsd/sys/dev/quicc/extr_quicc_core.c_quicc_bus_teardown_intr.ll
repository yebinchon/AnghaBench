; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bus_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bus_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.quicc_device = type { i8*, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicc_bus_teardown_intr(i64 %0, i64 %1, %struct.resource* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.quicc_device*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @device_get_parent(i64 %11)
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %5, align 4
  br label %32

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.quicc_device* @device_get_ivars(i64 %18)
  store %struct.quicc_device* %19, %struct.quicc_device** %10, align 8
  %20 = load %struct.quicc_device*, %struct.quicc_device** %10, align 8
  %21 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load %struct.quicc_device*, %struct.quicc_device** %10, align 8
  %29 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %28, i32 0, i32 0
  store i8* null, i8** %29, align 8
  %30 = load %struct.quicc_device*, %struct.quicc_device** %10, align 8
  %31 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %25, %15
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.quicc_device* @device_get_ivars(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
