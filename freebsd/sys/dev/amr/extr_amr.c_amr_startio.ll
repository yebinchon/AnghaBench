; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_startio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_startio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i32 (%struct.amr_softc*, %struct.amr_command**)* }
%struct.amr_command = type opaque
%struct.amr_command.0 = type { i32 }

@AMR_STATE_QUEUE_FRZN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"controller busy, command deferred\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amr_startio(%struct.amr_softc* %0) #0 {
  %2 = alloca %struct.amr_softc*, align 8
  %3 = alloca %struct.amr_command.0*, align 8
  store %struct.amr_softc* %0, %struct.amr_softc** %2, align 8
  br label %4

4:                                                ; preds = %47, %1
  %5 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %6 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @AMR_STATE_QUEUE_FRZN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %48

12:                                               ; preds = %4
  %13 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %14 = call %struct.amr_command.0* @amr_dequeue_ready(%struct.amr_softc* %13)
  store %struct.amr_command.0* %14, %struct.amr_command.0** %3, align 8
  %15 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %16 = icmp eq %struct.amr_command.0* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %19 = call i32 @amr_bio_command(%struct.amr_softc* %18, %struct.amr_command.0** %3)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %22 = icmp eq %struct.amr_command.0* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %25 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %24, i32 0, i32 1
  %26 = load i32 (%struct.amr_softc*, %struct.amr_command**)*, i32 (%struct.amr_softc*, %struct.amr_command**)** %25, align 8
  %27 = icmp ne i32 (%struct.amr_softc*, %struct.amr_command**)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %30 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %29, i32 0, i32 1
  %31 = load i32 (%struct.amr_softc*, %struct.amr_command**)*, i32 (%struct.amr_softc*, %struct.amr_command**)** %30, align 8
  %32 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %33 = bitcast %struct.amr_command.0** %3 to %struct.amr_command**
  %34 = call i32 %31(%struct.amr_softc* %32, %struct.amr_command** %33)
  br label %35

35:                                               ; preds = %28, %23, %20
  %36 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %37 = icmp eq %struct.amr_command.0* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %48

39:                                               ; preds = %35
  %40 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %41 = call i64 @amr_start(%struct.amr_command.0* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = call i32 @debug(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %46 = call i32 @amr_requeue_ready(%struct.amr_command.0* %45)
  br label %48

47:                                               ; preds = %39
  br label %4

48:                                               ; preds = %43, %38, %11
  ret void
}

declare dso_local %struct.amr_command.0* @amr_dequeue_ready(%struct.amr_softc*) #1

declare dso_local i32 @amr_bio_command(%struct.amr_softc*, %struct.amr_command.0**) #1

declare dso_local i64 @amr_start(%struct.amr_command.0*) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i32 @amr_requeue_ready(%struct.amr_command.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
