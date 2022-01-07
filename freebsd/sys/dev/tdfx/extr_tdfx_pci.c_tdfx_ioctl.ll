; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tdfx_pio_data = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64, i32, %struct.thread*)* @tdfx_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfx_ioctl(%struct.cdev* %0, i64 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tdfx_pio_data*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i64, i64* %9, align 8
  %15 = inttoptr i64 %14 to %struct.tdfx_pio_data*
  store %struct.tdfx_pio_data* %15, %struct.tdfx_pio_data** %13, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @_IOC_TYPE(i64 %16)
  switch i32 %17, label %48 [
    i32 51, label %18
    i32 0, label %33
  ]

18:                                               ; preds = %5
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %13, align 8
  %21 = call i32 @tdfx_do_query(i64 %19, %struct.tdfx_pio_data* %20)
  store i32 %21, i32* %12, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.thread*, %struct.thread** %11, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  br label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %51

32:                                               ; preds = %23
  br label %50

33:                                               ; preds = %5
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %13, align 8
  %36 = call i32 @tdfx_do_pio(i64 %34, %struct.tdfx_pio_data* %35)
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.thread*, %struct.thread** %11, align 8
  %41 = getelementptr inbounds %struct.thread, %struct.thread* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  br label %47

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %38
  br label %50

48:                                               ; preds = %5
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %6, align 4
  br label %51

50:                                               ; preds = %47, %32
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %48, %44, %29
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @_IOC_TYPE(i64) #1

declare dso_local i32 @tdfx_do_query(i64, %struct.tdfx_pio_data*) #1

declare dso_local i32 @tdfx_do_pio(i64, %struct.tdfx_pio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
