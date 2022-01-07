; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_miipoll_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_miipoll_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32 }

@VGE_MIICMD = common dso_local global i32 0, align 4
@VGE_MIIADDR = common dso_local global i32 0, align 4
@VGE_MIIADDR_SWMPL = common dso_local global i32 0, align 4
@VGE_TIMEOUT = common dso_local global i32 0, align 4
@VGE_MIISTS = common dso_local global i32 0, align 4
@VGE_MIISTS_IIDL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to idle MII autopoll\0A\00", align 1
@VGE_MIICMD_MAUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to start MII autopoll\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_miipoll_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_miipoll_start(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %4 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %5 = load i32, i32* @VGE_MIICMD, align 4
  %6 = call i32 @CSR_WRITE_1(%struct.vge_softc* %4, i32 %5, i32 0)
  %7 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %8 = load i32, i32* @VGE_MIIADDR, align 4
  %9 = load i32, i32* @VGE_MIIADDR_SWMPL, align 4
  %10 = call i32 @CSR_WRITE_1(%struct.vge_softc* %7, i32 %8, i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @VGE_TIMEOUT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = call i32 @DELAY(i32 1)
  %17 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %18 = load i32, i32* @VGE_MIISTS, align 4
  %19 = call i32 @CSR_READ_1(%struct.vge_softc* %17, i32 %18)
  %20 = load i32, i32* @VGE_MIISTS_IIDL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %11

28:                                               ; preds = %23, %11
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @VGE_TIMEOUT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %34 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %68

37:                                               ; preds = %28
  %38 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %39 = load i32, i32* @VGE_MIICMD, align 4
  %40 = load i32, i32* @VGE_MIICMD_MAUTO, align 4
  %41 = call i32 @CSR_WRITE_1(%struct.vge_softc* %38, i32 %39, i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %56, %37
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @VGE_TIMEOUT, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = call i32 @DELAY(i32 1)
  %48 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %49 = load i32, i32* @VGE_MIISTS, align 4
  %50 = call i32 @CSR_READ_1(%struct.vge_softc* %48, i32 %49)
  %51 = load i32, i32* @VGE_MIISTS_IIDL, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %59

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %42

59:                                               ; preds = %54, %42
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @VGE_TIMEOUT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %65 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %32, %63, %59
  ret void
}

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.vge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
