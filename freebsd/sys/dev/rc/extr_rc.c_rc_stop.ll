; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.rc_chans* }
%struct.rc_chans = type { i32, i32*, i32*, i32*, i32, %struct.rc_softc* }
%struct.rc_softc = type { i32, i32 }

@FWRITE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@RC_DORXFER = common dso_local global i32 0, align 4
@RC_IBUFSIZE = common dso_local global i32 0, align 4
@TS_TTSTOP = common dso_local global i32 0, align 4
@RC_OSUSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, i32)* @rc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_stop(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_softc*, align 8
  %6 = alloca %struct.rc_chans*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tty*, %struct.tty** %3, align 8
  %10 = getelementptr inbounds %struct.tty, %struct.tty* %9, i32 0, i32 1
  %11 = load %struct.rc_chans*, %struct.rc_chans** %10, align 8
  store %struct.rc_chans* %11, %struct.rc_chans** %6, align 8
  %12 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %13 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %12, i32 0, i32 5
  %14 = load %struct.rc_softc*, %struct.rc_softc** %13, align 8
  store %struct.rc_softc* %14, %struct.rc_softc** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @FWRITE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %21 = call i32 @rc_discard_output(%struct.rc_chans* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = call i32 (...) @critical_enter()
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FREAD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %22
  %29 = load i32, i32* @RC_DORXFER, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %32 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %36 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %8, align 8
  %38 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %39 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %42 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @RC_IBUFSIZE, align 4
  %45 = mul nsw i32 2, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = icmp eq i32* %40, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %28
  %50 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %51 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @RC_IBUFSIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32* %55, i32** %7, align 8
  %56 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %57 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @RC_IBUFSIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %63 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  br label %73

64:                                               ; preds = %28
  %65 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %66 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %7, align 8
  %68 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %69 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %72 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  br label %73

73:                                               ; preds = %64, %49
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = ptrtoint i32* %74 to i64
  %77 = ptrtoint i32* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 4
  %80 = load %struct.rc_softc*, %struct.rc_softc** %5, align 8
  %81 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  br label %86

86:                                               ; preds = %73, %22
  %87 = load %struct.tty*, %struct.tty** %3, align 8
  %88 = getelementptr inbounds %struct.tty, %struct.tty* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TS_TTSTOP, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @RC_OSUSP, align 4
  %95 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %96 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %106

99:                                               ; preds = %86
  %100 = load i32, i32* @RC_OSUSP, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.rc_chans*, %struct.rc_chans** %6, align 8
  %103 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %99, %93
  %107 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @rc_discard_output(%struct.rc_chans*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
