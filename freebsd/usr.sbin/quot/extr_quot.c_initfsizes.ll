; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_initfsizes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_initfsizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsizes = type { i64*, i64*, %struct.fsizes* }

@fsizes = common dso_local global %struct.fsizes* null, align 8
@FSZCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initfsizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initfsizes() #0 {
  %1 = alloca %struct.fsizes*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.fsizes*, %struct.fsizes** @fsizes, align 8
  store %struct.fsizes* %3, %struct.fsizes** %1, align 8
  br label %4

4:                                                ; preds = %27, %0
  %5 = load %struct.fsizes*, %struct.fsizes** %1, align 8
  %6 = icmp ne %struct.fsizes* %5, null
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = load i32, i32* @FSZCNT, align 4
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %13, %7
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %2, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.fsizes*, %struct.fsizes** %1, align 8
  %15 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 0, i64* %19, align 8
  %20 = load %struct.fsizes*, %struct.fsizes** %1, align 8
  %21 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 0, i64* %25, align 8
  br label %9

26:                                               ; preds = %9
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.fsizes*, %struct.fsizes** %1, align 8
  %29 = getelementptr inbounds %struct.fsizes, %struct.fsizes* %28, i32 0, i32 2
  %30 = load %struct.fsizes*, %struct.fsizes** %29, align 8
  store %struct.fsizes* %30, %struct.fsizes** %1, align 8
  br label %4

31:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
