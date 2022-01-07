; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_vhd.c_vhd_fix_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_vhd.c_vhd_fix_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhd_footer = type { i32 }

@secsz = common dso_local global i32 0, align 4
@VHD_DISK_TYPE_FIXED = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vhd_fix_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhd_fix_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhd_footer, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @image_copyout(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = call i32 (...) @image_get_size()
  %15 = load i32, i32* @secsz, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @VHD_DISK_TYPE_FIXED, align 4
  %19 = call i32 @vhd_make_footer(%struct.vhd_footer* %4, i32 %17, i32 %18, i64 -1)
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @sparse_write(i32 %20, %struct.vhd_footer* %4, i32 4)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @errno, align 4
  br label %26

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @image_copyout(i32) #1

declare dso_local i32 @image_get_size(...) #1

declare dso_local i32 @vhd_make_footer(%struct.vhd_footer*, i32, i32, i64) #1

declare dso_local i64 @sparse_write(i32, %struct.vhd_footer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
