; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_softc = type { i32, i32 }
%struct.ida_hardware_qcb = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ida_qcb = type { i32, i32, %struct.ida_hardware_qcb* }

@dumping = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"out of QCBs\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@IDA_COMMAND = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ida_command(%struct.ida_softc* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ida_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ida_hardware_qcb*, align 8
  %17 = alloca %struct.ida_qcb*, align 8
  %18 = alloca i32, align 4
  store %struct.ida_softc* %0, %struct.ida_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* @dumping, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %7
  %22 = load %struct.ida_softc*, %struct.ida_softc** %9, align 8
  %23 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %22, i32 0, i32 1
  %24 = load i32, i32* @MA_OWNED, align 4
  %25 = call i32 @mtx_assert(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %7
  %27 = load %struct.ida_softc*, %struct.ida_softc** %9, align 8
  %28 = call %struct.ida_qcb* @ida_get_qcb(%struct.ida_softc* %27)
  store %struct.ida_qcb* %28, %struct.ida_qcb** %17, align 8
  %29 = load %struct.ida_qcb*, %struct.ida_qcb** %17, align 8
  %30 = icmp eq %struct.ida_qcb* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.ida_softc*, %struct.ida_softc** %9, align 8
  %33 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EAGAIN, align 4
  store i32 %36, i32* %8, align 4
  br label %90

37:                                               ; preds = %26
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @IDA_COMMAND, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.ida_qcb*, %struct.ida_qcb** %17, align 8
  %42 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ida_qcb*, %struct.ida_qcb** %17, align 8
  %44 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %43, i32 0, i32 2
  %45 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %44, align 8
  store %struct.ida_hardware_qcb* %45, %struct.ida_hardware_qcb** %16, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %16, align 8
  %48 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @htole32(i32 %50)
  %52 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %16, align 8
  %53 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @DEV_BSIZE, align 4
  %57 = call i32 @howmany(i32 %55, i32 %56)
  %58 = call i32 @htole16(i32 %57)
  %59 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %16, align 8
  %60 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %16, align 8
  %64 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ida_softc*, %struct.ida_softc** %9, align 8
  %67 = load %struct.ida_qcb*, %struct.ida_qcb** %17, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @ida_map_qcb(%struct.ida_softc* %66, %struct.ida_qcb* %67, i8* %68, i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %37
  %74 = load %struct.ida_softc*, %struct.ida_softc** %9, align 8
  %75 = load %struct.ida_qcb*, %struct.ida_qcb** %17, align 8
  %76 = call i32 @ida_wait(%struct.ida_softc* %74, %struct.ida_qcb* %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %18, align 4
  store i32 %80, i32* %8, align 4
  br label %90

81:                                               ; preds = %73
  %82 = load %struct.ida_qcb*, %struct.ida_qcb** %17, align 8
  %83 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %18, align 4
  br label %85

85:                                               ; preds = %81, %37
  %86 = load %struct.ida_softc*, %struct.ida_softc** %9, align 8
  %87 = load %struct.ida_qcb*, %struct.ida_qcb** %17, align 8
  %88 = call i32 @ida_free_qcb(%struct.ida_softc* %86, %struct.ida_qcb* %87)
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %85, %79, %31
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.ida_qcb* @ida_get_qcb(%struct.ida_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @ida_map_qcb(%struct.ida_softc*, %struct.ida_qcb*, i8*, i32) #1

declare dso_local i32 @ida_wait(%struct.ida_softc*, %struct.ida_qcb*) #1

declare dso_local i32 @ida_free_qcb(%struct.ida_softc*, %struct.ida_qcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
