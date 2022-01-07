; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_n25q.c_n25q_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_n25q.c_n25q_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n25q_softc = type { i64, i32, i32, i32 }
%struct.bio = type { i32, i32, i32, i32, i32 }

@TSTATE_STOPPING = common dso_local global i64 0, align 8
@TSTATE_STOPPED = common dso_local global i64 0, align 8
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"jobqueue\00", align 1
@hz = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @n25q_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n25q_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.n25q_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.n25q_softc*
  store %struct.n25q_softc* %7, %struct.n25q_softc** %3, align 8
  %8 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %9 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %90, %1
  %12 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %13 = call i32 @N25Q_LOCK(%struct.n25q_softc* %12)
  br label %14

14:                                               ; preds = %43, %11
  %15 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %16 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TSTATE_STOPPING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i64, i64* @TSTATE_STOPPED, align 8
  %22 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %23 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %25 = call i32 @N25Q_UNLOCK(%struct.n25q_softc* %24)
  %26 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %27 = call i32 @wakeup(%struct.n25q_softc* %26)
  %28 = call i32 @kproc_exit(i32 0)
  br label %29

29:                                               ; preds = %20, %14
  %30 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %31 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %30, i32 0, i32 1
  %32 = call %struct.bio* @bioq_first(i32* %31)
  store %struct.bio* %32, %struct.bio** %4, align 8
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = icmp eq %struct.bio* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %37 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %38 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %37, i32 0, i32 2
  %39 = load i32, i32* @PRIBIO, align 4
  %40 = load i32, i32* @hz, align 4
  %41 = call i32 @msleep(%struct.n25q_softc* %36, i32* %38, i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %29
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = icmp eq %struct.bio* %44, null
  br i1 %45, label %14, label %46

46:                                               ; preds = %43
  %47 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %48 = getelementptr inbounds %struct.n25q_softc, %struct.n25q_softc* %47, i32 0, i32 1
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = call i32 @bioq_remove(i32* %48, %struct.bio* %49)
  %51 = load %struct.n25q_softc*, %struct.n25q_softc** %3, align 8
  %52 = call i32 @N25Q_UNLOCK(%struct.n25q_softc* %51)
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %86 [
    i32 129, label %56
    i32 128, label %71
  ]

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.bio*, %struct.bio** %4, align 8
  %59 = load %struct.bio*, %struct.bio** %4, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bio*, %struct.bio** %4, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bio*, %struct.bio** %4, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @n25q_read(i32 %57, %struct.bio* %58, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.bio*, %struct.bio** %4, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %90

71:                                               ; preds = %46
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.bio*, %struct.bio** %4, align 8
  %74 = load %struct.bio*, %struct.bio** %4, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bio*, %struct.bio** %4, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bio*, %struct.bio** %4, align 8
  %81 = getelementptr inbounds %struct.bio, %struct.bio* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @n25q_write(i32 %72, %struct.bio* %73, i32 %76, i32 %79, i32 %82)
  %84 = load %struct.bio*, %struct.bio** %4, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %90

86:                                               ; preds = %46
  %87 = load i32, i32* @EINVAL, align 4
  %88 = load %struct.bio*, %struct.bio** %4, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %71, %56
  %91 = load %struct.bio*, %struct.bio** %4, align 8
  %92 = call i32 @biodone(%struct.bio* %91)
  br label %11
}

declare dso_local i32 @N25Q_LOCK(%struct.n25q_softc*) #1

declare dso_local i32 @N25Q_UNLOCK(%struct.n25q_softc*) #1

declare dso_local i32 @wakeup(%struct.n25q_softc*) #1

declare dso_local i32 @kproc_exit(i32) #1

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local i32 @msleep(%struct.n25q_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local i32 @n25q_read(i32, %struct.bio*, i32, i32, i32) #1

declare dso_local i32 @n25q_write(i32, %struct.bio*, i32, i32, i32) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
