; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx25l_softc = type { i64, i32, i32, i32 }
%struct.bio = type { i32, i32, i32, i32, i32 }

@TSTATE_STOPPING = common dso_local global i64 0, align 8
@TSTATE_STOPPED = common dso_local global i64 0, align 8
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mx25jq\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mx25l_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx25l_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mx25l_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mx25l_softc*
  store %struct.mx25l_softc* %7, %struct.mx25l_softc** %3, align 8
  br label %8

8:                                                ; preds = %87, %1
  %9 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %13 = call i32 @M25PXX_LOCK(%struct.mx25l_softc* %12)
  br label %14

14:                                               ; preds = %42, %8
  %15 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TSTATE_STOPPING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i64, i64* @TSTATE_STOPPED, align 8
  %22 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %25 = call i32 @M25PXX_UNLOCK(%struct.mx25l_softc* %24)
  %26 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %27 = call i32 @wakeup(%struct.mx25l_softc* %26)
  %28 = call i32 @kproc_exit(i32 0)
  br label %29

29:                                               ; preds = %20, %14
  %30 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %30, i32 0, i32 1
  %32 = call %struct.bio* @bioq_first(i32* %31)
  store %struct.bio* %32, %struct.bio** %4, align 8
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = icmp eq %struct.bio* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %37 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %37, i32 0, i32 2
  %39 = load i32, i32* @PRIBIO, align 4
  %40 = call i32 @msleep(%struct.mx25l_softc* %36, i32* %38, i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = icmp eq %struct.bio* %43, null
  br i1 %44, label %14, label %45

45:                                               ; preds = %42
  %46 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %47 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %46, i32 0, i32 1
  %48 = load %struct.bio*, %struct.bio** %4, align 8
  %49 = call i32 @bioq_remove(i32* %47, %struct.bio* %48)
  %50 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %51 = call i32 @M25PXX_UNLOCK(%struct.mx25l_softc* %50)
  %52 = load %struct.bio*, %struct.bio** %4, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %83 [
    i32 129, label %55
    i32 128, label %69
  ]

55:                                               ; preds = %45
  %56 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %57 = load %struct.bio*, %struct.bio** %4, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bio*, %struct.bio** %4, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bio*, %struct.bio** %4, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mx25l_read(%struct.mx25l_softc* %56, i32 %59, i32 %62, i32 %65)
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %87

69:                                               ; preds = %45
  %70 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %71 = load %struct.bio*, %struct.bio** %4, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bio*, %struct.bio** %4, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bio*, %struct.bio** %4, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mx25l_write(%struct.mx25l_softc* %70, i32 %73, i32 %76, i32 %79)
  %81 = load %struct.bio*, %struct.bio** %4, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %87

83:                                               ; preds = %45
  %84 = load i32, i32* @EINVAL, align 4
  %85 = load %struct.bio*, %struct.bio** %4, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %69, %55
  %88 = load %struct.bio*, %struct.bio** %4, align 8
  %89 = call i32 @biodone(%struct.bio* %88)
  br label %8
}

declare dso_local i32 @M25PXX_LOCK(%struct.mx25l_softc*) #1

declare dso_local i32 @M25PXX_UNLOCK(%struct.mx25l_softc*) #1

declare dso_local i32 @wakeup(%struct.mx25l_softc*) #1

declare dso_local i32 @kproc_exit(i32) #1

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local i32 @msleep(%struct.mx25l_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local i32 @mx25l_read(%struct.mx25l_softc*, i32, i32, i32) #1

declare dso_local i32 @mx25l_write(%struct.mx25l_softc*, i32, i32, i32) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
