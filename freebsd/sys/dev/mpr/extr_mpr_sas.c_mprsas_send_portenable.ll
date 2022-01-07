; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_send_portenable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_send_portenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.mpr_command = type { i32, i64, i32*, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@MPI2_FUNCTION_PORT_ENABLE = common dso_local global i32 0, align 4
@MPI2_REQ_DESCRIPT_FLAGS_DEFAULT_TYPE = common dso_local global i32 0, align 4
@mprsas_portenable_complete = common dso_local global i32 0, align 4
@MPR_XINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"mpr_send_portenable finished cm %p req %p complete %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*)* @mprsas_send_portenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mprsas_send_portenable(%struct.mpr_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.mpr_command*, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  %6 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %7 = call i32 @MPR_FUNCTRACE(%struct.mpr_softc* %6)
  %8 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %9 = call %struct.mpr_command* @mpr_alloc_command(%struct.mpr_softc* %8)
  store %struct.mpr_command* %9, %struct.mpr_command** %5, align 8
  %10 = icmp eq %struct.mpr_command* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %15 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %4, align 8
  %18 = load i32, i32* @MPI2_FUNCTION_PORT_ENABLE, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @MPI2_REQ_DESCRIPT_FLAGS_DEFAULT_TYPE, align 4
  %26 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %27 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  %30 = load i32, i32* @mprsas_portenable_complete, align 4
  %31 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %32 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %34 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %36 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %38 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %39 = call i32 @mpr_map_command(%struct.mpr_softc* %37, %struct.mpr_command* %38)
  %40 = load %struct.mpr_softc*, %struct.mpr_softc** %3, align 8
  %41 = load i32, i32* @MPR_XINFO, align 4
  %42 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %43 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %44 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mpr_command*, %struct.mpr_command** %5, align 8
  %47 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mpr_dprint(%struct.mpr_softc* %40, i32 %41, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.mpr_command* %42, i64 %45, i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %13, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @MPR_FUNCTRACE(%struct.mpr_softc*) #1

declare dso_local %struct.mpr_command* @mpr_alloc_command(%struct.mpr_softc*) #1

declare dso_local i32 @mpr_map_command(%struct.mpr_softc*, %struct.mpr_command*) #1

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, %struct.mpr_command*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
