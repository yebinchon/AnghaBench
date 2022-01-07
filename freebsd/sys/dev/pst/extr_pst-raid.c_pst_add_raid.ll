; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_add_raid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_add_raid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { i32 }
%struct.i2o_lct_entry = type { i32 }
%struct.pst_softc = type { %struct.i2o_lct_entry*, %struct.iop_softc* }

@.str = private unnamed_addr constant [4 x i8] c"pst\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@M_PSTRAID = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pst_add_raid(%struct.iop_softc* %0, %struct.i2o_lct_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iop_softc*, align 8
  %5 = alloca %struct.i2o_lct_entry*, align 8
  %6 = alloca %struct.pst_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.iop_softc* %0, %struct.iop_softc** %4, align 8
  store %struct.i2o_lct_entry* %1, %struct.i2o_lct_entry** %5, align 8
  %8 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %9 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_add_child(i32 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load i32, i32* @M_PSTRAID, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.pst_softc* @malloc(i32 16, i32 %17, i32 %20)
  store %struct.pst_softc* %21, %struct.pst_softc** %6, align 8
  %22 = icmp ne %struct.pst_softc* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %25 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @device_delete_child(i32 %26, i32 %27)
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %16
  %31 = load %struct.iop_softc*, %struct.iop_softc** %4, align 8
  %32 = load %struct.pst_softc*, %struct.pst_softc** %6, align 8
  %33 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %32, i32 0, i32 1
  store %struct.iop_softc* %31, %struct.iop_softc** %33, align 8
  %34 = load %struct.i2o_lct_entry*, %struct.i2o_lct_entry** %5, align 8
  %35 = load %struct.pst_softc*, %struct.pst_softc** %6, align 8
  %36 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %35, i32 0, i32 0
  store %struct.i2o_lct_entry* %34, %struct.i2o_lct_entry** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.pst_softc*, %struct.pst_softc** %6, align 8
  %39 = call i32 @device_set_softc(i32 %37, %struct.pst_softc* %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @device_probe_and_attach(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %30, %23, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local %struct.pst_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @device_set_softc(i32, %struct.pst_softc*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
