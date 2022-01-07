; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athpoke/extr_athpoke.c_regwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athpoke/extr_athpoke.c_regwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_diag = type { i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i8*, i8* }

@HAL_DIAG_SETREGS = common dso_local global i32 0, align 4
@ATH_DIAG_IN = common dso_local global i32 0, align 4
@SIOCGATHDIAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ath_diag*, i8*, i8*)* @regwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regwrite(i32 %0, %struct.ath_diag* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_diag*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %5, align 4
  store %struct.ath_diag* %1, %struct.ath_diag** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = ptrtoint %struct.TYPE_2__* %9 to i64
  %15 = load %struct.ath_diag*, %struct.ath_diag** %6, align 8
  %16 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %15, i32 0, i32 3
  store i64 %14, i64* %16, align 8
  %17 = load %struct.ath_diag*, %struct.ath_diag** %6, align 8
  %18 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %17, i32 0, i32 0
  store i32 16, i32* %18, align 8
  %19 = load i32, i32* @HAL_DIAG_SETREGS, align 4
  %20 = load i32, i32* @ATH_DIAG_IN, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ath_diag*, %struct.ath_diag** %6, align 8
  %23 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SIOCGATHDIAG, align 4
  %26 = load %struct.ath_diag*, %struct.ath_diag** %6, align 8
  %27 = call i64 @ioctl(i32 %24, i32 %25, %struct.ath_diag* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.ath_diag*, %struct.ath_diag** %6, align 8
  %31 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @err(i32 1, i32 %32)
  br label %34

34:                                               ; preds = %29, %4
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.ath_diag*) #1

declare dso_local i32 @err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
