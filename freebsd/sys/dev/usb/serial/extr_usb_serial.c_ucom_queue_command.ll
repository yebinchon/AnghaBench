; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_queue_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.TYPE_2__*, %struct.ucom_super_softc* }
%struct.TYPE_2__ = type { i32* }
%struct.ucom_super_softc = type { i32 }
%struct.termios = type { i32 }
%struct.usb_proc_msg = type { i32 }
%struct.ucom_param_task = type { %struct.TYPE_2__, %struct.termios, %struct.ucom_softc* }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"proc is gone\0A\00", align 1
@ucom_cfg_close = common dso_local global i32* null, align 8
@ucom_cfg_start_transfers = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i32*, %struct.termios*, %struct.usb_proc_msg*, %struct.usb_proc_msg*)* @ucom_queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_queue_command(%struct.ucom_softc* %0, i32* %1, %struct.termios* %2, %struct.usb_proc_msg* %3, %struct.usb_proc_msg* %4) #0 {
  %6 = alloca %struct.ucom_softc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.termios*, align 8
  %9 = alloca %struct.usb_proc_msg*, align 8
  %10 = alloca %struct.usb_proc_msg*, align 8
  %11 = alloca %struct.ucom_super_softc*, align 8
  %12 = alloca %struct.ucom_param_task*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.termios* %2, %struct.termios** %8, align 8
  store %struct.usb_proc_msg* %3, %struct.usb_proc_msg** %9, align 8
  store %struct.usb_proc_msg* %4, %struct.usb_proc_msg** %10, align 8
  %13 = load %struct.ucom_softc*, %struct.ucom_softc** %6, align 8
  %14 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %13, i32 0, i32 1
  %15 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %14, align 8
  store %struct.ucom_super_softc* %15, %struct.ucom_super_softc** %11, align 8
  %16 = load %struct.ucom_softc*, %struct.ucom_softc** %6, align 8
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @UCOM_MTX_ASSERT(%struct.ucom_softc* %16, i32 %17)
  %19 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %11, align 8
  %20 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %19, i32 0, i32 0
  %21 = call i64 @usb_proc_is_gone(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %66

25:                                               ; preds = %5
  %26 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %11, align 8
  %27 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %26, i32 0, i32 0
  %28 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %9, align 8
  %29 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %10, align 8
  %30 = call i64 @usb_proc_msignal(i32* %27, %struct.usb_proc_msg* %28, %struct.usb_proc_msg* %29)
  %31 = inttoptr i64 %30 to %struct.ucom_param_task*
  store %struct.ucom_param_task* %31, %struct.ucom_param_task** %12, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.ucom_param_task*, %struct.ucom_param_task** %12, align 8
  %34 = getelementptr inbounds %struct.ucom_param_task, %struct.ucom_param_task* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.ucom_softc*, %struct.ucom_softc** %6, align 8
  %37 = load %struct.ucom_param_task*, %struct.ucom_param_task** %12, align 8
  %38 = getelementptr inbounds %struct.ucom_param_task, %struct.ucom_param_task* %37, i32 0, i32 2
  store %struct.ucom_softc* %36, %struct.ucom_softc** %38, align 8
  %39 = load %struct.termios*, %struct.termios** %8, align 8
  %40 = icmp ne %struct.termios* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %25
  %42 = load %struct.ucom_param_task*, %struct.ucom_param_task** %12, align 8
  %43 = getelementptr inbounds %struct.ucom_param_task, %struct.ucom_param_task* %42, i32 0, i32 1
  %44 = load %struct.termios*, %struct.termios** %8, align 8
  %45 = bitcast %struct.termios* %43 to i8*
  %46 = bitcast %struct.termios* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 4 %46, i64 4, i1 false)
  br label %47

47:                                               ; preds = %41, %25
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** @ucom_cfg_close, align 8
  %50 = icmp eq i32* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.ucom_super_softc*, %struct.ucom_super_softc** %11, align 8
  %53 = getelementptr inbounds %struct.ucom_super_softc, %struct.ucom_super_softc* %52, i32 0, i32 0
  %54 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %9, align 8
  %55 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %10, align 8
  %56 = call i32 @usb_proc_mwait(i32* %53, %struct.usb_proc_msg* %54, %struct.usb_proc_msg* %55)
  br label %57

57:                                               ; preds = %51, %47
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** @ucom_cfg_start_transfers, align 8
  %60 = icmp eq i32* %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.ucom_param_task*, %struct.ucom_param_task** %12, align 8
  %63 = getelementptr inbounds %struct.ucom_param_task, %struct.ucom_param_task* %62, i32 0, i32 0
  %64 = load %struct.ucom_softc*, %struct.ucom_softc** %6, align 8
  %65 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %64, i32 0, i32 0
  store %struct.TYPE_2__* %63, %struct.TYPE_2__** %65, align 8
  br label %66

66:                                               ; preds = %23, %61, %57
  ret void
}

declare dso_local i32 @UCOM_MTX_ASSERT(%struct.ucom_softc*, i32) #1

declare dso_local i64 @usb_proc_is_gone(i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @usb_proc_msignal(i32*, %struct.usb_proc_msg*, %struct.usb_proc_msg*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @usb_proc_mwait(i32*, %struct.usb_proc_msg*, %struct.usb_proc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
