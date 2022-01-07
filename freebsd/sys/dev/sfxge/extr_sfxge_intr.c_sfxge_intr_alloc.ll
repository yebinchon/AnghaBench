; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { %struct.sfxge_intr, i32 }
%struct.sfxge_intr = type { %struct.sfxge_intr_hdl* }
%struct.sfxge_intr_hdl = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@M_SFXGE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Couldn't allocate interrupts for message %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*, i32)* @sfxge_intr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_intr_alloc(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfxge_intr_hdl*, align 8
  %7 = alloca %struct.sfxge_intr*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %16 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %15, i32 0, i32 0
  store %struct.sfxge_intr* %16, %struct.sfxge_intr** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 16
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @M_SFXGE, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = call %struct.sfxge_intr_hdl* @malloc(i32 %20, i32 %21, i32 %22)
  store %struct.sfxge_intr_hdl* %23, %struct.sfxge_intr_hdl** %6, align 8
  %24 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %6, align 8
  %25 = load %struct.sfxge_intr*, %struct.sfxge_intr** %7, align 8
  %26 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %25, i32 0, i32 0
  store %struct.sfxge_intr_hdl* %24, %struct.sfxge_intr_hdl** %26, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %60, %2
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SYS_RES_IRQ, align 4
  %36 = load i32, i32* @RF_SHAREABLE, align 4
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.resource* @bus_alloc_resource_any(i32 %34, i32 %35, i32* %9, i32 %38)
  store %struct.resource* %39, %struct.resource** %8, align 8
  %40 = load %struct.resource*, %struct.resource** %8, align 8
  %41 = icmp eq %struct.resource* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %10, align 4
  br label %63

47:                                               ; preds = %31
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %49, i64 %51
  %53 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 8
  %54 = load %struct.resource*, %struct.resource** %8, align 8
  %55 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %55, i64 %57
  %59 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %58, i32 0, i32 1
  store %struct.resource* %54, %struct.resource** %59, align 8
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %27

63:                                               ; preds = %42, %27
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %89, %66
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SYS_RES_IRQ, align 4
  %76 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %76, i64 %78
  %80 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %82, i64 %84
  %86 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %85, i32 0, i32 1
  %87 = load %struct.resource*, %struct.resource** %86, align 8
  %88 = call i32 @bus_release_resource(i32 %74, i32 %75, i32 %81, %struct.resource* %87)
  br label %89

89:                                               ; preds = %73
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %69

92:                                               ; preds = %69
  br label %93

93:                                               ; preds = %92, %63
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local %struct.sfxge_intr_hdl* @malloc(i32, i32, i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
