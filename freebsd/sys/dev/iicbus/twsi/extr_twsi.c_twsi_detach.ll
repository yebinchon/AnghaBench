; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twsi_softc = type { i32, i32*, i32*, i32, i32* }

@res_spec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twsi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.twsi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.twsi_softc* @device_get_softc(i32 %6)
  store %struct.twsi_softc* %7, %struct.twsi_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @bus_generic_detach(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %15 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @device_delete_child(i32 %19, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %56

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %30 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @bus_teardown_intr(i32 %36, i32 %41, i32* %44)
  br label %46

46:                                               ; preds = %33, %28
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @res_spec, align 4
  %49 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %50 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_release_resources(i32 %47, i32 %48, i32* %51)
  %53 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %54 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %53, i32 0, i32 0
  %55 = call i32 @mtx_destroy(i32* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %46, %25, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.twsi_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
