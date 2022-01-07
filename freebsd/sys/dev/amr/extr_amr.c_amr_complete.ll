; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i32, i32, i32, i32 (%struct.amr_softc*)* }
%struct.amr_command = type { i32, i32, i32, i32, i32 (%struct.amr_softc*)* }

@AMR_CMD_BUSY = common dso_local global i32 0, align 4
@AMR_CMD_SLEEP = common dso_local global i32 0, align 4
@AMR_STATE_QUEUE_FRZN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @amr_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_complete(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.amr_softc*, align 8
  %6 = alloca %struct.amr_command*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amr_softc*
  store %struct.amr_softc* %8, %struct.amr_softc** %5, align 8
  %9 = call i32 @debug_called(i32 3)
  br label %10

10:                                               ; preds = %71, %2
  %11 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.amr_softc* @amr_dequeue_completed(%struct.amr_softc* %11, i32* %12)
  %14 = bitcast %struct.amr_softc* %13 to %struct.amr_command*
  store %struct.amr_command* %14, %struct.amr_command** %6, align 8
  %15 = load %struct.amr_command*, %struct.amr_command** %6, align 8
  %16 = icmp eq %struct.amr_command* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %72

18:                                               ; preds = %10
  %19 = load %struct.amr_command*, %struct.amr_command** %6, align 8
  %20 = bitcast %struct.amr_command* %19 to %struct.amr_softc*
  %21 = call i32 @amr_unmapcmd(%struct.amr_softc* %20)
  %22 = load %struct.amr_command*, %struct.amr_command** %6, align 8
  %23 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %22, i32 0, i32 4
  %24 = load i32 (%struct.amr_softc*)*, i32 (%struct.amr_softc*)** %23, align 8
  %25 = icmp ne i32 (%struct.amr_softc*)* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load i32, i32* @AMR_CMD_BUSY, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.amr_command*, %struct.amr_command** %6, align 8
  %30 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.amr_command*, %struct.amr_command** %6, align 8
  %34 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %33, i32 0, i32 4
  %35 = load i32 (%struct.amr_softc*)*, i32 (%struct.amr_softc*)** %34, align 8
  %36 = load %struct.amr_command*, %struct.amr_command** %6, align 8
  %37 = bitcast %struct.amr_command* %36 to %struct.amr_softc*
  %38 = call i32 %35(%struct.amr_softc* %37)
  br label %63

39:                                               ; preds = %18
  %40 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %41 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %40, i32 0, i32 1
  %42 = call i32 @mtx_lock(i32* %41)
  %43 = load i32, i32* @AMR_CMD_BUSY, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.amr_command*, %struct.amr_command** %6, align 8
  %46 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.amr_command*, %struct.amr_command** %6, align 8
  %50 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AMR_CMD_SLEEP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %39
  %56 = load %struct.amr_command*, %struct.amr_command** %6, align 8
  %57 = bitcast %struct.amr_command* %56 to %struct.amr_softc*
  %58 = call i32 @wakeup(%struct.amr_softc* %57)
  br label %59

59:                                               ; preds = %55, %39
  %60 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %61 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %60, i32 0, i32 1
  %62 = call i32 @mtx_unlock(i32* %61)
  br label %63

63:                                               ; preds = %59, %26
  %64 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %65 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %70 = call i32 @wakeup(%struct.amr_softc* %69)
  br label %71

71:                                               ; preds = %68, %63
  br label %10

72:                                               ; preds = %17
  %73 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %74 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %73, i32 0, i32 1
  %75 = call i32 @mtx_lock(i32* %74)
  %76 = load i32, i32* @AMR_STATE_QUEUE_FRZN, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %79 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %83 = call i32 @amr_startio(%struct.amr_softc* %82)
  %84 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %85 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %84, i32 0, i32 1
  %86 = call i32 @mtx_unlock(i32* %85)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.amr_softc* @amr_dequeue_completed(%struct.amr_softc*, i32*) #1

declare dso_local i32 @amr_unmapcmd(%struct.amr_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.amr_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @amr_startio(%struct.amr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
