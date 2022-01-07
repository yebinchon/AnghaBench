; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_add_els_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_add_els_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@MPT_MAX_ELS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@REQ_STATE_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unable to add ELS buffer resources\0A\00", align 1
@MPT_PRT_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"only added %d of %d  ELS buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_add_els_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_add_els_buffers(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %6 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %2, align 4
  br label %98

12:                                               ; preds = %1
  %13 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %2, align 4
  br label %98

19:                                               ; preds = %12
  %20 = load i32, i32* @MPT_MAX_ELS, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @M_DEVBUF, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.TYPE_6__** @malloc(i32 %23, i32 %24, i32 %27)
  %29 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %29, i32 0, i32 2
  store %struct.TYPE_6__** %28, %struct.TYPE_6__*** %30, align 8
  %31 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %32, align 8
  %34 = icmp eq %struct.TYPE_6__** %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %98

37:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %66, %37
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MPT_MAX_ELS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = call %struct.TYPE_6__* @mpt_get_request(%struct.mpt_softc* %43, i32 %44)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %5, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = icmp eq %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %69

49:                                               ; preds = %42
  %50 = load i32, i32* @REQ_STATE_LOCKED, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %58, i64 %60
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %61, align 8
  %62 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @mpt_fc_post_els(%struct.mpt_softc* %62, %struct.TYPE_6__* %63, i32 %64)
  br label %66

66:                                               ; preds = %49
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %38

69:                                               ; preds = %48, %38
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %74 = call i32 @mpt_prt(%struct.mpt_softc* %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %76 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %76, align 8
  %78 = load i32, i32* @M_DEVBUF, align 4
  %79 = call i32 @free(%struct.TYPE_6__** %77, i32 %78)
  %80 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %81 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %80, i32 0, i32 2
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %81, align 8
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %2, align 4
  br label %98

83:                                               ; preds = %69
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @MPT_MAX_ELS, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %89 = load i32, i32* @MPT_PRT_INFO, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @MPT_MAX_ELS, align 4
  %92 = call i32 @mpt_lprt(%struct.mpt_softc* %88, i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %83
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %96 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %93, %72, %35, %17, %10
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_6__** @malloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_fc_post_els(%struct.mpt_softc*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_6__**, i32) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
