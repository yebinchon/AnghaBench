; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad1816_info = type { i32 }

@AD1816_ALE = common dso_local global i32 0, align 4
@AD1816_ALEMASK = common dso_local global i32 0, align 4
@AD1816_HIGH = common dso_local global i32 0, align 4
@AD1816_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.ad1816_info*, i32)* @ad1816_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @ad1816_read(%struct.ad1816_info* %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.ad1816_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.ad1816_info* %0, %struct.ad1816_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 0, i16* %6, align 2
  %7 = load %struct.ad1816_info*, %struct.ad1816_info** %4, align 8
  %8 = call i32 @ad1816_wait_init(%struct.ad1816_info* %7, i32 100)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i16 0, i16* %3, align 2
  br label %36

11:                                               ; preds = %2
  %12 = load %struct.ad1816_info*, %struct.ad1816_info** %4, align 8
  %13 = load i32, i32* @AD1816_ALE, align 4
  %14 = call i32 @io_wr(%struct.ad1816_info* %12, i32 %13, i32 0)
  %15 = load %struct.ad1816_info*, %struct.ad1816_info** %4, align 8
  %16 = load i32, i32* @AD1816_ALE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @AD1816_ALEMASK, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @io_wr(%struct.ad1816_info* %15, i32 %16, i32 %19)
  %21 = load %struct.ad1816_info*, %struct.ad1816_info** %4, align 8
  %22 = call i32 @ad1816_wait_init(%struct.ad1816_info* %21, i32 100)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  store i16 0, i16* %3, align 2
  br label %36

25:                                               ; preds = %11
  %26 = load %struct.ad1816_info*, %struct.ad1816_info** %4, align 8
  %27 = load i32, i32* @AD1816_HIGH, align 4
  %28 = call i32 @io_rd(%struct.ad1816_info* %26, i32 %27)
  %29 = shl i32 %28, 8
  %30 = load %struct.ad1816_info*, %struct.ad1816_info** %4, align 8
  %31 = load i32, i32* @AD1816_LOW, align 4
  %32 = call i32 @io_rd(%struct.ad1816_info* %30, i32 %31)
  %33 = or i32 %29, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %6, align 2
  %35 = load i16, i16* %6, align 2
  store i16 %35, i16* %3, align 2
  br label %36

36:                                               ; preds = %25, %24, %10
  %37 = load i16, i16* %3, align 2
  ret i16 %37
}

declare dso_local i32 @ad1816_wait_init(%struct.ad1816_info*, i32) #1

declare dso_local i32 @io_wr(%struct.ad1816_info*, i32, i32) #1

declare dso_local i32 @io_rd(%struct.ad1816_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
