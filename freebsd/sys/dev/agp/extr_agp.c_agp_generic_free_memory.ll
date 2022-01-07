; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_free_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_free_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i64, i64 }
%struct.agp_softc = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@am_link = common dso_local global i32 0, align 4
@M_AGP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_generic_free_memory(i32 %0, %struct.agp_memory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca %struct.agp_softc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.agp_memory* %1, %struct.agp_memory** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.agp_softc* @device_get_softc(i32 %7)
  store %struct.agp_softc* %8, %struct.agp_softc** %6, align 8
  %9 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %10 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EBUSY, align 4
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %17 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.agp_softc*, %struct.agp_softc** %6, align 8
  %20 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.agp_softc*, %struct.agp_softc** %6, align 8
  %26 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %25, i32 0, i32 0
  %27 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %28 = load i32, i32* @am_link, align 4
  %29 = call i32 @TAILQ_REMOVE(i32* %26, %struct.agp_memory* %27, i32 %28)
  %30 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %31 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vm_object_deallocate(i32 %32)
  %34 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %35 = load i32, i32* @M_AGP, align 4
  %36 = call i32 @free(%struct.agp_memory* %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %15, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.agp_softc* @device_get_softc(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.agp_memory*, i32) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @free(%struct.agp_memory*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
