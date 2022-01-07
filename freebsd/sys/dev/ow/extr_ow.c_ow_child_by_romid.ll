; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_child_by_romid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ow/extr_ow.c_ow_child_by_romid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ow_devinfo = type { i64 }

@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64)* @ow_child_by_romid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ow_child_by_romid(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ow_devinfo*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @device_get_children(i32* %12, i32*** %6, i32* %9)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %45

16:                                               ; preds = %2
  store i32* null, i32** %7, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %37, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load i32**, i32*** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call %struct.ow_devinfo* @device_get_ivars(i32* %27)
  store %struct.ow_devinfo* %28, %struct.ow_devinfo** %11, align 8
  %29 = load %struct.ow_devinfo*, %struct.ow_devinfo** %11, align 8
  %30 = getelementptr inbounds %struct.ow_devinfo, %struct.ow_devinfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32*, i32** %8, align 8
  store i32* %35, i32** %7, align 8
  br label %40

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %17

40:                                               ; preds = %34, %17
  %41 = load i32**, i32*** %6, align 8
  %42 = load i32, i32* @M_TEMP, align 4
  %43 = call i32 @free(i32** %41, i32 %42)
  %44 = load i32*, i32** %7, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %40, %15
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i64 @device_get_children(i32*, i32***, i32*) #1

declare dso_local %struct.ow_devinfo* @device_get_ivars(i32*) #1

declare dso_local i32 @free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
