; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad1816_info = type { i32 }

@AD1816_ALE = common dso_local global i32 0, align 4
@AD1816_ALEMASK = common dso_local global i32 0, align 4
@AD1816_LOW = common dso_local global i32 0, align 4
@AD1816_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad1816_info*, i32, i16)* @ad1816_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1816_write(%struct.ad1816_info* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.ad1816_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.ad1816_info* %0, %struct.ad1816_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %7 = load %struct.ad1816_info*, %struct.ad1816_info** %4, align 8
  %8 = call i32 @ad1816_wait_init(%struct.ad1816_info* %7, i32 100)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %34

11:                                               ; preds = %3
  %12 = load %struct.ad1816_info*, %struct.ad1816_info** %4, align 8
  %13 = load i32, i32* @AD1816_ALE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @AD1816_ALEMASK, align 4
  %16 = and i32 %14, %15
  %17 = trunc i32 %16 to i16
  %18 = call i32 @io_wr(%struct.ad1816_info* %12, i32 %13, i16 zeroext %17)
  %19 = load %struct.ad1816_info*, %struct.ad1816_info** %4, align 8
  %20 = load i32, i32* @AD1816_LOW, align 4
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i16
  %25 = call i32 @io_wr(%struct.ad1816_info* %19, i32 %20, i16 zeroext %24)
  %26 = load %struct.ad1816_info*, %struct.ad1816_info** %4, align 8
  %27 = load i32, i32* @AD1816_HIGH, align 4
  %28 = load i16, i16* %6, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 65280
  %31 = ashr i32 %30, 8
  %32 = trunc i32 %31 to i16
  %33 = call i32 @io_wr(%struct.ad1816_info* %26, i32 %27, i16 zeroext %32)
  br label %34

34:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @ad1816_wait_init(%struct.ad1816_info*, i32) #1

declare dso_local i32 @io_wr(%struct.ad1816_info*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
