; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_smb_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_smb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxiic_softc = type { i32, i32 }

@GLXIIC_SLOW = common dso_local global i32 0, align 4
@GLXIIC_FAST = common dso_local global i32 0, align 4
@GLXIIC_FASTEST = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL2 = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL2_EN_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL1_NMINTE_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL1_GCMEN_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_ADDR = common dso_local global i32 0, align 4
@GLXIIC_SMB_ADDR_SAEN_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL1 = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL1_STASTRE_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL1_INTEN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glxiic_softc*, i32, i32)* @glxiic_smb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glxiic_smb_enable(%struct.glxiic_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.glxiic_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.glxiic_softc* %0, %struct.glxiic_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %22 [
    i32 129, label %9
    i32 131, label %13
    i32 130, label %17
    i32 128, label %21
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @GLXIIC_SLOW, align 4
  %11 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %12 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  br label %23

13:                                               ; preds = %3
  %14 = load i32, i32* @GLXIIC_FAST, align 4
  %15 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %16 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @GLXIIC_FASTEST, align 4
  %19 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %20 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %23

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %3, %21
  br label %23

23:                                               ; preds = %22, %17, %13, %9
  %24 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %25 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GLXIIC_SMB_CTRL2, align 4
  %28 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %29 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GLXIIC_SCLFRQ(i32 %30)
  %32 = load i32, i32* @GLXIIC_SMB_CTRL2_EN_BIT, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @bus_write_2(i32 %26, i32 %27, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %23
  %38 = load i32, i32* @GLXIIC_SMB_CTRL1_NMINTE_BIT, align 4
  %39 = load i32, i32* @GLXIIC_SMB_CTRL1_GCMEN_BIT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %44 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GLXIIC_SMB_ADDR, align 4
  %47 = load i32, i32* @GLXIIC_SMB_ADDR_SAEN_BIT, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @GLXIIC_SMBADDR(i32 %48)
  %50 = or i32 %47, %49
  %51 = call i32 @bus_write_1(i32 %45, i32 %46, i32 %50)
  br label %58

52:                                               ; preds = %23
  %53 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %54 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GLXIIC_SMB_ADDR, align 4
  %57 = call i32 @bus_write_1(i32 %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %52, %37
  %59 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %60 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GLXIIC_SMB_CTRL1, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @GLXIIC_SMB_CTRL1_STASTRE_BIT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @GLXIIC_SMB_CTRL1_INTEN_BIT, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @bus_write_1(i32 %61, i32 %62, i32 %67)
  ret void
}

declare dso_local i32 @bus_write_2(i32, i32, i32) #1

declare dso_local i32 @GLXIIC_SCLFRQ(i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @GLXIIC_SMBADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
