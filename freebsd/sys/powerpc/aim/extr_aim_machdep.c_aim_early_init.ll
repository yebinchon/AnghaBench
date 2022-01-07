; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_aim_machdep.c_aim_early_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_aim_machdep.c_aim_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSL_IR = common dso_local global i32 0, align 4
@PSL_DR = common dso_local global i32 0, align 4
@SPR_HID5 = common dso_local global i32 0, align 4
@HID5_970_DCBZ_SIZE_HI = common dso_local global i32 0, align 4
@DMAP_BASE_ADDRESS = common dso_local global i64 0, align 8
@n_slbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aim_early_init(i64 %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = call i32 (...) @mfmsr()
  %16 = load i32, i32* @PSL_IR, align 4
  %17 = load i32, i32* @PSL_DR, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = call i32 @mtmsr(i32 %20)
  br label %22

22:                                               ; preds = %14, %5
  %23 = call i32 (...) @mfpvr()
  %24 = ashr i32 %23, 16
  switch i32 %24, label %35 [
    i32 137, label %25
    i32 136, label %25
    i32 134, label %25
    i32 135, label %25
  ]

25:                                               ; preds = %22, %22, %22, %22
  %26 = load i32, i32* @SPR_HID5, align 4
  %27 = call i32 @mfspr(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @HID5_970_DCBZ_SIZE_HI, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @SPR_HID5, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @mtspr(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %25
  ret void
}

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @mfpvr(...) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
