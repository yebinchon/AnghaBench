; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_print_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_print_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.ahc_devinfo = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s:%c:%d:%d: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_print_devinfo(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.ahc_devinfo*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %4, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %6 = call i8* @ahc_name(%struct.ahc_softc* %5)
  %7 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %8 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %9, i32 %12, i32 %15)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
