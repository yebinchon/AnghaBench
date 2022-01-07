; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.umidi_chan = type { i32, i32, i32 }
%struct.umidi_sub_chan = type { i32, i32, i32 }

@FREAD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@UMIDI_ST_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32)* @umidi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umidi_open(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.umidi_chan*, align 8
  %7 = alloca %struct.umidi_sub_chan*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %9 = call %struct.umidi_chan* @usb_fifo_softc(%struct.usb_fifo* %8)
  store %struct.umidi_chan* %9, %struct.umidi_chan** %6, align 8
  %10 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %11 = call %struct.umidi_sub_chan* @umidi_sub_by_fifo(%struct.usb_fifo* %10)
  store %struct.umidi_sub_chan* %11, %struct.umidi_sub_chan** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @FREAD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %18 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %17, i32 4, i32 256)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %3, align 4
  br label %63

22:                                               ; preds = %16
  %23 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %24 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %23, i32 0, i32 0
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %27 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %7, align 8
  %31 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %33 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %32, i32 0, i32 0
  %34 = call i32 @mtx_unlock(i32* %33)
  br label %35

35:                                               ; preds = %22, %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @FWRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %42 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %41, i32 32, i32 32)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %3, align 4
  br label %63

46:                                               ; preds = %40
  %47 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %48 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %47, i32 0, i32 0
  %49 = call i32 @mtx_lock(i32* %48)
  %50 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %51 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %7, align 8
  %55 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @UMIDI_ST_UNKNOWN, align 4
  %57 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %7, align 8
  %58 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %60 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %59, i32 0, i32 0
  %61 = call i32 @mtx_unlock(i32* %60)
  br label %62

62:                                               ; preds = %46, %35
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %44, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.umidi_chan* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local %struct.umidi_sub_chan* @umidi_sub_by_fifo(%struct.usb_fifo*) #1

declare dso_local i64 @usb_fifo_alloc_buffer(%struct.usb_fifo*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
