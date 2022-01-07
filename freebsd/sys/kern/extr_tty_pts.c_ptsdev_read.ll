; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.tty* }
%struct.tty = type { i32 }
%struct.uio = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.pts_softc = type { i32, i8, i32 }

@PTS_PKT = common dso_local global i32 0, align 4
@TIOCPKT_DATA = common dso_local global i8 0, align 1
@PTS_FINISHED = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @ptsdev_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptsdev_read(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.uio*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.tty*, align 8
  %13 = alloca %struct.pts_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.uio* %1, %struct.uio** %8, align 8
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = load %struct.file*, %struct.file** %7, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = load %struct.tty*, %struct.tty** %17, align 8
  store %struct.tty* %18, %struct.tty** %12, align 8
  %19 = load %struct.tty*, %struct.tty** %12, align 8
  %20 = call %struct.pts_softc* @tty_softc(%struct.tty* %19)
  store %struct.pts_softc* %20, %struct.pts_softc** %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.uio*, %struct.uio** %8, align 8
  %22 = getelementptr inbounds %struct.uio, %struct.uio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %114

26:                                               ; preds = %5
  %27 = load %struct.tty*, %struct.tty** %12, align 8
  %28 = call i32 @tty_lock(%struct.tty* %27)
  br label %29

29:                                               ; preds = %109, %26
  %30 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %31 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PTS_PKT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %38 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %37, i32 0, i32 1
  %39 = load i8, i8* %38, align 4
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %44 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 4
  store i8 %45, i8* %15, align 1
  %46 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %47 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %46, i32 0, i32 1
  store i8 0, i8* %47, align 4
  %48 = load %struct.tty*, %struct.tty** %12, align 8
  %49 = call i32 @tty_unlock(%struct.tty* %48)
  %50 = load i8, i8* %15, align 1
  %51 = load %struct.uio*, %struct.uio** %8, align 8
  %52 = call i32 @ureadc(i8 signext %50, %struct.uio* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %6, align 4
  br label %114

54:                                               ; preds = %36, %29
  %55 = load %struct.tty*, %struct.tty** %12, align 8
  %56 = call i64 @ttydisc_getc_poll(%struct.tty* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %60 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PTS_PKT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load %struct.tty*, %struct.tty** %12, align 8
  %67 = call i32 @tty_unlock(%struct.tty* %66)
  %68 = load i8, i8* @TIOCPKT_DATA, align 1
  %69 = load %struct.uio*, %struct.uio** %8, align 8
  %70 = call i32 @ureadc(i8 signext %68, %struct.uio* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %6, align 4
  br label %114

75:                                               ; preds = %65
  %76 = load %struct.tty*, %struct.tty** %12, align 8
  %77 = call i32 @tty_lock(%struct.tty* %76)
  br label %78

78:                                               ; preds = %75, %58
  %79 = load %struct.tty*, %struct.tty** %12, align 8
  %80 = load %struct.uio*, %struct.uio** %8, align 8
  %81 = call i32 @ttydisc_getc_uio(%struct.tty* %79, %struct.uio* %80)
  store i32 %81, i32* %14, align 4
  br label %110

82:                                               ; preds = %54
  %83 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %84 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PTS_FINISHED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %110

90:                                               ; preds = %82
  %91 = load %struct.file*, %struct.file** %7, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @O_NONBLOCK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %98, i32* %14, align 4
  br label %110

99:                                               ; preds = %90
  %100 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %101 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %100, i32 0, i32 2
  %102 = load %struct.tty*, %struct.tty** %12, align 8
  %103 = getelementptr inbounds %struct.tty, %struct.tty* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cv_wait_sig(i32* %101, i32 %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %110

109:                                              ; preds = %99
  br label %29

110:                                              ; preds = %108, %97, %89, %78
  %111 = load %struct.tty*, %struct.tty** %12, align 8
  %112 = call i32 @tty_unlock(%struct.tty* %111)
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %73, %42, %25
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local %struct.pts_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @ureadc(i8 signext, %struct.uio*) #1

declare dso_local i64 @ttydisc_getc_poll(%struct.tty*) #1

declare dso_local i32 @ttydisc_getc_uio(%struct.tty*, %struct.uio*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
