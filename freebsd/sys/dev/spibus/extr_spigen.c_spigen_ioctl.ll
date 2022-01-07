; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spigen.c_spigen_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spigen.c_spigen_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.spigen_transfer = type { i32 }
%struct.spigen_transfer_mmapped = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @spigen_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spigen_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %49 [
    i32 129, label %17
    i32 128, label %22
    i32 133, label %27
    i32 131, label %32
    i32 132, label %38
    i32 130, label %43
  ]

17:                                               ; preds = %5
  %18 = load %struct.cdev*, %struct.cdev** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = inttoptr i64 %19 to %struct.spigen_transfer*
  %21 = call i32 @spigen_transfer(%struct.cdev* %18, %struct.spigen_transfer* %20)
  store i32 %21, i32* %12, align 4
  br label %51

22:                                               ; preds = %5
  %23 = load %struct.cdev*, %struct.cdev** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = inttoptr i64 %24 to %struct.spigen_transfer_mmapped*
  %26 = call i32 @spigen_transfer_mmapped(%struct.cdev* %23, %struct.spigen_transfer_mmapped* %25)
  store i32 %26, i32* %12, align 4
  br label %51

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = load i64, i64* %8, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @spibus_get_clock(i32 %28, i32* %30)
  store i32 %31, i32* %12, align 4
  br label %51

32:                                               ; preds = %5
  %33 = load i32, i32* %11, align 4
  %34 = load i64, i64* %8, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spibus_set_clock(i32 %33, i32 %36)
  store i32 %37, i32* %12, align 4
  br label %51

38:                                               ; preds = %5
  %39 = load i32, i32* %11, align 4
  %40 = load i64, i64* %8, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @spibus_get_mode(i32 %39, i32* %41)
  store i32 %42, i32* %12, align 4
  br label %51

43:                                               ; preds = %5
  %44 = load i32, i32* %11, align 4
  %45 = load i64, i64* %8, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @spibus_set_mode(i32 %44, i32 %47)
  store i32 %48, i32* %12, align 4
  br label %51

49:                                               ; preds = %5
  %50 = load i32, i32* @ENOTTY, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %43, %38, %32, %27, %22, %17
  %52 = load i32, i32* %12, align 4
  ret i32 %52
}

declare dso_local i32 @spigen_transfer(%struct.cdev*, %struct.spigen_transfer*) #1

declare dso_local i32 @spigen_transfer_mmapped(%struct.cdev*, %struct.spigen_transfer_mmapped*) #1

declare dso_local i32 @spibus_get_clock(i32, i32*) #1

declare dso_local i32 @spibus_set_clock(i32, i32) #1

declare dso_local i32 @spibus_get_mode(i32, i32*) #1

declare dso_local i32 @spibus_set_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
