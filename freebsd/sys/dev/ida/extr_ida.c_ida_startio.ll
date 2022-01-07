; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_startio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_startio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_softc = type { i32, i32, i32 }
%struct.ida_hardware_qcb = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ida_qcb = type { i32, %struct.ida_hardware_qcb*, i32, %struct.bio* }
%struct.bio = type { i64, i32, i32, i32, %struct.idad_softc* }
%struct.idad_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IDA_QFROZEN = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@DMA_DATA_IN = common dso_local global i32 0, align 4
@DMA_DATA_OUT = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@CMD_READ = common dso_local global i32 0, align 4
@CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ida_softc*)* @ida_startio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ida_startio(%struct.ida_softc* %0) #0 {
  %2 = alloca %struct.ida_softc*, align 8
  %3 = alloca %struct.ida_hardware_qcb*, align 8
  %4 = alloca %struct.ida_qcb*, align 8
  %5 = alloca %struct.idad_softc*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  store %struct.ida_softc* %0, %struct.ida_softc** %2, align 8
  %8 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %8, i32 0, i32 2
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  br label %12

12:                                               ; preds = %112, %1
  %13 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IDA_QFROZEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %113

20:                                               ; preds = %12
  %21 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %21, i32 0, i32 1
  %23 = call %struct.bio* @bioq_first(i32* %22)
  store %struct.bio* %23, %struct.bio** %6, align 8
  %24 = load %struct.bio*, %struct.bio** %6, align 8
  %25 = icmp eq %struct.bio* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %113

27:                                               ; preds = %20
  %28 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %29 = call %struct.ida_qcb* @ida_get_qcb(%struct.ida_softc* %28)
  store %struct.ida_qcb* %29, %struct.ida_qcb** %4, align 8
  %30 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %31 = icmp eq %struct.ida_qcb* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %113

33:                                               ; preds = %27
  %34 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %34, i32 0, i32 1
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  %37 = call i32 @bioq_remove(i32* %35, %struct.bio* %36)
  %38 = load %struct.bio*, %struct.bio** %6, align 8
  %39 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %40 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %39, i32 0, i32 3
  store %struct.bio* %38, %struct.bio** %40, align 8
  %41 = load %struct.bio*, %struct.bio** %6, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BIO_READ, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @DMA_DATA_IN, align 4
  br label %50

48:                                               ; preds = %33
  %49 = load i32, i32* @DMA_DATA_OUT, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %53 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %55 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %54, i32 0, i32 1
  %56 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %55, align 8
  store %struct.ida_hardware_qcb* %56, %struct.ida_hardware_qcb** %3, align 8
  %57 = load %struct.bio*, %struct.bio** %6, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 4
  %59 = load %struct.idad_softc*, %struct.idad_softc** %58, align 8
  store %struct.idad_softc* %59, %struct.idad_softc** %5, align 8
  %60 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %61 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %3, align 8
  %64 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.bio*, %struct.bio** %6, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %3, align 8
  %70 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load %struct.bio*, %struct.bio** %6, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DEV_BSIZE, align 4
  %76 = call i32 @howmany(i32 %74, i32 %75)
  %77 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %3, align 8
  %78 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.bio*, %struct.bio** %6, align 8
  %81 = getelementptr inbounds %struct.bio, %struct.bio* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @BIO_READ, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %50
  %86 = load i32, i32* @CMD_READ, align 4
  br label %89

87:                                               ; preds = %50
  %88 = load i32, i32* @CMD_WRITE, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.ida_hardware_qcb*, %struct.ida_hardware_qcb** %3, align 8
  %92 = getelementptr inbounds %struct.ida_hardware_qcb, %struct.ida_hardware_qcb* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %95 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %96 = load %struct.bio*, %struct.bio** %6, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.bio*, %struct.bio** %6, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ida_map_qcb(%struct.ida_softc* %94, %struct.ida_qcb* %95, i32 %98, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %89
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %108 = getelementptr inbounds %struct.ida_qcb, %struct.ida_qcb* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %110 = load %struct.ida_qcb*, %struct.ida_qcb** %4, align 8
  %111 = call i32 @ida_done(%struct.ida_softc* %109, %struct.ida_qcb* %110)
  br label %112

112:                                              ; preds = %105, %89
  br label %12

113:                                              ; preds = %32, %26, %19
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local %struct.ida_qcb* @ida_get_qcb(%struct.ida_softc*) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @ida_map_qcb(%struct.ida_softc*, %struct.ida_qcb*, i32, i32) #1

declare dso_local i32 @ida_done(%struct.ida_softc*, %struct.ida_qcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
