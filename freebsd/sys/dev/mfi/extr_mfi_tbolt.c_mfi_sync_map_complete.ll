; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_sync_map_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_sync_map_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_command = type { i32, %struct.TYPE_2__*, %struct.mfi_softc* }
%struct.TYPE_2__ = type { %struct.mfi_frame_header }
%struct.mfi_frame_header = type { i64 }
%struct.mfi_softc = type { i32*, i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MFI_STAT_INVALID_STATUS = common dso_local global i64 0, align 8
@M_MFIBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfi_command*)* @mfi_sync_map_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_sync_map_complete(%struct.mfi_command* %0) #0 {
  %2 = alloca %struct.mfi_command*, align 8
  %3 = alloca %struct.mfi_frame_header*, align 8
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.mfi_command* %0, %struct.mfi_command** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %7 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %6, i32 0, i32 2
  %8 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  store %struct.mfi_softc* %8, %struct.mfi_softc** %4, align 8
  %9 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %9, i32 0, i32 2
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %14 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.mfi_frame_header* %16, %struct.mfi_frame_header** %3, align 8
  %17 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %54

22:                                               ; preds = %1
  %23 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %3, align 8
  %29 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MFI_STAT_INVALID_STATUS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %22
  %34 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %38 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @M_MFIBUF, align 4
  %41 = call i32 @free(i32 %39, i32 %40)
  %42 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %42, i32 0, i32 0
  %44 = call i32 @wakeup(i32** %43)
  %45 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %46 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %48 = call i32 @mfi_release_command(%struct.mfi_command* %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %36
  %52 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %53 = call i32 @mfi_queue_map_sync(%struct.mfi_softc* %52)
  br label %54

54:                                               ; preds = %21, %51, %36
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @wakeup(i32**) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @mfi_queue_map_sync(%struct.mfi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
