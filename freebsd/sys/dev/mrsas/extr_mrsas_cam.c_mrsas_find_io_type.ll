; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_find_io_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_find_io_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@READ_WRITE_SYSPDIO = common dso_local global i32 0, align 4
@READ_WRITE_LDIO = common dso_local global i32 0, align 4
@NON_READ_WRITE_SYSPDIO = common dso_local global i32 0, align 4
@NON_READ_WRITE_LDIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_find_io_type(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_sim*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %7 = load %union.ccb*, %union.ccb** %5, align 8
  %8 = bitcast %union.ccb* %7 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %8, %struct.ccb_scsiio** %6, align 8
  %9 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %10 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %25 [
    i32 135, label %15
    i32 131, label %15
    i32 134, label %15
    i32 130, label %15
    i32 132, label %15
    i32 128, label %15
    i32 133, label %15
    i32 129, label %15
  ]

15:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %16 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %17 = call i32 @cam_sim_bus(%struct.cam_sim* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @READ_WRITE_SYSPDIO, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @READ_WRITE_LDIO, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %27 = call i32 @cam_sim_bus(%struct.cam_sim* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @NON_READ_WRITE_SYSPDIO, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @NON_READ_WRITE_LDIO, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
