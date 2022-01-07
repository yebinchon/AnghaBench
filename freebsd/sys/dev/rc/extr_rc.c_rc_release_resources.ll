; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_softc = type { i32, i32**, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@IOBASE_ADDRS = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rc_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_release_resources(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rc_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rc_softc* @device_get_softc(i32 %5)
  store %struct.rc_softc* %6, %struct.rc_softc** %3, align 8
  %7 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @SYS_RES_IRQ, align 4
  %14 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @bus_release_resource(i32 %12, i32 %13, i32 %16, i32* %19)
  %21 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %11, %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IOBASE_ADDRS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %30 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %59

38:                                               ; preds = %28
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @SYS_RES_IOPORT, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %43 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @bus_release_resource(i32 %39, i32 %40, i32 %41, i32* %48)
  %50 = load %struct.rc_softc*, %struct.rc_softc** %3, align 8
  %51 = getelementptr inbounds %struct.rc_softc, %struct.rc_softc* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %38
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %24

59:                                               ; preds = %37, %24
  ret void
}

declare dso_local %struct.rc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
