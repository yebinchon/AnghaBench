; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_get_eventstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_get_eventstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mly_command_ioctl = type { i32 }
%struct.mly_health_status = type { i32, i32 }

@MDACIOCTL_GETHEALTHSTATUS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"initial change counter %d, event counter %d\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_softc*)* @mly_get_eventstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_get_eventstatus(%struct.mly_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mly_softc*, align 8
  %4 = alloca %struct.mly_command_ioctl, align 4
  %5 = alloca %struct.mly_health_status*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %3, align 8
  %8 = call i32 @bzero(%struct.mly_command_ioctl* %4, i32 4)
  store %struct.mly_health_status* null, %struct.mly_health_status** %5, align 8
  %9 = load i32, i32* @MDACIOCTL_GETHEALTHSTATUS, align 4
  %10 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %12 = bitcast %struct.mly_health_status** %5 to i8**
  %13 = call i32 @mly_ioctl(%struct.mly_softc* %11, %struct.mly_command_ioctl* %4, i8** %12, i32 8, i64* %6, i32* null, i32* null)
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @EIO, align 4
  store i32 %21, i32* %2, align 4
  br label %55

22:                                               ; preds = %17
  %23 = load %struct.mly_health_status*, %struct.mly_health_status** %5, align 8
  %24 = getelementptr inbounds %struct.mly_health_status, %struct.mly_health_status* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mly_health_status*, %struct.mly_health_status** %5, align 8
  %29 = getelementptr inbounds %struct.mly_health_status, %struct.mly_health_status* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mly_health_status*, %struct.mly_health_status** %5, align 8
  %34 = getelementptr inbounds %struct.mly_health_status, %struct.mly_health_status* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mly_health_status*, %struct.mly_health_status** %5, align 8
  %39 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @bcopy(%struct.mly_health_status* %38, i32* %43, i32 8)
  %45 = load %struct.mly_health_status*, %struct.mly_health_status** %5, align 8
  %46 = getelementptr inbounds %struct.mly_health_status, %struct.mly_health_status* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mly_health_status*, %struct.mly_health_status** %5, align 8
  %49 = getelementptr inbounds %struct.mly_health_status, %struct.mly_health_status* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @debug(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load %struct.mly_health_status*, %struct.mly_health_status** %5, align 8
  %53 = load i32, i32* @M_DEVBUF, align 4
  %54 = call i32 @free(%struct.mly_health_status* %52, i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %22, %20, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @bzero(%struct.mly_command_ioctl*, i32) #1

declare dso_local i32 @mly_ioctl(%struct.mly_softc*, %struct.mly_command_ioctl*, i8**, i32, i64*, i32*, i32*) #1

declare dso_local i32 @bcopy(%struct.mly_health_status*, i32*, i32) #1

declare dso_local i32 @debug(i32, i8*, i32, i32) #1

declare dso_local i32 @free(%struct.mly_health_status*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
