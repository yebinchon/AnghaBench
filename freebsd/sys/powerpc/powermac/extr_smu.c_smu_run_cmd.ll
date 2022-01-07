; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_run_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_run_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_cmd = type { i32 }
%struct.smu_softc = type { i64, i32, i32, %struct.smu_cmd* }

@cmd_q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"smu\00", align 1
@hz = common dso_local global i32 0, align 4
@smu_cmd = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.smu_cmd*, i32)* @smu_run_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_run_cmd(i32 %0, %struct.smu_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smu_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.smu_cmd* %1, %struct.smu_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.smu_softc* @device_get_softc(i32 %11)
  store %struct.smu_softc* %12, %struct.smu_softc** %8, align 8
  %13 = load %struct.smu_cmd*, %struct.smu_cmd** %6, align 8
  %14 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %17 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %16, i32 0, i32 1
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %20 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %19, i32 0, i32 3
  %21 = load %struct.smu_cmd*, %struct.smu_cmd** %20, align 8
  %22 = icmp ne %struct.smu_cmd* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %25 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %24, i32 0, i32 2
  %26 = load %struct.smu_cmd*, %struct.smu_cmd** %6, align 8
  %27 = load i32, i32* @cmd_q, align 4
  %28 = call i32 @STAILQ_INSERT_TAIL(i32* %25, %struct.smu_cmd* %26, i32 %27)
  br label %33

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.smu_cmd*, %struct.smu_cmd** %6, align 8
  %32 = call i32 @smu_send_cmd(i32 %30, %struct.smu_cmd* %31)
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %35 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %34, i32 0, i32 1
  %36 = call i32 @mtx_unlock(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %118

40:                                               ; preds = %33
  %41 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %42 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %50, %45
  %47 = call i32 @DELAY(i32 50)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @smu_doorbell_intr(i32 %48)
  br label %50

50:                                               ; preds = %46
  %51 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %52 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %51, i32 0, i32 3
  %53 = load %struct.smu_cmd*, %struct.smu_cmd** %52, align 8
  %54 = icmp ne %struct.smu_cmd* %53, null
  br i1 %54, label %46, label %55

55:                                               ; preds = %50
  br label %105

56:                                               ; preds = %40
  %57 = load %struct.smu_cmd*, %struct.smu_cmd** %6, align 8
  %58 = load i32, i32* @hz, align 4
  %59 = mul nsw i32 800, %58
  %60 = sdiv i32 %59, 1000
  %61 = call i32 @tsleep(%struct.smu_cmd* %57, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @smu_doorbell_intr(i32 %65)
  br label %67

67:                                               ; preds = %64, %56
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %67
  %71 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %72 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %71, i32 0, i32 1
  %73 = call i32 @mtx_lock(i32* %72)
  %74 = load %struct.smu_cmd*, %struct.smu_cmd** %6, align 8
  %75 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %70
  %80 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %81 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %80, i32 0, i32 3
  %82 = load %struct.smu_cmd*, %struct.smu_cmd** %81, align 8
  %83 = load %struct.smu_cmd*, %struct.smu_cmd** %6, align 8
  %84 = icmp eq %struct.smu_cmd* %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %87 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %86, i32 0, i32 3
  store %struct.smu_cmd* null, %struct.smu_cmd** %87, align 8
  br label %95

88:                                               ; preds = %79
  %89 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %90 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %89, i32 0, i32 2
  %91 = load %struct.smu_cmd*, %struct.smu_cmd** %6, align 8
  %92 = load i32, i32* @smu_cmd, align 4
  %93 = load i32, i32* @cmd_q, align 4
  %94 = call i32 @STAILQ_REMOVE(i32* %90, %struct.smu_cmd* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %85
  %96 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %97 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %96, i32 0, i32 1
  %98 = call i32 @mtx_unlock(i32* %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %118

100:                                              ; preds = %70
  store i32 0, i32* %10, align 4
  %101 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %102 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %101, i32 0, i32 1
  %103 = call i32 @mtx_unlock(i32* %102)
  br label %104

104:                                              ; preds = %100, %67
  br label %105

105:                                              ; preds = %104, %55
  %106 = load %struct.smu_cmd*, %struct.smu_cmd** %6, align 8
  %107 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %110, 255
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  br label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @EIO, align 4
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %114, %113
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %95, %39
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.smu_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.smu_cmd*, i32) #1

declare dso_local i32 @smu_send_cmd(i32, %struct.smu_cmd*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @smu_doorbell_intr(i32) #1

declare dso_local i32 @tsleep(%struct.smu_cmd*, i32, i8*, i32) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.smu_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
