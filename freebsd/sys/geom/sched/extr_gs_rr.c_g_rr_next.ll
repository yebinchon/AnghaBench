; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_gs_rr.c_g_rr_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.bio = type { i64 }
%struct.g_rr_softc = type { i64, %struct.g_rr_queue*, i32 }
%struct.g_rr_queue = type { i64, i32, i64, i32 }

@me = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@G_QUEUE_READY = common dso_local global i64 0, align 8
@q_tailq = common dso_local global i32 0, align 4
@G_FLAG_COMPLETED = common dso_local global i32 0, align 4
@G_QUEUE_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (i8*, i32)* @g_rr_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @g_rr_next(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_rr_softc*, align 8
  %7 = alloca %struct.g_rr_queue*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.g_rr_softc*
  store %struct.g_rr_softc* %12, %struct.g_rr_softc** %6, align 8
  %13 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %14 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %13, i32 0, i32 1
  %15 = load %struct.g_rr_queue*, %struct.g_rr_queue** %14, align 8
  store %struct.g_rr_queue* %15, %struct.g_rr_queue** %7, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 0), align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %18
  %22 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %23 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @get_bounded(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @me, i32 0, i32 1), i32 0)
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store %struct.bio* null, %struct.bio** %3, align 8
  br label %146

28:                                               ; preds = %21
  %29 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %30 = icmp ne %struct.g_rr_queue* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %33 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @G_QUEUE_READY, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.bio* null, %struct.bio** %3, align 8
  br label %146

38:                                               ; preds = %31, %28
  br label %54

39:                                               ; preds = %18, %2
  %40 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %41 = icmp ne %struct.g_rr_queue* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %44 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @G_QUEUE_READY, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %50 = call i32 @g_rr_queue_put(%struct.g_rr_queue* %49)
  store %struct.g_rr_queue* null, %struct.g_rr_queue** %7, align 8
  %51 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %52 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %51, i32 0, i32 1
  store %struct.g_rr_queue* null, %struct.g_rr_queue** %52, align 8
  br label %53

53:                                               ; preds = %48, %42, %39
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %56 = icmp eq %struct.g_rr_queue* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %59 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %58, i32 0, i32 2
  %60 = call %struct.g_rr_queue* @TAILQ_FIRST(i32* %59)
  store %struct.g_rr_queue* %60, %struct.g_rr_queue** %7, align 8
  %61 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %62 = icmp eq %struct.g_rr_queue* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store %struct.bio* null, %struct.bio** %3, align 8
  br label %146

64:                                               ; preds = %57
  %65 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %66 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %65, i32 0, i32 2
  %67 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %68 = load i32, i32* @q_tailq, align 4
  %69 = call i32 @TAILQ_REMOVE(i32* %66, %struct.g_rr_queue* %67, i32 %68)
  %70 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %71 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %72 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %71, i32 0, i32 1
  store %struct.g_rr_queue* %70, %struct.g_rr_queue** %72, align 8
  %73 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %74 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @G_FLAG_COMPLETED, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %78 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %64, %54
  %82 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %83 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %82, i32 0, i32 1
  %84 = call %struct.bio* @bioq_takefirst(i32* %83)
  store %struct.bio* %84, %struct.bio** %8, align 8
  %85 = load %struct.bio*, %struct.bio** %8, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %89 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %93 = call i32 @g_rr_queue_expired(%struct.g_rr_queue* %92)
  store i32 %93, i32* %10, align 4
  %94 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %95 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %94, i32 0, i32 1
  %96 = call %struct.bio* @bioq_first(i32* %95)
  store %struct.bio* %96, %struct.bio** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %81
  %100 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %101 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %100, i32 0, i32 1
  store %struct.g_rr_queue* null, %struct.g_rr_queue** %101, align 8
  %102 = load %struct.bio*, %struct.bio** %9, align 8
  %103 = icmp ne %struct.bio* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %106 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %105, i32 0, i32 2
  %107 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %108 = load i32, i32* @q_tailq, align 4
  %109 = call i32 @TAILQ_INSERT_TAIL(i32* %106, %struct.g_rr_queue* %107, i32 %108)
  br label %113

110:                                              ; preds = %99
  %111 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %112 = call i32 @g_rr_queue_put(%struct.g_rr_queue* %111)
  br label %113

113:                                              ; preds = %110, %104
  br label %140

114:                                              ; preds = %81
  %115 = load %struct.bio*, %struct.bio** %9, align 8
  %116 = icmp ne %struct.bio* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i64, i64* @G_QUEUE_READY, align 8
  %119 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %120 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %139

121:                                              ; preds = %114
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %126 = load %struct.bio*, %struct.bio** %8, align 8
  %127 = call i64 @g_rr_should_anticipate(%struct.g_rr_queue* %125, %struct.bio* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i64, i64* @G_QUEUE_BUSY, align 8
  %131 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %132 = getelementptr inbounds %struct.g_rr_queue, %struct.g_rr_queue* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %138

133:                                              ; preds = %124, %121
  %134 = load %struct.g_rr_queue*, %struct.g_rr_queue** %7, align 8
  %135 = call i32 @g_rr_queue_put(%struct.g_rr_queue* %134)
  %136 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %137 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %136, i32 0, i32 1
  store %struct.g_rr_queue* null, %struct.g_rr_queue** %137, align 8
  br label %138

138:                                              ; preds = %133, %129
  br label %139

139:                                              ; preds = %138, %117
  br label %140

140:                                              ; preds = %139, %113
  %141 = load %struct.g_rr_softc*, %struct.g_rr_softc** %6, align 8
  %142 = getelementptr inbounds %struct.g_rr_softc, %struct.g_rr_softc* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %142, align 8
  %145 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %145, %struct.bio** %3, align 8
  br label %146

146:                                              ; preds = %140, %63, %37, %27
  %147 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %147
}

declare dso_local i64 @get_bounded(i32*, i32) #1

declare dso_local i32 @g_rr_queue_put(%struct.g_rr_queue*) #1

declare dso_local %struct.g_rr_queue* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.g_rr_queue*, i32) #1

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @g_rr_queue_expired(%struct.g_rr_queue*) #1

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.g_rr_queue*, i32) #1

declare dso_local i64 @g_rr_should_anticipate(%struct.g_rr_queue*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
