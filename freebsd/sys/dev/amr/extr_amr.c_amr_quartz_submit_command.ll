; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_quartz_submit_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_quartz_submit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.amr_command = type { i32, i32, %struct.TYPE_6__, i64, i64, %struct.amr_softc* }
%struct.TYPE_6__ = type { i64 }
%struct.amr_softc = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }

@amr_quartz_submit_command.lastfail = internal global %struct.timeval zeroinitializer, align 4
@amr_quartz_submit_command.curfail = internal global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Too many retries on command %p.  Controller is likely dead\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@AMR_QIDB_SUBMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_command*)* @amr_quartz_submit_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_quartz_submit_command(%struct.amr_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amr_command*, align 8
  %4 = alloca %struct.amr_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.amr_command* %0, %struct.amr_command** %3, align 8
  %6 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %7 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %6, i32 0, i32 5
  %8 = load %struct.amr_softc*, %struct.amr_softc** %7, align 8
  store %struct.amr_softc* %8, %struct.amr_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %10 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %9, i32 0, i32 1
  %11 = call i32 @mtx_lock(i32* %10)
  br label %12

12:                                               ; preds = %25, %1
  %13 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %14 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = icmp slt i32 %20, 10
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi i1 [ false, %12 ], [ %22, %19 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = call i32 @DELAY(i32 1)
  %27 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %28 = call i32 @AMR_QGET_ODB(%struct.amr_softc* %27)
  br label %12

29:                                               ; preds = %23
  %30 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %31 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %29
  %37 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %38 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %37, i32 0, i32 1
  %39 = call i32 @mtx_unlock(i32* %38)
  %40 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %41 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = icmp sgt i64 %42, 1000
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = call i64 @ppsratecheck(%struct.timeval* @amr_quartz_submit_command.lastfail, i32* @amr_quartz_submit_command.curfail, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %50 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %53 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.amr_command* %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %56 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %36
  %58 = load i32, i32* @EBUSY, align 4
  store i32 %58, i32* %2, align 4
  br label %112

59:                                               ; preds = %29
  %60 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %61 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  %64 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %65 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %68 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %67, i32 0, i32 2
  %69 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %70 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = bitcast %struct.TYPE_4__* %71 to i8*
  %73 = ptrtoint i8* %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @bcopy(%struct.TYPE_6__* %68, i8* %74, i32 14)
  %76 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %77 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %81 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %85 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %89 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %92 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %91, i32 0, i32 2
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load %struct.amr_command*, %struct.amr_command** %3, align 8
  %96 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %99 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %98, i32 0, i32 2
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 4
  %102 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %103 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %104 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AMR_QIDB_SUBMIT, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @AMR_QPUT_IDB(%struct.amr_softc* %102, i32 %107)
  %109 = load %struct.amr_softc*, %struct.amr_softc** %4, align 8
  %110 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %109, i32 0, i32 1
  %111 = call i32 @mtx_unlock(i32* %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %59, %57
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @AMR_QGET_ODB(%struct.amr_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @ppsratecheck(%struct.timeval*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, %struct.amr_command*) #1

declare dso_local i32 @bcopy(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @AMR_QPUT_IDB(%struct.amr_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
