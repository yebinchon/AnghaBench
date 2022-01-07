; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_setmaxtxpow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_setmaxtxpow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal_channel = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl_hal_channel*, i32, i32)* @setmaxtxpow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setmaxtxpow(%struct.mwl_hal_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mwl_hal_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mwl_hal_channel* %0, %struct.mwl_hal_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %4, align 8
  %8 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %4, align 8
  %15 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %45, %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  %23 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %4, align 8
  %24 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %4, align 8
  %31 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %22
  %35 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %4, align 8
  %36 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %4, align 8
  %43 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %34, %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %18

48:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
