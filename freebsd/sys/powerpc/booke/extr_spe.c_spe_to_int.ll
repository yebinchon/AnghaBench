; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_to_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_to_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32 }
%struct.fpn = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@FPSCR_OX = common dso_local global i32 0, align 4
@FPSCR_UX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpemu*, %struct.fpn*, i64*, i32)* @spe_to_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spe_to_int(%struct.fpemu* %0, %struct.fpn* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.fpemu*, align 8
  %6 = alloca %struct.fpn*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i64], align 16
  store %struct.fpemu* %0, %struct.fpemu** %5, align 8
  store %struct.fpn* %1, %struct.fpn** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %11 = load %struct.fpn*, %struct.fpn** %6, align 8
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %13 = call i64 @fpu_ftox(%struct.fpemu* %10, %struct.fpn* %11, i64* %12)
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %13, i64* %14, align 16
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %16 = load i64, i64* %15, align 16
  %17 = load i64, i64* @UINT_MAX, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %21 = load i64, i64* %20, align 16
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* @FPSCR_OX, align 4
  %25 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %26 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %47

29:                                               ; preds = %19, %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %34 = load i64, i64* %33, align 16
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @FPSCR_UX, align 4
  %38 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %39 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %46

42:                                               ; preds = %32, %29
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %7, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %23
  ret i32 0
}

declare dso_local i64 @fpu_ftox(%struct.fpemu*, %struct.fpn*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
