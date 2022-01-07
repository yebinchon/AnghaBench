; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_sprom.c_bhnd_sprom_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_sprom.c_bhnd_sprom_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_sprom_softc = type { i32 }

@BHND_SERVICE_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_sprom_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_sprom_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.bhnd_sprom_softc* @device_get_softc(i32 %6)
  store %struct.bhnd_sprom_softc* %7, %struct.bhnd_sprom_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BHND_SERVICE_ANY, align 4
  %10 = call i32 @bhnd_deregister_provider(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.bhnd_sprom_softc*, %struct.bhnd_sprom_softc** %4, align 8
  %16 = getelementptr inbounds %struct.bhnd_sprom_softc, %struct.bhnd_sprom_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bhnd_nvram_store_free(i32 %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %14, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.bhnd_sprom_softc* @device_get_softc(i32) #1

declare dso_local i32 @bhnd_deregister_provider(i32, i32) #1

declare dso_local i32 @bhnd_nvram_store_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
