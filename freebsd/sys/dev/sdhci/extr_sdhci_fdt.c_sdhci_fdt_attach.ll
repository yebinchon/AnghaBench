; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt.c_sdhci_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt.c_sdhci_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_fdt_softc = type { i32, %struct.sdhci_slot*, i32, i32*, i32, i32, i32, i32, i32**, i32 }
%struct.sdhci_slot = type { i32, i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't allocate IRQ\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for slot %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%d slot(s) allocated\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@sdhci_fdt_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Cannot setup IRQ\0A\00", align 1
@SDHCI_FDT_RK3399 = common dso_local global i64 0, align 8
@compat_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sdhci_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_fdt_softc*, align 8
  %5 = alloca %struct.sdhci_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.sdhci_fdt_softc* @device_get_softc(i32 %10)
  store %struct.sdhci_fdt_softc* %11, %struct.sdhci_fdt_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %14 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_IRQ, align 4
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i8* @bus_alloc_resource_any(i32 %15, i32 %16, i32* %8, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %21 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %23 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %150

30:                                               ; preds = %1
  %31 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %32 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %35 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %104, %30
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %107

40:                                               ; preds = %36
  %41 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %42 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %41, i32 0, i32 1
  %43 = load %struct.sdhci_slot*, %struct.sdhci_slot** %42, align 8
  %44 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %45 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %43, i64 %47
  store %struct.sdhci_slot* %48, %struct.sdhci_slot** %5, align 8
  store i32 0, i32* %8, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SYS_RES_MEMORY, align 4
  %51 = load i32, i32* @RF_ACTIVE, align 4
  %52 = call i8* @bus_alloc_resource_any(i32 %49, i32 %50, i32* %8, i32 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %55 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %54, i32 0, i32 8
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* %53, i32** %59, align 8
  %60 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %61 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %60, i32 0, i32 8
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %40
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %104

72:                                               ; preds = %40
  %73 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %74 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %77 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %79 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %82 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %84 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %87 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %89 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %92 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @sdhci_init_slot(i32 %93, %struct.sdhci_slot* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %72
  br label %104

99:                                               ; preds = %72
  %100 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %101 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %99, %98, %68
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %36

107:                                              ; preds = %36
  %108 = load i32, i32* %3, align 4
  %109 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %110 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %115 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @INTR_TYPE_MISC, align 4
  %118 = load i32, i32* @INTR_MPSAFE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @sdhci_fdt_intr, align 4
  %121 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %122 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %123 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %122, i32 0, i32 2
  %124 = call i32 @bus_setup_intr(i32 %113, i32* %116, i32 %119, i32* null, i32 %120, %struct.sdhci_fdt_softc* %121, i32* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %107
  %128 = load i32, i32* %3, align 4
  %129 = call i32 (i32, i8*, ...) @device_printf(i32 %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %2, align 4
  br label %150

131:                                              ; preds = %107
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %146, %131
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %135 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %140 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %139, i32 0, i32 1
  %141 = load %struct.sdhci_slot*, %struct.sdhci_slot** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %141, i64 %143
  %145 = call i32 @sdhci_start_slot(%struct.sdhci_slot* %144)
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %132

149:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %127, %26
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.sdhci_fdt_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @sdhci_init_slot(i32, %struct.sdhci_slot*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.sdhci_fdt_softc*, i32*) #1

declare dso_local i32 @sdhci_start_slot(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
