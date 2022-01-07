; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_bdata_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_bdata_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hdac_bdata_rate.bbits = internal constant [8 x i32] [i32 8, i32 16, i32 20, i32 24, i32 32, i32 32, i32 32, i32 32], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @hdac_bdata_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_bdata_rate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 48000, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 11
  %9 = and i32 %8, 7
  %10 = add nsw i32 %9, 1
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 4
  %15 = and i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* @hdac_bdata_rate.bbits, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 15
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 7
  %29 = and i32 %28, -8
  %30 = add nsw i32 %29, 10
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
