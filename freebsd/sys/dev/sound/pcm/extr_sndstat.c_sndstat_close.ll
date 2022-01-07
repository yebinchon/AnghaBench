; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sndstat.c_sndstat_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sndstat.c_sndstat_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sndstat_file = type { i32 }

@sndstat_filelist = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sndstat_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sndstat_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sndstat_file*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sndstat_file*
  store %struct.sndstat_file* %5, %struct.sndstat_file** %3, align 8
  %6 = call i32 (...) @SNDSTAT_LOCK()
  %7 = load %struct.sndstat_file*, %struct.sndstat_file** %3, align 8
  %8 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %7, i32 0, i32 0
  %9 = call i32 @sbuf_delete(i32* %8)
  %10 = load %struct.sndstat_file*, %struct.sndstat_file** %3, align 8
  %11 = load i32, i32* @entry, align 4
  %12 = call i32 @TAILQ_REMOVE(i32* @sndstat_filelist, %struct.sndstat_file* %10, i32 %11)
  %13 = call i32 (...) @SNDSTAT_UNLOCK()
  %14 = load %struct.sndstat_file*, %struct.sndstat_file** %3, align 8
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = call i32 @free(%struct.sndstat_file* %14, i32 %15)
  ret void
}

declare dso_local i32 @SNDSTAT_LOCK(...) #1

declare dso_local i32 @sbuf_delete(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sndstat_file*, i32) #1

declare dso_local i32 @SNDSTAT_UNLOCK(...) #1

declare dso_local i32 @free(%struct.sndstat_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
