; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxiic_softc = type { i32 }

@GLXIIC_SMB_CTRL1 = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL1_STOP_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_XMIT_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_SDAST_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_SDA = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_STASTR_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glxiic_softc*)* @glxiic_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glxiic_stop_locked(%struct.glxiic_softc* %0) #0 {
  %2 = alloca %struct.glxiic_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.glxiic_softc* %0, %struct.glxiic_softc** %2, align 8
  %5 = load %struct.glxiic_softc*, %struct.glxiic_softc** %2, align 8
  %6 = call i32 @GLXIIC_ASSERT_LOCKED(%struct.glxiic_softc* %5)
  %7 = load %struct.glxiic_softc*, %struct.glxiic_softc** %2, align 8
  %8 = call i32 @glxiic_read_status_locked(%struct.glxiic_softc* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.glxiic_softc*, %struct.glxiic_softc** %2, align 8
  %10 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GLXIIC_SMB_CTRL1, align 4
  %13 = call i32 @bus_read_1(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.glxiic_softc*, %struct.glxiic_softc** %2, align 8
  %15 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GLXIIC_SMB_CTRL1, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GLXIIC_SMB_CTRL1_STOP_BIT, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @bus_write_1(i32 %16, i32 %17, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @GLXIIC_SMB_STS_XMIT_BIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @GLXIIC_SMB_STS_SDAST_BIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.glxiic_softc*, %struct.glxiic_softc** %2, align 8
  %33 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GLXIIC_SMB_SDA, align 4
  %36 = call i32 @bus_read_1(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %26, %1
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @GLXIIC_SMB_STS_STASTR_BIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.glxiic_softc*, %struct.glxiic_softc** %2, align 8
  %44 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GLXIIC_SMB_STS, align 4
  %47 = load i32, i32* @GLXIIC_SMB_STS_STASTR_BIT, align 4
  %48 = call i32 @bus_write_1(i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @GLXIIC_ASSERT_LOCKED(%struct.glxiic_softc*) #1

declare dso_local i32 @glxiic_read_status_locked(%struct.glxiic_softc*) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
