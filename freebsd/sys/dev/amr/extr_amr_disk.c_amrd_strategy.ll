; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_disk.c_amrd_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_disk.c_amrd_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.amrd_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @amrd_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amrd_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.amrd_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.amrd_softc*
  store %struct.amrd_softc* %9, %struct.amrd_softc** %3, align 8
  %10 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %11 = icmp eq %struct.amrd_softc* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.amrd_softc*, %struct.amrd_softc** %3, align 8
  %18 = getelementptr inbounds %struct.amrd_softc, %struct.amrd_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = call i32 @amr_submit_bio(i32 %19, %struct.bio* %20)
  br label %35

22:                                               ; preds = %12
  %23 = load i32, i32* @BIO_ERROR, align 4
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.bio*, %struct.bio** %2, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = call i32 @biodone(%struct.bio* %33)
  br label %35

35:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @amr_submit_bio(i32, %struct.bio*) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
