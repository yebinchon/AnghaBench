; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_postattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_i2s_postattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.i2s_softc* }
%struct.i2s_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@i2s_mixer = common dso_local global i64 0, align 8
@i2s_mixer_class = common dso_local global i32 0, align 4
@GPIO_CTRL_NUM = common dso_local global i32 0, align 4
@gpio_ctrls = common dso_local global %struct.TYPE_4__** null, align 8
@i2s_delayed_attach = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @i2s_postattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2s_postattach(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i2s_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.i2s_softc*
  store %struct.i2s_softc* %7, %struct.i2s_softc** %3, align 8
  %8 = load %struct.i2s_softc*, %struct.i2s_softc** %3, align 8
  %9 = getelementptr inbounds %struct.i2s_softc, %struct.i2s_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.i2s_softc*, %struct.i2s_softc** %3, align 8
  %13 = call i32 @i2s_audio_hw_reset(%struct.i2s_softc* %12)
  %14 = load i64, i64* @i2s_mixer, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @i2s_mixer_class, align 4
  %19 = load i64, i64* @i2s_mixer, align 8
  %20 = call i32 @mixer_init(i32 %17, i32 %18, i64 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.i2s_softc*, %struct.i2s_softc** %3, align 8
  %23 = call i32 @i2s_cint(%struct.i2s_softc* %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %44, %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GPIO_CTRL_NUM, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @gpio_ctrls, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.i2s_softc*, %struct.i2s_softc** %3, align 8
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @gpio_ctrls, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store %struct.i2s_softc* %36, %struct.i2s_softc** %42, align 8
  br label %43

43:                                               ; preds = %35, %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %24

47:                                               ; preds = %24
  %48 = load i32, i32* @i2s_delayed_attach, align 4
  %49 = call i32 @config_intrhook_disestablish(i32 %48)
  %50 = load i32, i32* @i2s_delayed_attach, align 4
  %51 = load i32, i32* @M_TEMP, align 4
  %52 = call i32 @free(i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @i2s_audio_hw_reset(%struct.i2s_softc*) #1

declare dso_local i32 @mixer_init(i32, i32, i64) #1

declare dso_local i32 @i2s_cint(%struct.i2s_softc*) #1

declare dso_local i32 @config_intrhook_disestablish(i32) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
