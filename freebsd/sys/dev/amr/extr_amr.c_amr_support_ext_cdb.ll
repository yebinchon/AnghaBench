; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_support_ext_cdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_support_ext_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i64 (%struct.amr_command*)* }
%struct.amr_command = type opaque
%struct.amr_command.0 = type { i32, i64, i32 }

@AMR_CMD_PRIORITY = common dso_local global i32 0, align 4
@AMR_CMD_DATAOUT = common dso_local global i32 0, align 4
@AMR_STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_softc*)* @amr_support_ext_cdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_support_ext_cdb(%struct.amr_softc* %0) #0 {
  %2 = alloca %struct.amr_softc*, align 8
  %3 = alloca %struct.amr_command.0*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.amr_softc* %0, %struct.amr_softc** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %7 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %6, i32 0, i32 0
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %10 = call %struct.amr_command.0* @amr_alloccmd(%struct.amr_softc* %9)
  store %struct.amr_command.0* %10, %struct.amr_command.0** %3, align 8
  %11 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %12 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %11, i32 0, i32 0
  %13 = call i32 @mtx_unlock(i32* %12)
  %14 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %15 = icmp eq %struct.amr_command.0* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %47

17:                                               ; preds = %1
  %18 = load i32, i32* @AMR_CMD_PRIORITY, align 4
  %19 = load i32, i32* @AMR_CMD_DATAOUT, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %22 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %26 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %25, i32 0, i32 2
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 164, i32* %28, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 22, i32* %30, align 4
  %31 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %32 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %31, i32 0, i32 1
  %33 = load i64 (%struct.amr_command*)*, i64 (%struct.amr_command*)** %32, align 8
  %34 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %35 = bitcast %struct.amr_command.0* %34 to %struct.amr_command*
  %36 = call i64 %33(%struct.amr_command* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  br label %47

39:                                               ; preds = %17
  %40 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %41 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AMR_STATUS_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %39
  br label %47

47:                                               ; preds = %46, %38, %16
  %48 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %49 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %48, i32 0, i32 0
  %50 = call i32 @mtx_lock(i32* %49)
  %51 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %52 = icmp ne %struct.amr_command.0* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.amr_command.0*, %struct.amr_command.0** %3, align 8
  %55 = call i32 @amr_releasecmd(%struct.amr_command.0* %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %58 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %57, i32 0, i32 0
  %59 = call i32 @mtx_unlock(i32* %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.amr_command.0* @amr_alloccmd(%struct.amr_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @amr_releasecmd(%struct.amr_command.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
