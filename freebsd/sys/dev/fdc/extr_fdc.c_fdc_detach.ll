; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32, i32, i32, i32, i32, i32*, i32 }

@FDC_KTHREAD_EXIT = common dso_local global i32 0, align 4
@FDC_KTHREAD_ALIVE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fdcdet\00", align 1
@FDC_NODMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdc_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.fdc_data* @device_get_softc(i32 %6)
  store %struct.fdc_data* %7, %struct.fdc_data** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @bus_generic_detach(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %79

13:                                               ; preds = %1
  %14 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %15 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %21 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %24 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @bus_teardown_intr(i32 %19, i32 %22, i32* %25)
  br label %27

27:                                               ; preds = %18, %13
  %28 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %29 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %28, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %31 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %30, i32 0, i32 1
  %32 = call i32 @mtx_lock(i32* %31)
  %33 = load i32, i32* @FDC_KTHREAD_EXIT, align 4
  %34 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %35 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %39 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %38, i32 0, i32 4
  %40 = call i32 @wakeup(i32* %39)
  br label %41

41:                                               ; preds = %48, %27
  %42 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %43 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @FDC_KTHREAD_ALIVE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %50 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %53 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %52, i32 0, i32 1
  %54 = load i32, i32* @PRIBIO, align 4
  %55 = call i32 @msleep(i32 %51, i32* %53, i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %41

56:                                               ; preds = %41
  %57 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %58 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %57, i32 0, i32 1
  %59 = call i32 @mtx_unlock(i32* %58)
  %60 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %61 = call i32 @fdout_wr(%struct.fdc_data* %60, i32 0)
  %62 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %63 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FDC_NODMA, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %56
  %69 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %70 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @isa_dma_release(i32 %71)
  br label %73

73:                                               ; preds = %68, %56
  %74 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %75 = call i32 @fdc_release_resources(%struct.fdc_data* %74)
  %76 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %77 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %76, i32 0, i32 1
  %78 = call i32 @mtx_destroy(i32* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %73, %11
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.fdc_data* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @fdout_wr(%struct.fdc_data*, i32) #1

declare dso_local i32 @isa_dma_release(i32) #1

declare dso_local i32 @fdc_release_resources(%struct.fdc_data*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
