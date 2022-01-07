; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/disk/extr_gxemul_disk.c_gxemul_disk_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/disk/extr_gxemul_disk.c_gxemul_disk_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GXEMUL_DISK_DEV_BLOCKSIZE = common dso_local global i32 0, align 4
@EDOOFUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @gxemul_disk_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxemul_disk_size(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %7, align 4
  store i32 3, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %52, %51, %46, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GXEMUL_DISK_DEV_BLOCKSIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @gxemul_disk_read(i32 %18, i32* null, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %10
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @GXEMUL_DISK_DEV_BLOCKSIZE, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  ret i32 0

34:                                               ; preds = %26, %23
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %10

47:                                               ; preds = %10
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 1, i32* %7, align 4
  br label %10

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %10
}

declare dso_local i32 @gxemul_disk_read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
