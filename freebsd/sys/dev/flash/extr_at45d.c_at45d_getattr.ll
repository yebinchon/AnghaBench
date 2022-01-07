; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.at45d_softc* }
%struct.at45d_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SPI::device\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @at45d_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at45d_getattr(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.at45d_softc*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  %5 = load %struct.bio*, %struct.bio** %3, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.bio*, %struct.bio** %3, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.at45d_softc*, %struct.at45d_softc** %13, align 8
  %15 = icmp eq %struct.at45d_softc* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %9, %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %9
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %45

25:                                               ; preds = %18
  %26 = load %struct.bio*, %struct.bio** %3, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.at45d_softc*, %struct.at45d_softc** %29, align 8
  store %struct.at45d_softc* %30, %struct.at45d_softc** %4, align 8
  %31 = load %struct.bio*, %struct.bio** %3, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @EFAULT, align 4
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %25
  %39 = load %struct.at45d_softc*, %struct.at45d_softc** %4, align 8
  %40 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %39, i32 0, i32 0
  %41 = load %struct.bio*, %struct.bio** %3, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bcopy(i32* %40, i32 %43, i32 4)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %36, %24, %16
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
