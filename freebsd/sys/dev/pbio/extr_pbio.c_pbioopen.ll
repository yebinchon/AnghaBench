; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbioopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pbio/extr_pbio.c_pbioopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.pbio_softc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@PBIO_CFG = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @pbioopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbioopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.pbio_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %15 = load %struct.cdev*, %struct.cdev** %6, align 8
  %16 = call i32 @UNIT(%struct.cdev* %15)
  store i32 %16, i32* %13, align 4
  %17 = load %struct.cdev*, %struct.cdev** %6, align 8
  %18 = call i32 @PORT(%struct.cdev* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call %struct.pbio_softc* @pbio_addr(i32 %19)
  store %struct.pbio_softc* %20, %struct.pbio_softc** %10, align 8
  %21 = load %struct.pbio_softc*, %struct.pbio_softc** %10, align 8
  %22 = icmp eq %struct.pbio_softc* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @ENODEV, align 4
  store i32 %24, i32* %5, align 4
  br label %69

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  switch i32 %26, label %31 [
    i32 0, label %27
    i32 1, label %28
    i32 2, label %29
    i32 3, label %30
  ]

27:                                               ; preds = %25
  store i32 16, i32* %14, align 4
  br label %33

28:                                               ; preds = %25
  store i32 2, i32* %14, align 4
  br label %33

29:                                               ; preds = %25
  store i32 8, i32* %14, align 4
  br label %33

30:                                               ; preds = %25
  store i32 1, i32* %14, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ENODEV, align 4
  store i32 %32, i32* %5, align 4
  br label %69

33:                                               ; preds = %30, %29, %28, %27
  %34 = load %struct.pbio_softc*, %struct.pbio_softc** %10, align 8
  %35 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @FWRITE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.pbio_softc*, %struct.pbio_softc** %10, align 8
  %43 = load i32, i32* @PBIO_CFG, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %14, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load %struct.pbio_softc*, %struct.pbio_softc** %10, align 8
  %49 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = call i32 @pboutb(%struct.pbio_softc* %42, i32 %43, i32 %47)
  br label %68

51:                                               ; preds = %33
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FREAD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.pbio_softc*, %struct.pbio_softc** %10, align 8
  %58 = load i32, i32* @PBIO_CFG, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %14, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.pbio_softc*, %struct.pbio_softc** %10, align 8
  %63 = getelementptr inbounds %struct.pbio_softc, %struct.pbio_softc* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = call i32 @pboutb(%struct.pbio_softc* %57, i32 %58, i32 %61)
  br label %67

65:                                               ; preds = %51
  %66 = load i32, i32* @EACCES, align 4
  store i32 %66, i32* %5, align 4
  br label %69

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %41
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %65, %31, %23
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @UNIT(%struct.cdev*) #1

declare dso_local i32 @PORT(%struct.cdev*) #1

declare dso_local %struct.pbio_softc* @pbio_addr(i32) #1

declare dso_local i32 @pboutb(%struct.pbio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
