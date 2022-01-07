; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.mly_softc* }

@.str = private unnamed_addr constant [4 x i8] c"mly\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@mly_complete_handler = common dso_local global i32 0, align 4
@mly_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mly%d\00", align 1
@MLY_CMD_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@mly_softc0 = common dso_local global %struct.mly_softc* null, align 8
@mly_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mly_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mly_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mly_softc* @device_get_softc(i32 %5)
  store %struct.mly_softc* %6, %struct.mly_softc** %3, align 8
  %7 = call i32 @debug_called(i32 1)
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %11, i32 0, i32 4
  %13 = load i32, i32* @MTX_DEF, align 4
  %14 = call i32 @mtx_init(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %13)
  %15 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %15, i32 0, i32 5
  %17 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %17, i32 0, i32 4
  %19 = call i32 @callout_init_mtx(i32* %16, i32* %18, i32 0)
  %20 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %21 = call i32 @mly_pci_attach(%struct.mly_softc* %20)
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %116

24:                                               ; preds = %1
  %25 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %26 = call i32 @mly_initq_free(%struct.mly_softc* %25)
  %27 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %28 = call i32 @mly_initq_busy(%struct.mly_softc* %27)
  %29 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %30 = call i32 @mly_initq_complete(%struct.mly_softc* %29)
  %31 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %31, i32 0, i32 3
  %33 = load i32, i32* @mly_complete_handler, align 4
  %34 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %35 = call i32 @TASK_INIT(i32* %32, i32 0, i32 %33, %struct.mly_softc* %34)
  %36 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %37 = call i32 @MLY_MASK_INTERRUPTS(%struct.mly_softc* %36)
  %38 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %39 = call i32 @mly_fwhandshake(%struct.mly_softc* %38)
  store i32 %39, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  br label %116

42:                                               ; preds = %24
  %43 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %44 = call i32 @mly_alloc_commands(%struct.mly_softc* %43)
  store i32 %44, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %116

47:                                               ; preds = %42
  %48 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %49 = call i32 @MLY_LOCK(%struct.mly_softc* %48)
  %50 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %51 = call i32 @mly_get_controllerinfo(%struct.mly_softc* %50)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %53 = call i32 @MLY_UNLOCK(%struct.mly_softc* %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %116

57:                                               ; preds = %47
  %58 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %59 = call i32 @mly_release_commands(%struct.mly_softc* %58)
  %60 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %61 = call i32 @mly_alloc_commands(%struct.mly_softc* %60)
  store i32 %61, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %116

64:                                               ; preds = %57
  %65 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %66 = call i32 @MLY_LOCK(%struct.mly_softc* %65)
  %67 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %68 = call i32 @mly_get_eventstatus(%struct.mly_softc* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %73 = call i32 @mly_enable_mmbox(%struct.mly_softc* %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %76 = call i32 @MLY_UNLOCK(%struct.mly_softc* %75)
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %116

80:                                               ; preds = %74
  %81 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %82 = call i32 @mly_cam_attach(%struct.mly_softc* %81)
  store i32 %82, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %116

85:                                               ; preds = %80
  %86 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %87 = call i32 @mly_describe_controller(%struct.mly_softc* %86)
  %88 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %89 = call i32 @MLY_LOCK(%struct.mly_softc* %88)
  %90 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %91 = call i32 @mly_scan_devices(%struct.mly_softc* %90)
  %92 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %93 = bitcast %struct.mly_softc* %92 to i8*
  %94 = call i32 @mly_periodic(i8* %93)
  %95 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %96 = call i32 @MLY_UNLOCK(%struct.mly_softc* %95)
  %97 = load i32, i32* @UID_ROOT, align 4
  %98 = load i32, i32* @GID_OPERATOR, align 4
  %99 = load i32, i32* @S_IRUSR, align 4
  %100 = load i32, i32* @S_IWUSR, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %103 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @device_get_unit(i32 %104)
  %106 = call %struct.TYPE_2__* @make_dev(i32* @mly_cdevsw, i32 0, i32 %97, i32 %98, i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  %107 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %108 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %107, i32 0, i32 1
  store %struct.TYPE_2__* %106, %struct.TYPE_2__** %108, align 8
  %109 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %110 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %111 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store %struct.mly_softc* %109, %struct.mly_softc** %113, align 8
  %114 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %115 = call i32 @MLY_UNMASK_INTERRUPTS(%struct.mly_softc* %114)
  br label %116

116:                                              ; preds = %85, %84, %79, %63, %56, %46, %41, %23
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %121 = call i32 @mly_free(%struct.mly_softc* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.mly_softc* @device_get_softc(i32) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mly_pci_attach(%struct.mly_softc*) #1

declare dso_local i32 @mly_initq_free(%struct.mly_softc*) #1

declare dso_local i32 @mly_initq_busy(%struct.mly_softc*) #1

declare dso_local i32 @mly_initq_complete(%struct.mly_softc*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.mly_softc*) #1

declare dso_local i32 @MLY_MASK_INTERRUPTS(%struct.mly_softc*) #1

declare dso_local i32 @mly_fwhandshake(%struct.mly_softc*) #1

declare dso_local i32 @mly_alloc_commands(%struct.mly_softc*) #1

declare dso_local i32 @MLY_LOCK(%struct.mly_softc*) #1

declare dso_local i32 @mly_get_controllerinfo(%struct.mly_softc*) #1

declare dso_local i32 @MLY_UNLOCK(%struct.mly_softc*) #1

declare dso_local i32 @mly_release_commands(%struct.mly_softc*) #1

declare dso_local i32 @mly_get_eventstatus(%struct.mly_softc*) #1

declare dso_local i32 @mly_enable_mmbox(%struct.mly_softc*) #1

declare dso_local i32 @mly_cam_attach(%struct.mly_softc*) #1

declare dso_local i32 @mly_describe_controller(%struct.mly_softc*) #1

declare dso_local i32 @mly_scan_devices(%struct.mly_softc*) #1

declare dso_local i32 @mly_periodic(i8*) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*, i64) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @MLY_UNMASK_INTERRUPTS(%struct.mly_softc*) #1

declare dso_local i32 @mly_free(%struct.mly_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
