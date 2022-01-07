; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_softc = type { i32, i32, i32, i32*, i32*, i32 }
%struct.cam_devq = type { i32 }

@GDT_D_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"iir_attach()\0A\00", align 1
@iir_action = common dso_local global i32 0, align 4
@iir_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"iir\00", align 1
@GDT_MAXCMDS = common dso_local global i32 0, align 4
@CAM_SUCCESS = common dso_local global i64 0, align 8
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@shutdown_final = common dso_local global i32 0, align 4
@iir_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_DEFAULT = common dso_local global i32 0, align 4
@GDT_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iir_attach(%struct.gdt_softc* %0) #0 {
  %2 = alloca %struct.gdt_softc*, align 8
  %3 = alloca %struct.cam_devq*, align 8
  %4 = alloca i32, align 4
  store %struct.gdt_softc* %0, %struct.gdt_softc** %2, align 8
  %5 = load i32, i32* @GDT_D_INIT, align 4
  %6 = call i32 @GDT_DPRINTF(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = call %struct.cam_devq* @cam_simq_alloc(i32 32)
  store %struct.cam_devq* %7, %struct.cam_devq** %3, align 8
  %8 = load %struct.cam_devq*, %struct.cam_devq** %3, align 8
  %9 = icmp eq %struct.cam_devq* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %133

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %117, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %15 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %120

18:                                               ; preds = %12
  %19 = load i32, i32* @iir_action, align 4
  %20 = load i32, i32* @iir_poll, align 4
  %21 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %22 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_get_unit(i32 %24)
  %26 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %27 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %26, i32 0, i32 2
  %28 = load i32, i32* @GDT_MAXCMDS, align 4
  %29 = load %struct.cam_devq*, %struct.cam_devq** %3, align 8
  %30 = call i32 @cam_sim_alloc(i32 %19, i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.gdt_softc* %21, i32 %25, i32* %27, i32 1, i32 %28, %struct.cam_devq* %29)
  %31 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %32 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %38 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %37, i32 0, i32 2
  %39 = call i32 @mtx_lock(i32* %38)
  %40 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %41 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %48 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @xpt_bus_register(i32 %46, i32 %49, i32 %50)
  %52 = load i64, i64* @CAM_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %18
  %55 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %56 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @cam_sim_free(i32 %61, i32 %64)
  %66 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %67 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %66, i32 0, i32 2
  %68 = call i32 @mtx_unlock(i32* %67)
  br label %120

69:                                               ; preds = %18
  %70 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %71 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %77 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cam_sim_path(i32 %82)
  %84 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %85 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %86 = call i64 @xpt_create_path(i32* %75, i32* null, i32 %83, i32 %84, i32 %85)
  %87 = load i64, i64* @CAM_REQ_CMP, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %69
  %90 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %91 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cam_sim_path(i32 %96)
  %98 = call i32 @xpt_bus_deregister(i32 %97)
  %99 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %100 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @cam_sim_free(i32 %105, i32 %108)
  %110 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %111 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %110, i32 0, i32 2
  %112 = call i32 @mtx_unlock(i32* %111)
  br label %120

113:                                              ; preds = %69
  %114 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %115 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %114, i32 0, i32 2
  %116 = call i32 @mtx_unlock(i32* %115)
  br label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %12

120:                                              ; preds = %89, %54, %12
  %121 = load i32, i32* %4, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* @shutdown_final, align 4
  %125 = load i32, i32* @iir_shutdown, align 4
  %126 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %127 = load i32, i32* @SHUTDOWN_PRI_DEFAULT, align 4
  %128 = call i32 @EVENTHANDLER_REGISTER(i32 %124, i32 %125, %struct.gdt_softc* %126, i32 %127)
  br label %129

129:                                              ; preds = %123, %120
  %130 = load i32, i32* @GDT_NORMAL, align 4
  %131 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %132 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %10
  ret void
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32 @cam_sim_alloc(i32, i32, i8*, %struct.gdt_softc*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_bus_register(i32, i32, i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.gdt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
