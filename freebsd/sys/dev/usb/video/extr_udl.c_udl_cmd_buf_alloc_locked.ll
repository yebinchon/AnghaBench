; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_buf_alloc_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_buf_alloc_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_cmd_buf = type { i64 }
%struct.udl_softc = type { i32, i32, i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udl_cmd_buf* (%struct.udl_softc*, i32)* @udl_cmd_buf_alloc_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udl_cmd_buf* @udl_cmd_buf_alloc_locked(%struct.udl_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.udl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udl_cmd_buf*, align 8
  store %struct.udl_softc* %0, %struct.udl_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %16, %2
  %7 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %8 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %7, i32 0, i32 0
  %9 = call %struct.udl_cmd_buf* @TAILQ_FIRST(i32* %8)
  store %struct.udl_cmd_buf* %9, %struct.udl_cmd_buf** %5, align 8
  %10 = icmp eq %struct.udl_cmd_buf* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %22

16:                                               ; preds = %11
  %17 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %18 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %17, i32 0, i32 2
  %19 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %20 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %19, i32 0, i32 1
  %21 = call i32 @cv_wait(i32* %18, i32* %20)
  br label %6

22:                                               ; preds = %15, %6
  %23 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %5, align 8
  %24 = icmp ne %struct.udl_cmd_buf* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %27 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %26, i32 0, i32 0
  %28 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %5, align 8
  %29 = load i32, i32* @entry, align 4
  %30 = call i32 @TAILQ_REMOVE(i32* %27, %struct.udl_cmd_buf* %28, i32 %29)
  %31 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %5, align 8
  %32 = getelementptr inbounds %struct.udl_cmd_buf, %struct.udl_cmd_buf* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %25, %22
  %34 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %5, align 8
  ret %struct.udl_cmd_buf* %34
}

declare dso_local %struct.udl_cmd_buf* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.udl_cmd_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
