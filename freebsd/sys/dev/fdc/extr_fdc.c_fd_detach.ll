; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_data = type { i32 }

@fd_detach_geom = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@DS_BUSY = common dso_local global i64 0, align 8
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fdd\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fd_data*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.fd_data* @device_get_softc(i32 %4)
  store %struct.fd_data* %5, %struct.fd_data** %3, align 8
  %6 = load i32, i32* @fd_detach_geom, align 4
  %7 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = call i32 @g_waitfor_event(i32 %6, %struct.fd_data* %7, i32 %8, i32* null)
  br label %10

10:                                               ; preds = %15, %1
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @device_get_state(i32 %11)
  %13 = load i64, i64* @DS_BUSY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %17 = load i32, i32* @PZERO, align 4
  %18 = load i32, i32* @hz, align 4
  %19 = sdiv i32 %18, 10
  %20 = call i32 @tsleep(%struct.fd_data* %16, i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %10

21:                                               ; preds = %10
  %22 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %23 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %22, i32 0, i32 0
  %24 = call i32 @callout_drain(i32* %23)
  ret i32 0
}

declare dso_local %struct.fd_data* @device_get_softc(i32) #1

declare dso_local i32 @g_waitfor_event(i32, %struct.fd_data*, i32, i32*) #1

declare dso_local i64 @device_get_state(i32) #1

declare dso_local i32 @tsleep(%struct.fd_data*, i32, i8*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
