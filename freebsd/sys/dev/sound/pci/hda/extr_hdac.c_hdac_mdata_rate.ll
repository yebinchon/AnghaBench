; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_mdata_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_mdata_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hdac_mdata_rate.mbits = internal constant [8 x i32] [i32 8, i32 16, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hdac_mdata_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_mdata_rate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 16384
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 44100, i32* %3, align 4
  br label %10

9:                                                ; preds = %1
  store i32 48000, i32* %3, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, i32* %2, align 4
  %12 = ashr i32 %11, 11
  %13 = and i32 %12, 7
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 7
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* %3, align 4
  %22 = sdiv i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %2, align 4
  %24 = ashr i32 %23, 4
  %25 = and i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* @hdac_mdata_rate.mbits, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %29, 15
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %34, %35
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
