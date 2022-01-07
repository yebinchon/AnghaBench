; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.iscsi_softc* }
%struct.iscsi_softc = type { i32 }
%struct.thread = type { i32 }
%struct.iscsi_daemon_request = type { i32 }
%struct.iscsi_daemon_handoff = type { i32 }
%struct.iscsi_daemon_fail = type { i32 }
%struct.iscsi_session_add = type { i32 }
%struct.iscsi_session_remove = type { i32 }
%struct.iscsi_session_list = type { i32 }
%struct.iscsi_session_modify = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @iscsi_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.iscsi_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %13 = load %struct.cdev*, %struct.cdev** %7, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.iscsi_softc*, %struct.iscsi_softc** %14, align 8
  store %struct.iscsi_softc* %15, %struct.iscsi_softc** %12, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %52 [
    i32 132, label %17
    i32 135, label %22
    i32 136, label %27
    i32 131, label %32
    i32 128, label %37
    i32 130, label %42
    i32 129, label %47
  ]

17:                                               ; preds = %5
  %18 = load %struct.iscsi_softc*, %struct.iscsi_softc** %12, align 8
  %19 = load i64, i64* %9, align 8
  %20 = inttoptr i64 %19 to %struct.iscsi_daemon_request*
  %21 = call i32 @iscsi_ioctl_daemon_wait(%struct.iscsi_softc* %18, %struct.iscsi_daemon_request* %20)
  store i32 %21, i32* %6, align 4
  br label %54

22:                                               ; preds = %5
  %23 = load %struct.iscsi_softc*, %struct.iscsi_softc** %12, align 8
  %24 = load i64, i64* %9, align 8
  %25 = inttoptr i64 %24 to %struct.iscsi_daemon_handoff*
  %26 = call i32 @iscsi_ioctl_daemon_handoff(%struct.iscsi_softc* %23, %struct.iscsi_daemon_handoff* %25)
  store i32 %26, i32* %6, align 4
  br label %54

27:                                               ; preds = %5
  %28 = load %struct.iscsi_softc*, %struct.iscsi_softc** %12, align 8
  %29 = load i64, i64* %9, align 8
  %30 = inttoptr i64 %29 to %struct.iscsi_daemon_fail*
  %31 = call i32 @iscsi_ioctl_daemon_fail(%struct.iscsi_softc* %28, %struct.iscsi_daemon_fail* %30)
  store i32 %31, i32* %6, align 4
  br label %54

32:                                               ; preds = %5
  %33 = load %struct.iscsi_softc*, %struct.iscsi_softc** %12, align 8
  %34 = load i64, i64* %9, align 8
  %35 = inttoptr i64 %34 to %struct.iscsi_session_add*
  %36 = call i32 @iscsi_ioctl_session_add(%struct.iscsi_softc* %33, %struct.iscsi_session_add* %35)
  store i32 %36, i32* %6, align 4
  br label %54

37:                                               ; preds = %5
  %38 = load %struct.iscsi_softc*, %struct.iscsi_softc** %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = inttoptr i64 %39 to %struct.iscsi_session_remove*
  %41 = call i32 @iscsi_ioctl_session_remove(%struct.iscsi_softc* %38, %struct.iscsi_session_remove* %40)
  store i32 %41, i32* %6, align 4
  br label %54

42:                                               ; preds = %5
  %43 = load %struct.iscsi_softc*, %struct.iscsi_softc** %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = inttoptr i64 %44 to %struct.iscsi_session_list*
  %46 = call i32 @iscsi_ioctl_session_list(%struct.iscsi_softc* %43, %struct.iscsi_session_list* %45)
  store i32 %46, i32* %6, align 4
  br label %54

47:                                               ; preds = %5
  %48 = load %struct.iscsi_softc*, %struct.iscsi_softc** %12, align 8
  %49 = load i64, i64* %9, align 8
  %50 = inttoptr i64 %49 to %struct.iscsi_session_modify*
  %51 = call i32 @iscsi_ioctl_session_modify(%struct.iscsi_softc* %48, %struct.iscsi_session_modify* %50)
  store i32 %51, i32* %6, align 4
  br label %54

52:                                               ; preds = %5
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %47, %42, %37, %32, %27, %22, %17
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @iscsi_ioctl_daemon_wait(%struct.iscsi_softc*, %struct.iscsi_daemon_request*) #1

declare dso_local i32 @iscsi_ioctl_daemon_handoff(%struct.iscsi_softc*, %struct.iscsi_daemon_handoff*) #1

declare dso_local i32 @iscsi_ioctl_daemon_fail(%struct.iscsi_softc*, %struct.iscsi_daemon_fail*) #1

declare dso_local i32 @iscsi_ioctl_session_add(%struct.iscsi_softc*, %struct.iscsi_session_add*) #1

declare dso_local i32 @iscsi_ioctl_session_remove(%struct.iscsi_softc*, %struct.iscsi_session_remove*) #1

declare dso_local i32 @iscsi_ioctl_session_list(%struct.iscsi_softc*, %struct.iscsi_session_list*) #1

declare dso_local i32 @iscsi_ioctl_session_modify(%struct.iscsi_softc*, %struct.iscsi_session_modify*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
