; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mx25l_softc* }
%struct.mx25l_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SPI::device\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @mx25l_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25l_getattr(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.mx25l_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.bio*, %struct.bio** %3, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mx25l_softc*, %struct.mx25l_softc** %14, align 8
  %16 = icmp eq %struct.mx25l_softc* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %10
  %20 = load %struct.bio*, %struct.bio** %3, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.mx25l_softc*, %struct.mx25l_softc** %23, align 8
  store %struct.mx25l_softc* %24, %struct.mx25l_softc** %4, align 8
  %25 = load %struct.mx25l_softc*, %struct.mx25l_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.bio*, %struct.bio** %3, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strcmp(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %19
  %34 = load %struct.bio*, %struct.bio** %3, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EFAULT, align 4
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %33
  %42 = load %struct.bio*, %struct.bio** %3, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bcopy(i32* %5, i32 %44, i32 4)
  br label %47

46:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %48

47:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %46, %39, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
