; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cbbnomem\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@CBB_SOCKET_MASK = common dso_local global i32 0, align 4
@EXCA_INTR = common dso_local global i32 0, align 4
@EXCA_INTR_RESET = common dso_local global i32 0, align 4
@CARD_OFF = common dso_local global i32 0, align 4
@CBB_SOCKET_EVENT = common dso_local global i32 0, align 4
@CBB_KTHREAD_DONE = common dso_local global i32 0, align 4
@CBB_KTHREAD_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Waiting for thread to die\0A\00", align 1
@PWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"cbbun\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@CBBR_SOCKBASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cbb_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cbb_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.cbb_softc* @device_get_softc(i32 %10)
  store %struct.cbb_softc* %11, %struct.cbb_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @bus_generic_detach(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %130

18:                                               ; preds = %1
  store i32 10, i32* %7, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_get_children(i32 %20, i32** %5, i32* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %36

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %32

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %7, align 4
  %35 = icmp sgt i32 %33, 0
  br i1 %35, label %19, label %36

36:                                               ; preds = %32, %24
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @device_delete_child(i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %37

52:                                               ; preds = %37
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @M_TEMP, align 4
  %55 = call i32 @free(i32* %53, i32 %54)
  %56 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %57 = load i32, i32* @CBB_SOCKET_MASK, align 4
  %58 = call i32 @cbb_set(%struct.cbb_softc* %56, i32 %57, i32 0)
  %59 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %60 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* @EXCA_INTR, align 4
  %64 = load i32, i32* @EXCA_INTR_RESET, align 4
  %65 = call i32 @exca_clrb(i32* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @CARD_OFF, align 4
  %68 = call i32 @cbb_power(i32 %66, i32 %67)
  %69 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %70 = load i32, i32* @CBB_SOCKET_EVENT, align 4
  %71 = call i32 @cbb_set(%struct.cbb_softc* %69, i32 %70, i32 -1)
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %74 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %77 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bus_teardown_intr(i32 %72, i32 %75, i32 %78)
  %80 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %81 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %80, i32 0, i32 1
  %82 = call i32 @mtx_lock(i32* %81)
  %83 = load i32, i32* @CBB_KTHREAD_DONE, align 4
  %84 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %85 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %95, %52
  %89 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %90 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CBB_KTHREAD_RUNNING, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %88
  %96 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %97 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @DEVPRINTF(i32 ptrtoint ([27 x i8]* @.str.1 to i32))
  %100 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %101 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %100, i32 0, i32 5
  %102 = call i32 @wakeup(i32* %101)
  %103 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %104 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %107 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %106, i32 0, i32 1
  %108 = load i32, i32* @PWAIT, align 4
  %109 = call i32 @msleep(i32 %105, i32* %107, i32 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %88

110:                                              ; preds = %88
  %111 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %112 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %111, i32 0, i32 1
  %113 = call i32 @mtx_unlock(i32* %112)
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @SYS_RES_IRQ, align 4
  %116 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %117 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bus_release_resource(i32 %114, i32 %115, i32 0, i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @SYS_RES_MEMORY, align 4
  %122 = load i32, i32* @CBBR_SOCKBASE, align 4
  %123 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %124 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @bus_release_resource(i32 %120, i32 %121, i32 %122, i32 %125)
  %127 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %128 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %127, i32 0, i32 1
  %129 = call i32 @mtx_destroy(i32* %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %110, %16
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_get_children(i32, i32**, i32*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @cbb_set(%struct.cbb_softc*, i32, i32) #1

declare dso_local i32 @exca_clrb(i32*, i32, i32) #1

declare dso_local i32 @cbb_power(i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @DEVPRINTF(i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
