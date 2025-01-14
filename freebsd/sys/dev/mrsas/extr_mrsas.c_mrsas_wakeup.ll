; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i8* }
%struct.mrsas_mfi_cmd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_wakeup(%struct.mrsas_softc* %0, %struct.mrsas_mfi_cmd* %1) #0 {
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca %struct.mrsas_mfi_cmd*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store %struct.mrsas_mfi_cmd* %1, %struct.mrsas_mfi_cmd** %4, align 8
  %5 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %6 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %17, %2
  %21 = bitcast %struct.mrsas_mfi_cmd** %4 to i8*
  %22 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 0
  %26 = bitcast i8** %25 to i8*
  %27 = call i32 @wakeup_one(i8* %26)
  ret void
}

declare dso_local i32 @wakeup_one(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
