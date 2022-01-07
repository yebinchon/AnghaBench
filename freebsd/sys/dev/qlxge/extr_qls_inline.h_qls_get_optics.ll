; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_inline.h_qls_get_optics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_inline.h_qls_get_optics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@IFM_10G_LR = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@IFM_10G_TWINAX = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @qls_get_optics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qls_get_optics(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 240
  switch i32 %12, label %21 [
    i32 16, label %13
    i32 32, label %13
    i32 48, label %13
    i32 64, label %17
    i32 80, label %17
    i32 96, label %17
    i32 112, label %19
    i32 128, label %19
    i32 144, label %19
    i32 160, label %19
    i32 176, label %19
  ]

13:                                               ; preds = %8, %8, %8
  %14 = load i32, i32* @IFM_10G_LR, align 4
  %15 = load i32, i32* @IFM_10G_SR, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %8, %8, %8
  %18 = load i32, i32* @IFM_10G_TWINAX, align 4
  store i32 %18, i32* %3, align 4
  br label %21

19:                                               ; preds = %8, %8, %8, %8, %8
  %20 = load i32, i32* @IFM_1000_SX, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %8, %19, %17, %13
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
