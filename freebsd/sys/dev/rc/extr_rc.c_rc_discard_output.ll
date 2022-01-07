; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_discard_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_discard_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_chans = type { i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RC_DOXXFER = common dso_local global i32 0, align 4
@LOTS_OF_EVENTS = common dso_local global i64 0, align 8
@TS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_chans*)* @rc_discard_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_discard_output(%struct.rc_chans* %0) #0 {
  %2 = alloca %struct.rc_chans*, align 8
  store %struct.rc_chans* %0, %struct.rc_chans** %2, align 8
  %3 = call i32 (...) @critical_enter()
  %4 = load %struct.rc_chans*, %struct.rc_chans** %2, align 8
  %5 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @RC_DOXXFER, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %12 = load %struct.rc_chans*, %struct.rc_chans** %2, align 8
  %13 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %12, i32 0, i32 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %11
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* @RC_DOXXFER, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.rc_chans*, %struct.rc_chans** %2, align 8
  %23 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %10, %1
  %27 = load %struct.rc_chans*, %struct.rc_chans** %2, align 8
  %28 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rc_chans*, %struct.rc_chans** %2, align 8
  %31 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @TS_BUSY, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.rc_chans*, %struct.rc_chans** %2, align 8
  %35 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %33
  store i32 %39, i32* %37, align 4
  %40 = call i32 (...) @critical_exit()
  %41 = load %struct.rc_chans*, %struct.rc_chans** %2, align 8
  %42 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @ttwwakeup(%struct.TYPE_4__* %43)
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @ttwwakeup(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
