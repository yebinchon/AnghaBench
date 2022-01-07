; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.tty* }
%struct.tty = type { i32 }
%struct.uio = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.pts_softc = type { i32, i32 }

@PTS_FINISHED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @ptsdev_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptsdev_write(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.uio*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.tty*, align 8
  %13 = alloca %struct.pts_softc*, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.uio* %1, %struct.uio** %8, align 8
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %19 = load %struct.file*, %struct.file** %7, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = load %struct.tty*, %struct.tty** %20, align 8
  store %struct.tty* %21, %struct.tty** %12, align 8
  %22 = load %struct.tty*, %struct.tty** %12, align 8
  %23 = call %struct.pts_softc* @tty_softc(%struct.tty* %22)
  store %struct.pts_softc* %23, %struct.pts_softc** %13, align 8
  store i32 0, i32* %18, align 4
  %24 = load %struct.uio*, %struct.uio** %8, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %119

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %104, %29
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  store i8* %31, i8** %15, align 8
  %32 = load %struct.uio*, %struct.uio** %8, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @MIN(i64 %34, i32 256)
  store i64 %35, i64* %16, align 8
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %37 = load i64, i64* %16, align 8
  %38 = load %struct.uio*, %struct.uio** %8, align 8
  %39 = call i32 @uiomove(i8* %36, i64 %37, %struct.uio* %38)
  store i32 %39, i32* %18, align 4
  %40 = load %struct.tty*, %struct.tty** %12, align 8
  %41 = call i32 @tty_lock(%struct.tty* %40)
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i64 0, i64* %16, align 8
  br label %108

45:                                               ; preds = %30
  %46 = load i64, i64* %16, align 8
  %47 = icmp ugt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @MPASS(i32 %48)
  br label %50

50:                                               ; preds = %95, %45
  %51 = load %struct.tty*, %struct.tty** %12, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = call i64 @ttydisc_rint_simple(%struct.tty* %51, i8* %52, i64 %53)
  store i64 %54, i64* %17, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %15, align 8
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* %16, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %16, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %98

64:                                               ; preds = %50
  %65 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %66 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PTS_FINISHED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @EIO, align 4
  store i32 %72, i32* %18, align 4
  br label %108

73:                                               ; preds = %64
  %74 = load %struct.file*, %struct.file** %7, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @O_NONBLOCK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %81, i32* %18, align 4
  br label %108

82:                                               ; preds = %73
  %83 = load %struct.tty*, %struct.tty** %12, align 8
  %84 = call i32 @ttydisc_rint_done(%struct.tty* %83)
  %85 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %86 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %85, i32 0, i32 1
  %87 = load %struct.tty*, %struct.tty** %12, align 8
  %88 = getelementptr inbounds %struct.tty, %struct.tty* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cv_wait_sig(i32* %86, i32 %89)
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %108

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %16, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %50, label %98

98:                                               ; preds = %95, %63
  %99 = load %struct.uio*, %struct.uio** %8, align 8
  %100 = getelementptr inbounds %struct.uio, %struct.uio* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %107

104:                                              ; preds = %98
  %105 = load %struct.tty*, %struct.tty** %12, align 8
  %106 = call i32 @tty_unlock(%struct.tty* %105)
  br label %30

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107, %93, %80, %71, %44
  %109 = load %struct.tty*, %struct.tty** %12, align 8
  %110 = call i32 @ttydisc_rint_done(%struct.tty* %109)
  %111 = load %struct.tty*, %struct.tty** %12, align 8
  %112 = call i32 @tty_unlock(%struct.tty* %111)
  %113 = load i64, i64* %16, align 8
  %114 = load %struct.uio*, %struct.uio** %8, align 8
  %115 = getelementptr inbounds %struct.uio, %struct.uio* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %108, %28
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.pts_softc* @tty_softc(%struct.tty*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @ttydisc_rint_simple(%struct.tty*, i8*, i64) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
