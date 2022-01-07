; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pst_softc = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pst_request = type { i32, %struct.pst_softc*, %struct.bio*, i32 }
%struct.bio = type { i32 }

@I2O_IOP_OUTBOUND_FRAME_COUNT = common dso_local global i32 0, align 4
@M_PSTRAID = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pst: out of memory in start\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pst_softc*)* @pst_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pst_start(%struct.pst_softc* %0) #0 {
  %2 = alloca %struct.pst_softc*, align 8
  %3 = alloca %struct.pst_request*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.pst_softc* %0, %struct.pst_softc** %2, align 8
  %6 = load %struct.pst_softc*, %struct.pst_softc** %2, align 8
  %7 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2O_IOP_OUTBOUND_FRAME_COUNT, align 4
  %12 = sub nsw i32 %11, 1
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %100

14:                                               ; preds = %1
  %15 = load %struct.pst_softc*, %struct.pst_softc** %2, align 8
  %16 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %15, i32 0, i32 1
  %17 = call %struct.bio* @bioq_first(i32* %16)
  store %struct.bio* %17, %struct.bio** %4, align 8
  %18 = icmp ne %struct.bio* %17, null
  br i1 %18, label %19, label %100

19:                                               ; preds = %14
  %20 = load %struct.pst_softc*, %struct.pst_softc** %2, align 8
  %21 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = call i32 @iop_get_mfa(%struct.TYPE_3__* %22)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %99

25:                                               ; preds = %19
  %26 = load %struct.pst_softc*, %struct.pst_softc** %2, align 8
  %27 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %26, i32 0, i32 1
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = call i32 @bioq_remove(i32* %27, %struct.bio* %28)
  %30 = load i32, i32* @M_PSTRAID, align 4
  %31 = load i32, i32* @M_NOWAIT, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.pst_request* @malloc(i32 32, i32 %30, i32 %33)
  store %struct.pst_request* %34, %struct.pst_request** %3, align 8
  %35 = icmp ne %struct.pst_request* %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %25
  %37 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %39 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %38, i32 0, i32 2
  %40 = load %struct.bio*, %struct.bio** %39, align 8
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @biofinish(%struct.bio* %40, i32* null, i32 %41)
  %43 = load %struct.pst_softc*, %struct.pst_softc** %2, align 8
  %44 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @iop_free_mfa(%struct.TYPE_3__* %45, i32 %46)
  br label %100

48:                                               ; preds = %25
  %49 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %50 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %49, i32 0, i32 3
  %51 = load %struct.pst_softc*, %struct.pst_softc** %2, align 8
  %52 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = call i32 @callout_init_mtx(i32* %50, i32* %54, i32 0)
  %56 = load %struct.pst_softc*, %struct.pst_softc** %2, align 8
  %57 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.pst_softc*, %struct.pst_softc** %2, align 8
  %63 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %64 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %63, i32 0, i32 1
  store %struct.pst_softc* %62, %struct.pst_softc** %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %67 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.bio*, %struct.bio** %4, align 8
  %69 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %70 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %69, i32 0, i32 2
  store %struct.bio* %68, %struct.bio** %70, align 8
  %71 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %72 = call i64 @pst_rw(%struct.pst_request* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %48
  %75 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %76 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %75, i32 0, i32 2
  %77 = load %struct.bio*, %struct.bio** %76, align 8
  %78 = load i32, i32* @EIO, align 4
  %79 = call i32 @biofinish(%struct.bio* %77, i32* null, i32 %78)
  %80 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %81 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %80, i32 0, i32 1
  %82 = load %struct.pst_softc*, %struct.pst_softc** %81, align 8
  %83 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %86 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @iop_free_mfa(%struct.TYPE_3__* %84, i32 %87)
  %89 = load %struct.pst_softc*, %struct.pst_softc** %2, align 8
  %90 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.pst_request*, %struct.pst_request** %3, align 8
  %96 = load i32, i32* @M_PSTRAID, align 4
  %97 = call i32 @free(%struct.pst_request* %95, i32 %96)
  br label %98

98:                                               ; preds = %74, %48
  br label %99

99:                                               ; preds = %98, %19
  br label %100

100:                                              ; preds = %36, %99, %14, %1
  ret void
}

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local i32 @iop_get_mfa(%struct.TYPE_3__*) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local %struct.pst_request* @malloc(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @biofinish(%struct.bio*, i32*, i32) #1

declare dso_local i32 @iop_free_mfa(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i64 @pst_rw(%struct.pst_request*) #1

declare dso_local i32 @free(%struct.pst_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
