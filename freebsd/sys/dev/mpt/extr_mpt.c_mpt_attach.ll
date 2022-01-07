; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_personality = type { i64 (%struct.mpt_softc*)*, i32 (%struct.mpt_softc*)*, i32, i32 (%struct.mpt_softc*)*, i32, i32 }
%struct.mpt_softc = type { i32 }

@mpt_tailq = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@MPT_MAX_PERSONALITIES = common dso_local global i32 0, align 4
@mpt_personalities = common dso_local global %struct.mpt_personality** null, align 8
@.str = private unnamed_addr constant [51 x i8] c"personality %s attached but would not enable (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_attach(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.mpt_personality*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %7 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %8 = call i32 @mpt_core_attach(%struct.mpt_softc* %7)
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %10 = call i32 @mpt_core_enable(%struct.mpt_softc* %9)
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %12 = load i32, i32* @links, align 4
  %13 = call i32 @TAILQ_INSERT_TAIL(i32* @mpt_tailq, %struct.mpt_softc* %11, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %60, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MPT_MAX_PERSONALITIES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load %struct.mpt_personality**, %struct.mpt_personality*** @mpt_personalities, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mpt_personality*, %struct.mpt_personality** %19, i64 %21
  %23 = load %struct.mpt_personality*, %struct.mpt_personality** %22, align 8
  store %struct.mpt_personality* %23, %struct.mpt_personality** %4, align 8
  %24 = load %struct.mpt_personality*, %struct.mpt_personality** %4, align 8
  %25 = icmp eq %struct.mpt_personality* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %60

27:                                               ; preds = %18
  %28 = load %struct.mpt_personality*, %struct.mpt_personality** %4, align 8
  %29 = getelementptr inbounds %struct.mpt_personality, %struct.mpt_personality* %28, i32 0, i32 0
  %30 = load i64 (%struct.mpt_softc*)*, i64 (%struct.mpt_softc*)** %29, align 8
  %31 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %32 = call i64 %30(%struct.mpt_softc* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %27
  %35 = load %struct.mpt_personality*, %struct.mpt_personality** %4, align 8
  %36 = getelementptr inbounds %struct.mpt_personality, %struct.mpt_personality* %35, i32 0, i32 1
  %37 = load i32 (%struct.mpt_softc*)*, i32 (%struct.mpt_softc*)** %36, align 8
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %39 = call i32 %37(%struct.mpt_softc* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %44 = call i32 @mpt_detach(%struct.mpt_softc* %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %105

46:                                               ; preds = %34
  %47 = load %struct.mpt_personality*, %struct.mpt_personality** %4, align 8
  %48 = getelementptr inbounds %struct.mpt_personality, %struct.mpt_personality* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 1, %49
  %51 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.mpt_personality*, %struct.mpt_personality** %4, align 8
  %56 = getelementptr inbounds %struct.mpt_personality, %struct.mpt_personality* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %46, %27
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %14

63:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %101, %63
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @MPT_MAX_PERSONALITIES, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = load %struct.mpt_personality**, %struct.mpt_personality*** @mpt_personalities, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.mpt_personality*, %struct.mpt_personality** %69, i64 %71
  %73 = load %struct.mpt_personality*, %struct.mpt_personality** %72, align 8
  store %struct.mpt_personality* %73, %struct.mpt_personality** %4, align 8
  %74 = load %struct.mpt_personality*, %struct.mpt_personality** %4, align 8
  %75 = icmp ne %struct.mpt_personality* %74, null
  br i1 %75, label %76, label %100

76:                                               ; preds = %68
  %77 = load %struct.mpt_personality*, %struct.mpt_personality** %4, align 8
  %78 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %79 = call i64 @MPT_PERS_ATTACHED(%struct.mpt_personality* %77, %struct.mpt_softc* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load %struct.mpt_personality*, %struct.mpt_personality** %4, align 8
  %83 = getelementptr inbounds %struct.mpt_personality, %struct.mpt_personality* %82, i32 0, i32 3
  %84 = load i32 (%struct.mpt_softc*)*, i32 (%struct.mpt_softc*)** %83, align 8
  %85 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %86 = call i32 %84(%struct.mpt_softc* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %91 = load %struct.mpt_personality*, %struct.mpt_personality** %4, align 8
  %92 = getelementptr inbounds %struct.mpt_personality, %struct.mpt_personality* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @mpt_prt(%struct.mpt_softc* %90, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %97 = call i32 @mpt_detach(%struct.mpt_softc* %96)
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %105

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %76, %68
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %64

104:                                              ; preds = %64
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %89, %42
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @mpt_core_attach(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_core_enable(%struct.mpt_softc*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_detach(%struct.mpt_softc*) #1

declare dso_local i64 @MPT_PERS_ATTACHED(%struct.mpt_personality*, %struct.mpt_softc*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
