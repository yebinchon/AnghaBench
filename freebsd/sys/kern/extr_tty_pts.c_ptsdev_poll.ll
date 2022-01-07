; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.tty* }
%struct.tty = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.pts_softc = type { i32, i32, i32, i64 }

@PTS_FINISHED = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@PTS_PKT = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.ucred*, %struct.thread*)* @ptsdev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptsdev_poll(%struct.file* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.tty*, align 8
  %11 = alloca %struct.pts_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.tty*, %struct.tty** %14, align 8
  store %struct.tty* %15, %struct.tty** %10, align 8
  %16 = load %struct.tty*, %struct.tty** %10, align 8
  %17 = call %struct.pts_softc* @tty_softc(%struct.tty* %16)
  store %struct.pts_softc* %17, %struct.pts_softc** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.tty*, %struct.tty** %10, align 8
  %19 = call i32 @tty_lock(%struct.tty* %18)
  %20 = load %struct.pts_softc*, %struct.pts_softc** %11, align 8
  %21 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PTS_FINISHED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.tty*, %struct.tty** %10, align 8
  %28 = call i32 @tty_unlock(%struct.tty* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @POLLIN, align 4
  %31 = load i32, i32* @POLLRDNORM, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = load i32, i32* @POLLHUP, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %5, align 4
  br label %120

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @POLLIN, align 4
  %39 = load i32, i32* @POLLRDNORM, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %36
  %44 = load %struct.tty*, %struct.tty** %10, align 8
  %45 = call i64 @ttydisc_getc_poll(%struct.tty* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load %struct.pts_softc*, %struct.pts_softc** %11, align 8
  %49 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PTS_PKT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.pts_softc*, %struct.pts_softc** %11, align 8
  %56 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54, %43
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @POLLIN, align 4
  %62 = load i32, i32* @POLLRDNORM, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %59, %54, %47
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @POLLOUT, align 4
  %71 = load i32, i32* @POLLWRNORM, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.tty*, %struct.tty** %10, align 8
  %77 = call i64 @ttydisc_rint_poll(%struct.tty* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @POLLOUT, align 4
  %82 = load i32, i32* @POLLWRNORM, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %79, %75
  br label %88

88:                                               ; preds = %87, %68
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @POLLIN, align 4
  %94 = load i32, i32* @POLLRDNORM, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.thread*, %struct.thread** %9, align 8
  %100 = load %struct.pts_softc*, %struct.pts_softc** %11, align 8
  %101 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %100, i32 0, i32 2
  %102 = call i32 @selrecord(%struct.thread* %99, i32* %101)
  br label %103

103:                                              ; preds = %98, %91
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @POLLOUT, align 4
  %106 = load i32, i32* @POLLWRNORM, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.thread*, %struct.thread** %9, align 8
  %112 = load %struct.pts_softc*, %struct.pts_softc** %11, align 8
  %113 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %112, i32 0, i32 1
  %114 = call i32 @selrecord(%struct.thread* %111, i32* %113)
  br label %115

115:                                              ; preds = %110, %103
  br label %116

116:                                              ; preds = %115, %88
  %117 = load %struct.tty*, %struct.tty** %10, align 8
  %118 = call i32 @tty_unlock(%struct.tty* %117)
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %26
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.pts_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i64 @ttydisc_getc_poll(%struct.tty*) #1

declare dso_local i64 @ttydisc_rint_poll(%struct.tty*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
