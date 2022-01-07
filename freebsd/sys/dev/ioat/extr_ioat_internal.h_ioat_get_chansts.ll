; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_internal.h_ioat_get_chansts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_internal.h_ioat_get_chansts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_softc = type { i64 }

@IOAT_VER_3_3 = common dso_local global i64 0, align 8
@IOAT_CHANSTS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioat_softc*)* @ioat_get_chansts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_get_chansts(%struct.ioat_softc* %0) #0 {
  %2 = alloca %struct.ioat_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ioat_softc* %0, %struct.ioat_softc** %2, align 8
  %4 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IOAT_VER_3_3, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %11 = load i32, i32* @IOAT_CHANSTS_OFFSET, align 4
  %12 = call i32 @ioat_read_8(%struct.ioat_softc* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.ioat_softc*, %struct.ioat_softc** %2, align 8
  %15 = load i32, i32* @IOAT_CHANSTS_OFFSET, align 4
  %16 = call i32 @ioat_read_double_4(%struct.ioat_softc* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @ioat_read_8(%struct.ioat_softc*, i32) #1

declare dso_local i32 @ioat_read_double_4(%struct.ioat_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
