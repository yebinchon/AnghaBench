; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sndstat.c_sndstat_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sndstat.c_sndstat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.sndstat_file = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SBUF_AUTOEXTEND = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sndstat_filelist = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@sndstat_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @sndstat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sndstat_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.sndstat_file*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.sndstat_file* @malloc(i32 4, i32 %11, i32 %14)
  store %struct.sndstat_file* %15, %struct.sndstat_file** %10, align 8
  %16 = call i32 (...) @SNDSTAT_LOCK()
  %17 = load %struct.sndstat_file*, %struct.sndstat_file** %10, align 8
  %18 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %17, i32 0, i32 0
  %19 = load i32, i32* @SBUF_AUTOEXTEND, align 4
  %20 = call i32* @sbuf_new(i32* %18, i32* null, i32 4096, i32 %19)
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = call i32 (...) @SNDSTAT_UNLOCK()
  %24 = load %struct.sndstat_file*, %struct.sndstat_file** %10, align 8
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = call i32 @free(%struct.sndstat_file* %24, i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %5, align 4
  br label %35

28:                                               ; preds = %4
  %29 = load %struct.sndstat_file*, %struct.sndstat_file** %10, align 8
  %30 = load i32, i32* @entry, align 4
  %31 = call i32 @TAILQ_INSERT_TAIL(i32* @sndstat_filelist, %struct.sndstat_file* %29, i32 %30)
  %32 = call i32 (...) @SNDSTAT_UNLOCK()
  %33 = load %struct.sndstat_file*, %struct.sndstat_file** %10, align 8
  %34 = call i32 @devfs_set_cdevpriv(%struct.sndstat_file* %33, i32* @sndstat_close)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %22
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.sndstat_file* @malloc(i32, i32, i32) #1

declare dso_local i32 @SNDSTAT_LOCK(...) #1

declare dso_local i32* @sbuf_new(i32*, i32*, i32, i32) #1

declare dso_local i32 @SNDSTAT_UNLOCK(...) #1

declare dso_local i32 @free(%struct.sndstat_file*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.sndstat_file*, i32) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.sndstat_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
