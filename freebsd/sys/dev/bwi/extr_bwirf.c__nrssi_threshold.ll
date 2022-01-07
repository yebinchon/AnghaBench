; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c__nrssi_threshold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c__nrssi_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_rf = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_rf*, i32)* @_nrssi_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nrssi_threshold(%struct.bwi_rf* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_rf*, align 8
  %4 = alloca i32, align 4
  store %struct.bwi_rf* %0, %struct.bwi_rf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %6 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %11 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %9, %14
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %19 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 6
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 31
  store i32 %30, i32* %4, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 6
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, -31
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -31, i32* %4, align 4
  br label %45

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = icmp sgt i32 %41, 31
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 31, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
