; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdio/extr_sdio_subr.c_sdio_set_bool_for_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdio/extr_sdio_subr.c_sdio_set_bool_for_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @sdio_set_bool_for_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_set_bool_for_func(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @SDIO_READ_DIRECT(i32 %16, i32 0, i32 %17, i32* %12)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %55

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %55

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %49

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %12, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @SDIO_WRITE_DIRECT(i32 %50, i32 0, i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %49, %34, %21
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @SDIO_READ_DIRECT(i32, i32, i32, i32*) #1

declare dso_local i32 @SDIO_WRITE_DIRECT(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
