; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunpoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.tuntap_softc* }
%struct.tuntap_softc = type { i32 }
%struct.thread = type { i32 }
%struct.ifnet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"tunpoll\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"tunpoll q=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"tunpoll waiting\0A\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @tunpoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunpoll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.tuntap_softc*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  %10 = load %struct.cdev*, %struct.cdev** %4, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load %struct.tuntap_softc*, %struct.tuntap_softc** %11, align 8
  store %struct.tuntap_softc* %12, %struct.tuntap_softc** %7, align 8
  %13 = load %struct.tuntap_softc*, %struct.tuntap_softc** %7, align 8
  %14 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %13)
  store %struct.ifnet* %14, %struct.ifnet** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %16 = call i32 (%struct.ifnet*, i8*, ...) @TUNDEBUG(%struct.ifnet* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @POLLIN, align 4
  %19 = load i32, i32* @POLLRDNORM, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %3
  %24 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = call i32 @IFQ_LOCK(%struct.TYPE_4__* %25)
  %27 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = call i32 @IFQ_IS_EMPTY(%struct.TYPE_4__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %23
  %32 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %33 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.ifnet*, i8*, ...) @TUNDEBUG(%struct.ifnet* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @POLLIN, align 4
  %40 = load i32, i32* @POLLRDNORM, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %52

45:                                               ; preds = %23
  %46 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %47 = call i32 (%struct.ifnet*, i8*, ...) @TUNDEBUG(%struct.ifnet* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.thread*, %struct.thread** %6, align 8
  %49 = load %struct.tuntap_softc*, %struct.tuntap_softc** %7, align 8
  %50 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %49, i32 0, i32 0
  %51 = call i32 @selrecord(%struct.thread* %48, i32* %50)
  br label %52

52:                                               ; preds = %45, %31
  %53 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 0
  %55 = call i32 @IFQ_UNLOCK(%struct.TYPE_4__* %54)
  br label %56

56:                                               ; preds = %52, %3
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @POLLOUT, align 4
  %59 = load i32, i32* @POLLWRNORM, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local %struct.ifnet* @TUN2IFP(%struct.tuntap_softc*) #1

declare dso_local i32 @TUNDEBUG(%struct.ifnet*, i8*, ...) #1

declare dso_local i32 @IFQ_LOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @IFQ_IS_EMPTY(%struct.TYPE_4__*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @IFQ_UNLOCK(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
