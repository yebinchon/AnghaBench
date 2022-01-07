; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_ssif.c_ssif_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_ssif.c_ssif_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32, i32 }

@ssif_loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s: ssif\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*)* @ssif_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssif_startup(%struct.ipmi_softc* %0) #0 {
  %2 = alloca %struct.ipmi_softc*, align 8
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %2, align 8
  %3 = load i32, i32* @ssif_loop, align 4
  %4 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %5 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %5, i32 0, i32 1
  %7 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @device_get_nameunit(i32 %9)
  %11 = call i32 @kproc_create(i32 %3, %struct.ipmi_softc* %4, i32* %6, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  ret i32 %11
}

declare dso_local i32 @kproc_create(i32, %struct.ipmi_softc*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
