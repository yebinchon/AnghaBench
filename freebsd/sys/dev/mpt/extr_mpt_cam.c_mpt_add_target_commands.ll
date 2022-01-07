; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_add_target_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_add_target_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"mpt_add_target_commands: could not allocate cmd ptrs\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@REQ_STATE_LOCKED = common dso_local global i32 0, align 4
@MPT_PRT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not add any target bufs\0A\00", align 1
@MPT_PRT_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"added %d of %d target bufs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_add_target_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_add_target_commands(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %7 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %10 = icmp ne %struct.TYPE_6__** %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %2, align 4
  br label %108

13:                                               ; preds = %1
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %15 = call i32 @MPT_MAX_REQUESTS(%struct.mpt_softc* %14)
  %16 = ashr i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %13
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.TYPE_6__** @malloc(i32 %30, i32 %31, i32 %34)
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %36, i32 0, i32 2
  store %struct.TYPE_6__** %35, %struct.TYPE_6__*** %37, align 8
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %39, align 8
  %41 = icmp eq %struct.TYPE_6__** %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %44 = call i32 @mpt_prt(%struct.mpt_softc* %43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %2, align 4
  br label %108

46:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %75, %46
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %53 = load i32, i32* @FALSE, align 4
  %54 = call %struct.TYPE_6__* @mpt_get_request(%struct.mpt_softc* %52, i32 %53)
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %6, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = icmp eq %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %78

58:                                               ; preds = %51
  %59 = load i32, i32* @REQ_STATE_LOCKED, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %66 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %67, i64 %69
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %70, align 8
  %71 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @mpt_post_target_command(%struct.mpt_softc* %71, %struct.TYPE_6__* %72, i32 %73)
  br label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %47

78:                                               ; preds = %57, %47
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %83 = load i32, i32* @MPT_PRT_ERROR, align 4
  %84 = call i32 (%struct.mpt_softc*, i32, i8*, ...) @mpt_lprt(%struct.mpt_softc* %82, i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %86 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %86, align 8
  %88 = load i32, i32* @M_DEVBUF, align 4
  %89 = call i32 @free(%struct.TYPE_6__** %87, i32 %88)
  %90 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %91 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %90, i32 0, i32 2
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %91, align 8
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %2, align 4
  br label %108

93:                                               ; preds = %78
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %96 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %102 = load i32, i32* @MPT_PRT_INFO, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (%struct.mpt_softc*, i32, i8*, ...) @mpt_lprt(%struct.mpt_softc* %101, i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %93
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %81, %42, %11
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @MPT_MAX_REQUESTS(%struct.mpt_softc*) #1

declare dso_local %struct.TYPE_6__** @malloc(i32, i32, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local %struct.TYPE_6__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_post_target_command(%struct.mpt_softc*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_6__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
