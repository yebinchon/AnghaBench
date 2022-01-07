; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_soft_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ciss_request = type { %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }

@CISS_BMIC_SOFT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error resetting controller (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*)* @ciss_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_soft_reset(%struct.ciss_softc* %0) #0 {
  %2 = alloca %struct.ciss_softc*, align 8
  %3 = alloca %struct.ciss_request*, align 8
  %4 = alloca %struct.ciss_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %2, align 8
  store %struct.ciss_request* null, %struct.ciss_request** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %58, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %7
  %14 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %58

25:                                               ; preds = %13
  %26 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %27 = call i32 @ciss_get_request(%struct.ciss_softc* %26, %struct.ciss_request** %3)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %61

30:                                               ; preds = %25
  %31 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %32 = load i32, i32* @CISS_BMIC_SOFT_RESET, align 4
  %33 = call i32 @ciss_get_bmic_request(%struct.ciss_softc* %31, %struct.ciss_request** %3, i32 %32, i32* null, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %61

36:                                               ; preds = %30
  %37 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %38 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %37, i32 0, i32 0
  %39 = load %struct.ciss_command*, %struct.ciss_command** %38, align 8
  store %struct.ciss_command* %39, %struct.ciss_command** %4, align 8
  %40 = load %struct.ciss_command*, %struct.ciss_command** %4, align 8
  %41 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = bitcast %struct.TYPE_6__* %42 to i8*
  %50 = bitcast %struct.TYPE_6__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  %51 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %52 = call i32 @ciss_synch_request(%struct.ciss_request* %51, i32 60000)
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  br label %61

55:                                               ; preds = %36
  %56 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %57 = call i32 @ciss_release_request(%struct.ciss_request* %56)
  br label %58

58:                                               ; preds = %55, %24
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %7

61:                                               ; preds = %54, %35, %29, %7
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @ciss_printf(%struct.ciss_softc* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %70 = icmp ne %struct.ciss_request* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %73 = call i32 @ciss_release_request(%struct.ciss_request* %72)
  br label %74

74:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32 @ciss_get_request(%struct.ciss_softc*, %struct.ciss_request**) #1

declare dso_local i32 @ciss_get_bmic_request(%struct.ciss_softc*, %struct.ciss_request**, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ciss_synch_request(%struct.ciss_request*, i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
