; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_providergone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_providergone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { %struct.g_mirror_softc* }
%struct.g_mirror_softc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_provider*)* @g_mirror_providergone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_providergone(%struct.g_provider* %0) #0 {
  %2 = alloca %struct.g_provider*, align 8
  %3 = alloca %struct.g_mirror_softc*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %2, align 8
  %4 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  %5 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %4, i32 0, i32 0
  %6 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %5, align 8
  store %struct.g_mirror_softc* %6, %struct.g_mirror_softc** %3, align 8
  %7 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %8 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %14 = call i32 @g_mirror_free_device(%struct.g_mirror_softc* %13)
  br label %15

15:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @g_mirror_free_device(%struct.g_mirror_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
