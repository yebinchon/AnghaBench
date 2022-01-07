; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_user_event_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_user_event_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_softc*, %struct.TYPE_3__*)* @mps_user_event_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_user_event_report(%struct.mps_softc* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %8 = call i32 @mps_lock(%struct.mps_softc* %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp uge i64 %13, 8
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %20 = call i32 @mps_unlock(%struct.mps_softc* %19)
  %21 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PTRIN(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @copyout(i8* %24, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @EFAULT, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %18
  %35 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %36 = call i32 @mps_lock(%struct.mps_softc* %35)
  br label %39

37:                                               ; preds = %15, %2
  %38 = load i32, i32* @EFAULT, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 8, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %47 = call i32 @mps_unlock(%struct.mps_softc* %46)
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @mps_lock(%struct.mps_softc*) #1

declare dso_local i32 @mps_unlock(%struct.mps_softc*) #1

declare dso_local i64 @copyout(i8*, i32, i32) #1

declare dso_local i32 @PTRIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
