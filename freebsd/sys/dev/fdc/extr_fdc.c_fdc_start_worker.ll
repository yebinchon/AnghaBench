; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_start_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_start_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32 }

@fdc_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fdc%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdc_start_worker(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fdc_data*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.fdc_data* @device_get_softc(i32 %4)
  store %struct.fdc_data* %5, %struct.fdc_data** %3, align 8
  %6 = load i32, i32* @fdc_thread, align 4
  %7 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %8 = load %struct.fdc_data*, %struct.fdc_data** %3, align 8
  %9 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %8, i32 0, i32 0
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = call i32 @kproc_create(i32 %6, %struct.fdc_data* %7, i32* %9, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %11)
  ret void
}

declare dso_local %struct.fdc_data* @device_get_softc(i32) #1

declare dso_local i32 @kproc_create(i32, %struct.fdc_data*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
