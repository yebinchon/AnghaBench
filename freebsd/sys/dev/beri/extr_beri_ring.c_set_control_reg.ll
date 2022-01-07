; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_set_control_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_set_control_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_softc = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beri_softc*, i32, i32*)* @set_control_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_control_reg(%struct.beri_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.beri_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.beri_softc* %0, %struct.beri_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %25, %3
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 3, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %23
  store i32 %20, i32* %24, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %33 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  br label %39

35:                                               ; preds = %28
  %36 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %37 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i64 [ %34, %31 ], [ %38, %35 ]
  store i64 %40, i64* %7, align 8
  %41 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, 0
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %45 = bitcast i32* %44 to i64*
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 16
  %48 = call i32 @WRITE4(%struct.beri_softc* %41, i64 %43, i64 %47)
  %49 = load %struct.beri_softc*, %struct.beri_softc** %4, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %53 = bitcast i32* %52 to i64*
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @WRITE4(%struct.beri_softc* %49, i64 %51, i64 %55)
  ret void
}

declare dso_local i32 @WRITE4(%struct.beri_softc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
