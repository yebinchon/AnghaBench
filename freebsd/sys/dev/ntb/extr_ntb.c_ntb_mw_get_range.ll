; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_mw_get_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_mw_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_child = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_mw_get_range(i32 %0, i32 %1, i32* %2, i32* %3, i64* %4, i64* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.ntb_child*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.ntb_child* @device_get_ivars(i32 %18)
  store %struct.ntb_child* %19, %struct.ntb_child** %17, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.ntb_child*, %struct.ntb_child** %17, align 8
  %24 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %22, %25
  %27 = load i32*, i32** %11, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i64*, i64** %13, align 8
  %30 = load i64*, i64** %14, align 8
  %31 = load i64*, i64** %15, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = call i32 @NTB_MW_GET_RANGE(i32 %21, i32 %26, i32* %27, i32* %28, i64* %29, i64* %30, i64* %31, i32* %32)
  ret i32 %33
}

declare dso_local %struct.ntb_child* @device_get_ivars(i32) #1

declare dso_local i32 @NTB_MW_GET_RANGE(i32, i32, i32*, i32*, i64*, i64*, i64*, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
