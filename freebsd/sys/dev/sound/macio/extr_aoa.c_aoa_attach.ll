; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_aoa.c_aoa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_aoa.c_aoa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoa_softc = type { i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AOA_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"pcm_getbuffersize returned %d\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@aoa_chan_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"at %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aoa_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.aoa_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @SND_STATUSLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.aoa_softc*
  store %struct.aoa_softc* %15, %struct.aoa_softc** %6, align 8
  %16 = load %struct.aoa_softc*, %struct.aoa_softc** %6, align 8
  %17 = getelementptr inbounds %struct.aoa_softc, %struct.aoa_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.aoa_softc*, %struct.aoa_softc** %6, align 8
  %21 = call i64 @pcm_register(i32 %19, %struct.aoa_softc* %20, i32 1, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %45

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AOA_BUFFER_SIZE, align 4
  %28 = load i32, i32* @AOA_BUFFER_SIZE, align 4
  %29 = load i32, i32* @AOA_BUFFER_SIZE, align 4
  %30 = call i32 @pcm_getbuffersize(i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @DPRINTF(i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PCMDIR_PLAY, align 4
  %37 = load %struct.aoa_softc*, %struct.aoa_softc** %6, align 8
  %38 = call i32 @pcm_addchan(i32 %35, i32 %36, i32* @aoa_chan_class, %struct.aoa_softc* %37)
  %39 = trunc i64 %11 to i32
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @ofw_bus_get_name(i32 %40)
  %42 = call i32 @snprintf(i8* %13, i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @pcm_setstatus(i32 %43, i8* %13)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %25, %23
  %46 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pcm_register(i32, %struct.aoa_softc*, i32, i32) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.aoa_softc*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @ofw_bus_get_name(i32) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
