; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athpoke/extr_athpoke.c_regread.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athpoke/extr_athpoke.c_regread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_diag = type { i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_2__ = type { i64, i32 }

@HAL_DIAG_REGS = common dso_local global i32 0, align 4
@ATH_DIAG_IN = common dso_local global i32 0, align 4
@ATH_DIAG_DYN = common dso_local global i32 0, align 4
@SIOCGATHDIAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ath_diag*, i32)* @regread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regread(i32 %0, %struct.ath_diag* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_diag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__, align 8
  %8 = alloca [3 x i32], align 4
  store i32 %0, i32* %4, align 4
  store %struct.ath_diag* %1, %struct.ath_diag** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = bitcast %struct.TYPE_2__* %7 to i8*
  %13 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %14 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  %15 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %16 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %15, i32 0, i32 0
  store i32 16, i32* %16, align 8
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %18 = bitcast i32* %17 to i8*
  %19 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %20 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %22 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %21, i32 0, i32 1
  store i32 12, i32* %22, align 4
  %23 = load i32, i32* @HAL_DIAG_REGS, align 4
  %24 = load i32, i32* @ATH_DIAG_IN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ATH_DIAG_DYN, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %29 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SIOCGATHDIAG, align 4
  %32 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %33 = call i64 @ioctl(i32 %30, i32 %31, %struct.ath_diag* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.ath_diag*, %struct.ath_diag** %5, align 8
  %37 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @err(i32 1, i32 %38)
  br label %40

40:                                               ; preds = %35, %3
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %42 = load i32, i32* %41, align 4
  ret i32 %42
}

declare dso_local i64 @ioctl(i32, i32, %struct.ath_diag*) #1

declare dso_local i32 @err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
