; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_find_periph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_find_periph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.mly_softc = type { i32* }
%struct.cam_path = type { i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cam_periph* (%struct.mly_softc*, i32, i32)* @mly_find_periph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cam_periph* @mly_find_periph(%struct.mly_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mly_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_periph*, align 8
  %8 = alloca %struct.cam_path*, align 8
  %9 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cam_sim_path(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @xpt_create_path(%struct.cam_path** %8, i32* null, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @CAM_REQ_CMP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.cam_path*, %struct.cam_path** %8, align 8
  %25 = call %struct.cam_periph* @cam_periph_find(%struct.cam_path* %24, i32* null)
  store %struct.cam_periph* %25, %struct.cam_periph** %7, align 8
  %26 = load %struct.cam_path*, %struct.cam_path** %8, align 8
  %27 = call i32 @xpt_free_path(%struct.cam_path* %26)
  br label %29

28:                                               ; preds = %3
  store %struct.cam_periph* null, %struct.cam_periph** %7, align 8
  br label %29

29:                                               ; preds = %28, %23
  %30 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  ret %struct.cam_periph* %30
}

declare dso_local i32 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local %struct.cam_periph* @cam_periph_find(%struct.cam_path*, i32*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
