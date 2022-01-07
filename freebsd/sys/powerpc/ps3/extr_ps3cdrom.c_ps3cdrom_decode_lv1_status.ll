; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3cdrom.c_ps3cdrom_decode_lv1_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3cdrom.c_ps3cdrom_decode_lv1_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_STATUS_CHECK_COND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @ps3cdrom_decode_lv1_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3cdrom_decode_lv1_status(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 24
  %12 = and i32 %11, 255
  %13 = load i32, i32* @SCSI_STATUS_CHECK_COND, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %28

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 255
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %16, %15
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
