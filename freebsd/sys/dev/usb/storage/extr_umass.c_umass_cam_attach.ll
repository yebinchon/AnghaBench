; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_cam_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_cam_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i8*, i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"%s:%d:%d: Attached to scbus%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umass_softc*)* @umass_cam_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_cam_attach(%struct.umass_softc* %0) #0 {
  %2 = alloca %struct.umass_softc*, align 8
  store %struct.umass_softc* %0, %struct.umass_softc** %2, align 8
  %3 = load i64, i64* @bootverbose, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %7 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %10 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cam_sim_path(i32 %11)
  %13 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %14 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.umass_softc*, %struct.umass_softc** %2, align 8
  %17 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cam_sim_path(i32 %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %12, i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
