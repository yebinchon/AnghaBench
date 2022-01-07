; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_spawn_notify_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_spawn_notify_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, i32 }

@ciss_notify_thread = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"ciss_notify%d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not create notify thread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*)* @ciss_spawn_notify_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_spawn_notify_thread(%struct.ciss_softc* %0) #0 {
  %2 = alloca %struct.ciss_softc*, align 8
  store %struct.ciss_softc* %0, %struct.ciss_softc** %2, align 8
  %3 = load i64, i64* @ciss_notify_thread, align 8
  %4 = inttoptr i64 %3 to void (i8*)*
  %5 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %6 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %6, i32 0, i32 1
  %8 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = call i64 @kproc_create(void (i8*)* %4, %struct.ciss_softc* %5, i32* %7, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

declare dso_local i64 @kproc_create(void (i8*)*, %struct.ciss_softc*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
