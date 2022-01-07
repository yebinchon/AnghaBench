; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_get_mfa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_get_mfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"pstiop: no free mfa\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iop_get_mfa(%struct.iop_softc* %0) #0 {
  %2 = alloca %struct.iop_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.iop_softc* %0, %struct.iop_softc** %2, align 8
  store i32 10000, i32* %4, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load %struct.iop_softc*, %struct.iop_softc** %2, align 8
  %7 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi i1 [ false, %5 ], [ %14, %12 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = call i32 @DELAY(i32 1000)
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  br label %5

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
