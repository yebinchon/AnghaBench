; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_softc = type { i32, i32, i32, %struct.rc_chans* }
%struct.rc_chans = type { i32 }

@CD180_NCHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to deregister interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rc_softc*, align 8
  %4 = alloca %struct.rc_chans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.rc_softc* @device_get_softc(i32 %7)
  store %struct.rc_softc* %8, %struct.rc_softc** %3, align 8
  %9 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %9, i32 0, i32 3
  %11 = load %struct.rc_chans*, %struct.rc_chans** %10, align 8
  store %struct.rc_chans* %11, %struct.rc_chans** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %21, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @CD180_NCHAN, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %18 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ttyfree(i32 %19)
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load %struct.rc_chans*, %struct.rc_chans** %4, align 8
  %25 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %24, i32 1
  store %struct.rc_chans* %25, %struct.rc_chans** %4, align 8
  br label %12

26:                                               ; preds = %12
  %27 = load i32, i32* %2, align 4
  %28 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %32 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bus_teardown_intr(i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %26
  %41 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %42 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @swi_remove(i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @rc_release_resources(i32 %45)
  ret i32 0
}

declare dso_local %struct.rc_softc* @device_get_softc(i32) #1

declare dso_local i32 @ttyfree(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @swi_remove(i32) #1

declare dso_local i32 @rc_release_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
