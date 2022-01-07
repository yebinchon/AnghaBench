; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sppp = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"sppp mutex is not initialized\00", align 1
@IDX_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sppp_detach(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.sppp*, align 8
  %4 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = call %struct.sppp* @IFP2SP(%struct.ifnet* %5)
  store %struct.sppp* %6, %struct.sppp** %3, align 8
  %7 = load %struct.sppp*, %struct.sppp** %3, align 8
  %8 = getelementptr inbounds %struct.sppp, %struct.sppp* %7, i32 0, i32 0
  %9 = call i32 @mtx_initialized(i32* %8)
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.sppp*, %struct.sppp** %3, align 8
  %12 = getelementptr inbounds %struct.sppp, %struct.sppp* %11, i32 0, i32 5
  %13 = call i32 @callout_drain(i32* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IDX_COUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.sppp*, %struct.sppp** %3, align 8
  %20 = getelementptr inbounds %struct.sppp, %struct.sppp* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @callout_drain(i32* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load %struct.sppp*, %struct.sppp** %3, align 8
  %31 = getelementptr inbounds %struct.sppp, %struct.sppp* %30, i32 0, i32 3
  %32 = call i32 @callout_drain(i32* %31)
  %33 = load %struct.sppp*, %struct.sppp** %3, align 8
  %34 = getelementptr inbounds %struct.sppp, %struct.sppp* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @mtx_destroy(i32* %35)
  %37 = load %struct.sppp*, %struct.sppp** %3, align 8
  %38 = getelementptr inbounds %struct.sppp, %struct.sppp* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @mtx_destroy(i32* %39)
  %41 = load %struct.sppp*, %struct.sppp** %3, align 8
  %42 = getelementptr inbounds %struct.sppp, %struct.sppp* %41, i32 0, i32 0
  %43 = call i32 @mtx_destroy(i32* %42)
  ret void
}

declare dso_local %struct.sppp* @IFP2SP(%struct.ifnet*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
