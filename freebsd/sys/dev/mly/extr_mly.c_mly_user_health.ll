; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_user_health.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_user_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mly_health_status }
%struct.mly_health_status = type { i64 }
%struct.mly_user_health = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mlyhealth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_softc*, %struct.mly_user_health*)* @mly_user_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_user_health(%struct.mly_softc* %0, %struct.mly_user_health* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mly_softc*, align 8
  %5 = alloca %struct.mly_user_health*, align 8
  %6 = alloca %struct.mly_health_status, align 8
  %7 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %4, align 8
  store %struct.mly_user_health* %1, %struct.mly_user_health** %5, align 8
  %8 = load %struct.mly_user_health*, %struct.mly_user_health** %5, align 8
  %9 = getelementptr inbounds %struct.mly_user_health, %struct.mly_user_health* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @copyin(i32 %10, %struct.mly_health_status* %6, i32 8)
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %17 = call i32 @MLY_LOCK(%struct.mly_softc* %16)
  %18 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %31, %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.mly_health_status, %struct.mly_health_status* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %25, %27
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i1 [ false, %19 ], [ %28, %22 ]
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  %32 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %33 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %32, i32 0, i32 0
  %34 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %34, i32 0, i32 2
  %36 = load i32, i32* @PRIBIO, align 4
  %37 = load i32, i32* @PCATCH, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @mtx_sleep(i64* %33, i32* %35, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %39, i32* %7, align 4
  br label %19

40:                                               ; preds = %29
  %41 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %42 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = bitcast %struct.mly_health_status* %6 to i8*
  %47 = bitcast %struct.mly_health_status* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = load %struct.mly_softc*, %struct.mly_softc** %4, align 8
  %49 = call i32 @MLY_UNLOCK(%struct.mly_softc* %48)
  %50 = load %struct.mly_user_health*, %struct.mly_user_health** %5, align 8
  %51 = getelementptr inbounds %struct.mly_user_health, %struct.mly_user_health* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @copyout(%struct.mly_health_status* %6, i32 %52, i32 8)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %40, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @copyin(i32, %struct.mly_health_status*, i32) #1

declare dso_local i32 @MLY_LOCK(%struct.mly_softc*) #1

declare dso_local i32 @mtx_sleep(i64*, i32*, i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MLY_UNLOCK(%struct.mly_softc*) #1

declare dso_local i32 @copyout(%struct.mly_health_status*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
