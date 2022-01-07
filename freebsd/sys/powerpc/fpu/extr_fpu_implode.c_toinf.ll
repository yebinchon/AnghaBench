; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_toinf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_toinf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32, i32 }

@FPSCR_RN = common dso_local global i32 0, align 4
@FPSCR_OX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpemu*, i32)* @toinf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toinf(%struct.fpemu* %0, i32 %1) #0 {
  %3 = alloca %struct.fpemu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fpemu* %0, %struct.fpemu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %7 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FPSCR_RN, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %11 [
    i32 130, label %12
    i32 128, label %13
    i32 129, label %14
    i32 131, label %18
  ]

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %2, %11
  store i32 1, i32* %5, align 4
  br label %20

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %14, %13, %12
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @FPSCR_OX, align 4
  %25 = load %struct.fpemu*, %struct.fpemu** %3, align 8
  %26 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
