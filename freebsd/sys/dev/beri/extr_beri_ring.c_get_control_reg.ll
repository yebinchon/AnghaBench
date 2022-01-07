; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_get_control_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_get_control_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_softc = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beri_softc*, i32)* @get_control_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_control_reg(%struct.beri_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.beri_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.beri_softc* %0, %struct.beri_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* %7, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %14 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %18 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i64 [ %15, %12 ], [ %19, %16 ]
  store i64 %21, i64* %5, align 8
  %22 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @READ4(%struct.beri_softc* %22, i64 %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %26 = bitcast i32* %25 to i64*
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %24, i64* %27, align 16
  %28 = load %struct.beri_softc*, %struct.beri_softc** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, 4
  %31 = call i64 @READ4(%struct.beri_softc* %28, i64 %30)
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %33 = bitcast i32* %32 to i64*
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  store i64 %31, i64* %34, align 8
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %48, %20
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 3, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %35

51:                                               ; preds = %35
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i64 @READ4(%struct.beri_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
