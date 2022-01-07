; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_user_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_user_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32 }
%struct.mfi_ioc_passthru = type { i32, i32, %struct.mfi_dcmd_frame }
%struct.mfi_dcmd_frame = type { i32, i32 }
%struct.mfi_command = type { i32, i32, %struct.TYPE_4__*, i8*, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.mfi_dcmd_frame }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"failed to copyin\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"mfiioc\00", align 1
@hz = common dso_local global i32 0, align 4
@MFI_DCMD_FRAME_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@MFI_CMD_DATAOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ioctl failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*, %struct.mfi_ioc_passthru*)* @mfi_user_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_user_command(%struct.mfi_softc* %0, %struct.mfi_ioc_passthru* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.mfi_ioc_passthru*, align 8
  %6 = alloca %struct.mfi_command*, align 8
  %7 = alloca %struct.mfi_dcmd_frame*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store %struct.mfi_ioc_passthru* %1, %struct.mfi_ioc_passthru** %5, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %13 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %18 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 1048576
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %3, align 4
  br label %167

23:                                               ; preds = %16
  %24 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %25 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @M_MFIBUF, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = call i8* @malloc(i32 %26, i32 %27, i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %31 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %35 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @copyin(i32 %32, i8* %33, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %23
  %41 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %42 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @M_MFIBUF, align 4
  %47 = call i32 @free(i8* %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %167

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %52 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %53 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mfi_config_lock(%struct.mfi_softc* %51, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %58 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %57, i32 0, i32 0
  %59 = call i32 @mtx_lock(i32* %58)
  br label %60

60:                                               ; preds = %64, %50
  %61 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %62 = call %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc* %61)
  store %struct.mfi_command* %62, %struct.mfi_command** %6, align 8
  %63 = icmp eq %struct.mfi_command* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %66 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %65, i32 0, i32 0
  %67 = load i32, i32* @hz, align 4
  %68 = call i32 @msleep(i32 (%struct.mfi_softc*, %struct.mfi_ioc_passthru*)* @mfi_user_command, i32* %66, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %60

69:                                               ; preds = %60
  %70 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %71 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  %76 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %77 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store %struct.mfi_dcmd_frame* %79, %struct.mfi_dcmd_frame** %7, align 8
  %80 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %81 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %80, i32 0, i32 2
  %82 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %7, align 8
  %83 = call i32 @bcopy(%struct.mfi_dcmd_frame* %81, %struct.mfi_dcmd_frame* %82, i32 8)
  %84 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %7, align 8
  %85 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %84, i32 0, i32 0
  %86 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %87 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %86, i32 0, i32 5
  store i32* %85, i32** %87, align 8
  %88 = load i32, i32* @MFI_DCMD_FRAME_SIZE, align 4
  %89 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %90 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %93 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %95 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %98 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %101 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 %99, i32* %104, align 4
  %105 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %106 = load i32, i32* @MFI_CMD_DATAOUT, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %109 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %111 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %112 = call i32 @mfi_check_command_pre(%struct.mfi_softc* %110, %struct.mfi_command* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %69
  br label %136

116:                                              ; preds = %69
  %117 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %118 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %119 = call i32 @mfi_wait_command(%struct.mfi_softc* %117, %struct.mfi_command* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %124 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i32, i8*, ...) @device_printf(i32 %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  br label %136

128:                                              ; preds = %116
  %129 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %7, align 8
  %130 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %131 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %130, i32 0, i32 2
  %132 = call i32 @bcopy(%struct.mfi_dcmd_frame* %129, %struct.mfi_dcmd_frame* %131, i32 8)
  %133 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %134 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %135 = call i32 @mfi_check_command_post(%struct.mfi_softc* %133, %struct.mfi_command* %134)
  br label %136

136:                                              ; preds = %128, %122, %115
  %137 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %138 = call i32 @mfi_release_command(%struct.mfi_command* %137)
  %139 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %140 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %139, i32 0, i32 0
  %141 = call i32 @mtx_unlock(i32* %140)
  %142 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @mfi_config_unlock(%struct.mfi_softc* %142, i32 %143)
  %145 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %146 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %136
  %150 = load i8*, i8** %8, align 8
  %151 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %152 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.mfi_ioc_passthru*, %struct.mfi_ioc_passthru** %5, align 8
  %155 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @copyout(i8* %150, i32 %153, i32 %156)
  store i32 %157, i32* %10, align 4
  br label %158

158:                                              ; preds = %149, %136
  %159 = load i8*, i8** %8, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* @M_MFIBUF, align 4
  %164 = call i32 @free(i8* %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %158
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %40, %21
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @mfi_config_lock(%struct.mfi_softc*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mfi_command* @mfi_dequeue_free(%struct.mfi_softc*) #1

declare dso_local i32 @msleep(i32 (%struct.mfi_softc*, %struct.mfi_ioc_passthru*)*, i32*, i32, i8*, i32) #1

declare dso_local i32 @bcopy(%struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame*, i32) #1

declare dso_local i32 @mfi_check_command_pre(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @mfi_wait_command(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @mfi_check_command_post(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mfi_config_unlock(%struct.mfi_softc*, i32) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
