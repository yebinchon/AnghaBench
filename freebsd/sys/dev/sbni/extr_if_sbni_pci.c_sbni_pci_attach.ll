; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni_pci.c_sbni_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni_pci.c_sbni_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { %struct.sbni_softc*, i32, i32*, i32, i32 }
%struct.sbni_flags = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot claim irq!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot initialize driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot initialize slave\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@sbni_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"bus_setup_intr\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sbni_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbni_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbni_softc*, align 8
  %5 = alloca %struct.sbni_flags, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.sbni_softc* @device_get_softc(i32 %7)
  store %struct.sbni_softc* %8, %struct.sbni_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %11 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SYS_RES_IRQ, align 4
  %14 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %15 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %14, i32 0, i32 3
  %16 = load i32, i32* @RF_SHAREABLE, align 4
  %17 = call i32* @bus_alloc_resource_any(i32 %12, i32 %13, i32* %15, i32 %16)
  %18 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %19 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %21 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* %6, align 4
  br label %101

28:                                               ; preds = %1
  %29 = bitcast %struct.sbni_flags* %5 to i64*
  store i64 0, i64* %29, align 4
  %30 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_get_unit(i32 %31)
  %33 = mul nsw i32 %32, 2
  %34 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sbni_attach(%struct.sbni_softc* %30, i32 %33, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %101

42:                                               ; preds = %28
  %43 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %44 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %43, i32 0, i32 0
  %45 = load %struct.sbni_softc*, %struct.sbni_softc** %44, align 8
  %46 = icmp ne %struct.sbni_softc* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %49 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %48, i32 0, i32 0
  %50 = load %struct.sbni_softc*, %struct.sbni_softc** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_get_unit(i32 %51)
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %53, 1
  %55 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sbni_attach(%struct.sbni_softc* %50, i32 %54, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %64 = call i32 @sbni_detach(%struct.sbni_softc* %63)
  br label %101

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65, %42
  %67 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %68 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %74 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @INTR_TYPE_NET, align 4
  %77 = load i32, i32* @INTR_MPSAFE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @sbni_intr, align 4
  %80 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %81 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %82 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %81, i32 0, i32 1
  %83 = call i32 @bus_setup_intr(i32 %72, i32* %75, i32 %78, i32* null, i32 %79, %struct.sbni_softc* %80, i32* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %71
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %90 = call i32 @sbni_detach(%struct.sbni_softc* %89)
  %91 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %92 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %91, i32 0, i32 0
  %93 = load %struct.sbni_softc*, %struct.sbni_softc** %92, align 8
  %94 = icmp ne %struct.sbni_softc* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %97 = call i32 @sbni_detach(%struct.sbni_softc* %96)
  br label %98

98:                                               ; preds = %95, %86
  br label %101

99:                                               ; preds = %71
  br label %100

100:                                              ; preds = %99, %66
  store i32 0, i32* %2, align 4
  br label %116

101:                                              ; preds = %98, %60, %39, %24
  %102 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %103 = call i32 @sbni_release_resources(%struct.sbni_softc* %102)
  %104 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %105 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %104, i32 0, i32 0
  %106 = load %struct.sbni_softc*, %struct.sbni_softc** %105, align 8
  %107 = icmp ne %struct.sbni_softc* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %110 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %109, i32 0, i32 0
  %111 = load %struct.sbni_softc*, %struct.sbni_softc** %110, align 8
  %112 = load i32, i32* @M_DEVBUF, align 4
  %113 = call i32 @free(%struct.sbni_softc* %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %101
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %100
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.sbni_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sbni_attach(%struct.sbni_softc*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @sbni_detach(%struct.sbni_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.sbni_softc*, i32*) #1

declare dso_local i32 @sbni_release_resources(%struct.sbni_softc*) #1

declare dso_local i32 @free(%struct.sbni_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
