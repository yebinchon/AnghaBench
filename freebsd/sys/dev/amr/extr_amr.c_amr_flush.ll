; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i64 (%struct.amr_command*)* }
%struct.amr_command = type opaque
%struct.amr_command.0 = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMR_CMD_PRIORITY = common dso_local global i32 0, align 4
@AMR_CMD_DATAOUT = common dso_local global i32 0, align 4
@AMR_CMD_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amr_flush(%struct.amr_softc* %0) #0 {
  %2 = alloca %struct.amr_softc*, align 8
  %3 = alloca %struct.amr_command.0*, align 8
  %4 = alloca i32, align 4
  store %struct.amr_softc* %0, %struct.amr_softc** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %6 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %5, i32 0, i32 0
  %7 = call i32 @mtx_lock(i32* %6)
  %8 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %9 = call %struct.amr_command.0* @amr_alloccmd(%struct.amr_softc* %8)
  store %struct.amr_command.0* %9, %struct.amr_command.0** %3, align 8
  %10 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %11 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %10, i32 0, i32 0
  %12 = call i32 @mtx_unlock(i32* %11)
  %13 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %14 = icmp eq %struct.amr_command.0* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = load i32, i32* @AMR_CMD_PRIORITY, align 4
  %18 = load i32, i32* @AMR_CMD_DATAOUT, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %21 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @AMR_CMD_FLUSH, align 4
  %25 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %26 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %29 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %28, i32 0, i32 1
  %30 = load i64 (%struct.amr_command*)*, i64 (%struct.amr_command*)** %29, align 8
  %31 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %32 = bitcast %struct.amr_command.0* %31 to %struct.amr_command*
  %33 = call i64 %30(%struct.amr_command* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  br label %40

36:                                               ; preds = %16
  %37 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %38 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %35, %15
  %41 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %42 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %41, i32 0, i32 0
  %43 = call i32 @mtx_lock(i32* %42)
  %44 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %45 = icmp ne %struct.amr_command.0* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %48 = call i32 @amr_releasecmd(%struct.amr_command.0* %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %51 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %50, i32 0, i32 0
  %52 = call i32 @mtx_unlock(i32* %51)
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.amr_command.0* @amr_alloccmd(%struct.amr_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @amr_releasecmd(%struct.amr_command.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
