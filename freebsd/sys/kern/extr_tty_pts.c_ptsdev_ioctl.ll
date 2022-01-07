; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.tty* }
%struct.tty = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.termios }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.termios = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.pts_softc = type { i32, i32 }
%struct.fiodgname_arg = type { i32 }

@D_TTY = common dso_local global i32 0, align 4
@PTS_FINISHED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TIOCSETA = common dso_local global i32 0, align 4
@NO_PID = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@NSIG = common dso_local global i32 0, align 4
@PTS_PKT = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*, %struct.ucred*, %struct.thread*)* @ptsdev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptsdev_ioctl(%struct.file* %0, i32 %1, i8* %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.tty*, align 8
  %13 = alloca %struct.pts_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fiodgname_arg*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %19 = load %struct.file*, %struct.file** %7, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = load %struct.tty*, %struct.tty** %20, align 8
  store %struct.tty* %21, %struct.tty** %12, align 8
  %22 = load %struct.tty*, %struct.tty** %12, align 8
  %23 = call %struct.pts_softc* @tty_softc(%struct.tty* %22)
  store %struct.pts_softc* %23, %struct.pts_softc** %13, align 8
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %161 [
    i32 139, label %25
    i32 138, label %29
    i32 137, label %30
    i32 141, label %50
    i32 130, label %72
    i32 129, label %72
    i32 135, label %74
    i32 133, label %96
    i32 131, label %117
    i32 128, label %118
    i32 132, label %138
  ]

25:                                               ; preds = %5
  %26 = load i32, i32* @D_TTY, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %6, align 4
  br label %181

29:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %181

30:                                               ; preds = %5
  %31 = load %struct.tty*, %struct.tty** %12, align 8
  %32 = call i32 @tty_lock(%struct.tty* %31)
  %33 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %34 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PTS_FINISHED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i8*, i8** %9, align 8
  %41 = bitcast i8* %40 to i32*
  store i32 1, i32* %41, align 4
  br label %47

42:                                               ; preds = %30
  %43 = load %struct.tty*, %struct.tty** %12, align 8
  %44 = call i32 @ttydisc_getc_poll(%struct.tty* %43)
  %45 = load i8*, i8** %9, align 8
  %46 = bitcast i8* %45 to i32*
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load %struct.tty*, %struct.tty** %12, align 8
  %49 = call i32 @tty_unlock(%struct.tty* %48)
  store i32 0, i32* %6, align 4
  br label %181

50:                                               ; preds = %5
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to %struct.fiodgname_arg*
  store %struct.fiodgname_arg* %52, %struct.fiodgname_arg** %16, align 8
  %53 = load %struct.tty*, %struct.tty** %12, align 8
  %54 = call i8* @tty_devname(%struct.tty* %53)
  store i8* %54, i8** %17, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load %struct.fiodgname_arg*, %struct.fiodgname_arg** %16, align 8
  %60 = getelementptr inbounds %struct.fiodgname_arg, %struct.fiodgname_arg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %6, align 4
  br label %181

65:                                               ; preds = %50
  %66 = load i8*, i8** %17, align 8
  %67 = load %struct.fiodgname_arg*, %struct.fiodgname_arg** %16, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @fiodgname_buf_get_ptr(%struct.fiodgname_arg* %67, i32 %68)
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @copyout(i8* %66, i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  br label %181

72:                                               ; preds = %5, %5
  %73 = load i32, i32* @TIOCSETA, align 4
  store i32 %73, i32* %8, align 4
  br label %161

74:                                               ; preds = %5
  %75 = load %struct.tty*, %struct.tty** %12, align 8
  %76 = call i32 @tty_lock(%struct.tty* %75)
  %77 = load %struct.tty*, %struct.tty** %12, align 8
  %78 = getelementptr inbounds %struct.tty, %struct.tty* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = icmp ne %struct.TYPE_3__* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.tty*, %struct.tty** %12, align 8
  %83 = getelementptr inbounds %struct.tty, %struct.tty* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = bitcast i8* %87 to i32*
  store i32 %86, i32* %88, align 4
  br label %93

89:                                               ; preds = %74
  %90 = load i32, i32* @NO_PID, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = bitcast i8* %91 to i32*
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %81
  %94 = load %struct.tty*, %struct.tty** %12, align 8
  %95 = call i32 @tty_unlock(%struct.tty* %94)
  store i32 0, i32* %6, align 4
  br label %181

96:                                               ; preds = %5
  %97 = load %struct.tty*, %struct.tty** %12, align 8
  %98 = call i32 @tty_lock(%struct.tty* %97)
  %99 = load %struct.tty*, %struct.tty** %12, align 8
  %100 = getelementptr inbounds %struct.tty, %struct.tty* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = icmp eq %struct.TYPE_4__* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @ENOTTY, align 4
  store i32 %104, i32* %14, align 4
  br label %113

105:                                              ; preds = %96
  %106 = load %struct.tty*, %struct.tty** %12, align 8
  %107 = getelementptr inbounds %struct.tty, %struct.tty* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = bitcast i8* %111 to i32*
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %105, %103
  %114 = load %struct.tty*, %struct.tty** %12, align 8
  %115 = call i32 @tty_unlock(%struct.tty* %114)
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %6, align 4
  br label %181

117:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %181

118:                                              ; preds = %5
  %119 = load i8*, i8** %9, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %122, 1
  br i1 %123, label %128, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @NSIG, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124, %118
  %129 = load i32, i32* @EINVAL, align 4
  store i32 %129, i32* %6, align 4
  br label %181

130:                                              ; preds = %124
  %131 = load %struct.tty*, %struct.tty** %12, align 8
  %132 = call i32 @tty_lock(%struct.tty* %131)
  %133 = load %struct.tty*, %struct.tty** %12, align 8
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @tty_signal_pgrp(%struct.tty* %133, i32 %134)
  %136 = load %struct.tty*, %struct.tty** %12, align 8
  %137 = call i32 @tty_unlock(%struct.tty* %136)
  store i32 0, i32* %6, align 4
  br label %181

138:                                              ; preds = %5
  %139 = load %struct.tty*, %struct.tty** %12, align 8
  %140 = call i32 @tty_lock(%struct.tty* %139)
  %141 = load i8*, i8** %9, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load i32, i32* @PTS_PKT, align 4
  %147 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %148 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %158

151:                                              ; preds = %138
  %152 = load i32, i32* @PTS_PKT, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.pts_softc*, %struct.pts_softc** %13, align 8
  %155 = getelementptr inbounds %struct.pts_softc, %struct.pts_softc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %151, %145
  %159 = load %struct.tty*, %struct.tty** %12, align 8
  %160 = call i32 @tty_unlock(%struct.tty* %159)
  store i32 0, i32* %6, align 4
  br label %181

161:                                              ; preds = %5, %72
  %162 = load %struct.tty*, %struct.tty** %12, align 8
  %163 = call i32 @tty_lock(%struct.tty* %162)
  %164 = load %struct.tty*, %struct.tty** %12, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i8*, i8** %9, align 8
  %167 = load %struct.file*, %struct.file** %7, align 8
  %168 = getelementptr inbounds %struct.file, %struct.file* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.thread*, %struct.thread** %11, align 8
  %171 = call i32 @tty_ioctl(%struct.tty* %164, i32 %165, i8* %166, i32 %169, %struct.thread* %170)
  store i32 %171, i32* %14, align 4
  %172 = load %struct.tty*, %struct.tty** %12, align 8
  %173 = call i32 @tty_unlock(%struct.tty* %172)
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @ENOIOCTL, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %161
  %178 = load i32, i32* @ENOTTY, align 4
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %177, %161
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %179, %158, %130, %128, %117, %113, %93, %65, %63, %47, %29, %25
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local %struct.pts_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @ttydisc_getc_poll(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i8* @tty_devname(%struct.tty*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @fiodgname_buf_get_ptr(%struct.fiodgname_arg*, i32) #1

declare dso_local i32 @tty_signal_pgrp(%struct.tty*, i32) #1

declare dso_local i32 @tty_ioctl(%struct.tty*, i32, i8*, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
