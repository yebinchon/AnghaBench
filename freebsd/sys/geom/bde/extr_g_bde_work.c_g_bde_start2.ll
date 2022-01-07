; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_start2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_start2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_work = type { i32, %struct.TYPE_3__*, i32*, %struct.TYPE_4__*, i32, i32, i32, %struct.g_bde_softc* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.g_bde_softc = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"NULL wp in g_bde_start2\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NULL wp->softc\00", align 1
@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"g_bde_start2(%p)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Wrong bio_cmd %d in g_bde_start2\00", align 1
@WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_work*)* @g_bde_start2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_bde_start2(%struct.g_bde_work* %0) #0 {
  %2 = alloca %struct.g_bde_work*, align 8
  %3 = alloca %struct.g_bde_softc*, align 8
  store %struct.g_bde_work* %0, %struct.g_bde_work** %2, align 8
  %4 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %5 = icmp ne %struct.g_bde_work* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @KASSERT(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %9 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %8, i32 0, i32 7
  %10 = load %struct.g_bde_softc*, %struct.g_bde_softc** %9, align 8
  %11 = icmp ne %struct.g_bde_softc* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @G_T_TOPOLOGY, align 4
  %15 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %16 = call i32 @g_trace(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.g_bde_work* %15)
  %17 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %18 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %17, i32 0, i32 7
  %19 = load %struct.g_bde_softc*, %struct.g_bde_softc** %18, align 8
  store %struct.g_bde_softc* %19, %struct.g_bde_softc** %3, align 8
  %20 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %21 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %124 [
    i32 129, label %25
    i32 130, label %76
    i32 128, label %94
  ]

25:                                               ; preds = %1
  %26 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %27 = call i8* @g_bde_new_sector(%struct.g_bde_work* %26, i32 0)
  %28 = bitcast i8* %27 to %struct.TYPE_4__*
  %29 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %30 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %29, i32 0, i32 3
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %32 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp eq %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @g_bde_work_done(%struct.g_bde_work* %36, i32 %37)
  br label %139

39:                                               ; preds = %25
  %40 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %41 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %44 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %48 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %51 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %55 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @g_bde_start_read(%struct.TYPE_4__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %39
  %60 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 @g_bde_work_done(%struct.g_bde_work* %60, i32 %61)
  br label %139

63:                                               ; preds = %39
  %64 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %65 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %66 = call i32 @g_bde_read_keysector(%struct.g_bde_softc* %64, %struct.g_bde_work* %65)
  %67 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %68 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %74 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %63
  br label %133

76:                                               ; preds = %1
  %77 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %78 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %79 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @g_bde_new_sector(%struct.g_bde_work* %77, i32 %80)
  %82 = bitcast i8* %81 to %struct.TYPE_4__*
  %83 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %84 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %83, i32 0, i32 3
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %84, align 8
  %85 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %86 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = icmp eq %struct.TYPE_4__* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  %90 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = call i32 @g_bde_work_done(%struct.g_bde_work* %90, i32 %91)
  br label %139

93:                                               ; preds = %76
  br label %133

94:                                               ; preds = %1
  %95 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %96 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %97 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @g_bde_new_sector(%struct.g_bde_work* %95, i32 %98)
  %100 = bitcast i8* %99 to %struct.TYPE_4__*
  %101 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %102 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %101, i32 0, i32 3
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %102, align 8
  %103 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %104 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = icmp eq %struct.TYPE_4__* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %94
  %108 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = call i32 @g_bde_work_done(%struct.g_bde_work* %108, i32 %109)
  br label %139

111:                                              ; preds = %94
  %112 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %113 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %114 = call i32 @g_bde_read_keysector(%struct.g_bde_softc* %112, %struct.g_bde_work* %113)
  %115 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %116 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = call i32 @g_bde_work_done(%struct.g_bde_work* %120, i32 %121)
  br label %139

123:                                              ; preds = %111
  br label %133

124:                                              ; preds = %1
  %125 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %126 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @KASSERT(i32 0, i8* %131)
  br label %133

133:                                              ; preds = %124, %123, %93, %75
  %134 = load i32, i32* @WAIT, align 4
  %135 = load %struct.g_bde_work*, %struct.g_bde_work** %2, align 8
  %136 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %138 = call i32 @wakeup(%struct.g_bde_softc* %137)
  br label %139

139:                                              ; preds = %133, %119, %107, %89, %59, %35
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_trace(i32, i8*, %struct.g_bde_work*) #1

declare dso_local i8* @g_bde_new_sector(%struct.g_bde_work*, i32) #1

declare dso_local i32 @g_bde_work_done(%struct.g_bde_work*, i32) #1

declare dso_local i32 @g_bde_start_read(%struct.TYPE_4__*) #1

declare dso_local i32 @g_bde_read_keysector(%struct.g_bde_softc*, %struct.g_bde_work*) #1

declare dso_local i32 @wakeup(%struct.g_bde_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
