; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_user_reg_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_user_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MPS_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"IO access is not supported. Use memory access.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_softc*, %struct.TYPE_3__*)* @mps_user_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_user_reg_access(%struct.mps_softc* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %31 [
    i32 131, label %9
    i32 130, label %9
    i32 129, label %14
    i32 128, label %22
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %11 = load i32, i32* @MPS_USER, align 4
  %12 = call i32 @mps_dprint(%struct.mps_softc* %10, i32 %11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %5, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mps_regread(%struct.mps_softc* %15, i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mps_regwrite(%struct.mps_softc* %23, i32 %26, i32 %29)
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %22, %14, %9
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*) #1

declare dso_local i32 @mps_regread(%struct.mps_softc*, i32) #1

declare dso_local i32 @mps_regwrite(%struct.mps_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
