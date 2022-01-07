; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbus.c_smbus_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbus.c_smbus_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbus_ivar = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @smbus_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbus_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.smbus_ivar*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.smbus_ivar* @device_get_ivars(i32 %11)
  store %struct.smbus_ivar* %12, %struct.smbus_ivar** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %27 [
    i32 128, label %14
  ]

14:                                               ; preds = %4
  %15 = load %struct.smbus_ivar*, %struct.smbus_ivar** %10, align 8
  %16 = getelementptr inbounds %struct.smbus_ivar, %struct.smbus_ivar* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.smbus_ivar*, %struct.smbus_ivar** %10, align 8
  %21 = getelementptr inbounds %struct.smbus_ivar, %struct.smbus_ivar* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %9, align 8
  store i64 %22, i64* %23, align 8
  br label %26

24:                                               ; preds = %14
  %25 = load i64*, i64** %9, align 8
  store i64 -1, i64* %25, align 8
  br label %26

26:                                               ; preds = %24, %19
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.smbus_ivar* @device_get_ivars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
