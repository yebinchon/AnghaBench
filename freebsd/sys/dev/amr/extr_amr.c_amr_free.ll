; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i32, %struct.cdev*, i32, i32*, i32 }
%struct.cdev = type { i32 }
%struct.amr_command_cluster = type { i32 }

@acc_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amr_free(%struct.amr_softc* %0) #0 {
  %2 = alloca %struct.amr_softc*, align 8
  %3 = alloca %struct.amr_command_cluster*, align 8
  store %struct.amr_softc* %0, %struct.amr_softc** %2, align 8
  %4 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %5 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %4, i32 0, i32 4
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %10 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %13 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @device_delete_child(i32 %11, i32* %14)
  br label %16

16:                                               ; preds = %8, %1
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %19 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %18, i32 0, i32 3
  %20 = call %struct.amr_command_cluster* @TAILQ_FIRST(i32* %19)
  store %struct.amr_command_cluster* %20, %struct.amr_command_cluster** %3, align 8
  %21 = icmp ne %struct.amr_command_cluster* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %24 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %23, i32 0, i32 3
  %25 = load %struct.amr_command_cluster*, %struct.amr_command_cluster** %3, align 8
  %26 = load i32, i32* @acc_link, align 4
  %27 = call i32 @TAILQ_REMOVE(i32* %24, %struct.amr_command_cluster* %25, i32 %26)
  %28 = load %struct.amr_command_cluster*, %struct.amr_command_cluster** %3, align 8
  %29 = call i32 @amr_freecmd_cluster(%struct.amr_command_cluster* %28)
  br label %17

30:                                               ; preds = %17
  %31 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %32 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %31, i32 0, i32 2
  %33 = load %struct.cdev*, %struct.cdev** %32, align 8
  %34 = icmp ne %struct.cdev* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %37 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %36, i32 0, i32 2
  %38 = load %struct.cdev*, %struct.cdev** %37, align 8
  %39 = call i32 @destroy_dev(%struct.cdev* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %42 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %41, i32 0, i32 1
  %43 = call i64 @mtx_initialized(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %47 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %46, i32 0, i32 1
  %48 = call i32 @mtx_destroy(i32* %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %51 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %50, i32 0, i32 0
  %52 = call i64 @mtx_initialized(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %56 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %55, i32 0, i32 0
  %57 = call i32 @mtx_destroy(i32* %56)
  br label %58

58:                                               ; preds = %54, %49
  ret void
}

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local %struct.amr_command_cluster* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.amr_command_cluster*, i32) #1

declare dso_local i32 @amr_freecmd_cluster(%struct.amr_command_cluster*) #1

declare dso_local i32 @destroy_dev(%struct.cdev*) #1

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
