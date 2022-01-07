; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.ipmi_softc* }
%struct.ipmi_softc = type { i32 }
%struct.thread = type { i32 }
%struct.ipmi_device = type { i64, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @ipmi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.ipmi_device*, align 8
  %9 = alloca %struct.ipmi_softc*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = bitcast %struct.ipmi_device** %8 to i8**
  %12 = call i64 @devfs_get_cdevpriv(i8** %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

15:                                               ; preds = %3
  %16 = load %struct.cdev*, %struct.cdev** %5, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load %struct.ipmi_softc*, %struct.ipmi_softc** %17, align 8
  store %struct.ipmi_softc* %18, %struct.ipmi_softc** %9, align 8
  %19 = load %struct.ipmi_softc*, %struct.ipmi_softc** %9, align 8
  %20 = call i32 @IPMI_LOCK(%struct.ipmi_softc* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @POLLIN, align 4
  %23 = load i32, i32* @POLLRDNORM, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %15
  %28 = load %struct.ipmi_device*, %struct.ipmi_device** %8, align 8
  %29 = getelementptr inbounds %struct.ipmi_device, %struct.ipmi_device* %28, i32 0, i32 2
  %30 = call i32 @TAILQ_EMPTY(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @POLLIN, align 4
  %35 = load i32, i32* @POLLRDNORM, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.ipmi_device*, %struct.ipmi_device** %8, align 8
  %42 = getelementptr inbounds %struct.ipmi_device, %struct.ipmi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @POLLERR, align 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %45, %40
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @POLLIN, align 4
  %56 = load i32, i32* @POLLRDNORM, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.thread*, %struct.thread** %7, align 8
  %62 = load %struct.ipmi_device*, %struct.ipmi_device** %8, align 8
  %63 = getelementptr inbounds %struct.ipmi_device, %struct.ipmi_device* %62, i32 0, i32 1
  %64 = call i32 @selrecord(%struct.thread* %61, i32* %63)
  br label %65

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %65, %50
  %67 = load %struct.ipmi_softc*, %struct.ipmi_softc** %9, align 8
  %68 = call i32 @IPMI_UNLOCK(%struct.ipmi_softc* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %14
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @IPMI_LOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @IPMI_UNLOCK(%struct.ipmi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
