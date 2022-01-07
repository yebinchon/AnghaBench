; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_clear_msg_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_clear_msg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64, i64, i32, i64 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@MSG_FLAG_NONE = common dso_local global i32 0, align 4
@MSG_TYPE_NONE = common dso_local global i32 0, align 4
@SCSISIGO = common dso_local global i32 0, align 4
@ATNO = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRATNO = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@MSG_NOOP = common dso_local global i32 0, align 4
@SEQ_FLAGS2 = common dso_local global i32 0, align 4
@TARGET_MSG_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_clear_msg_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_clear_msg_state(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %4 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %5 = call i32 @ahd_save_modes(%struct.ahd_softc* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %7 = load i32, i32* @AHD_MODE_SCSI, align 4
  %8 = load i32, i32* @AHD_MODE_SCSI, align 4
  %9 = call i32 @ahd_set_modes(%struct.ahd_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @MSG_FLAG_NONE, align 4
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @MSG_TYPE_NONE, align 4
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %23 = load i32, i32* @SCSISIGO, align 4
  %24 = call i32 @ahd_inb(%struct.ahd_softc* %22, i32 %23)
  %25 = load i32, i32* @ATNO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %30 = load i32, i32* @CLRSINT1, align 4
  %31 = load i32, i32* @CLRATNO, align 4
  %32 = call i32 @ahd_outb(%struct.ahd_softc* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = load i32, i32* @MSG_OUT, align 4
  %36 = load i32, i32* @MSG_NOOP, align 4
  %37 = call i32 @ahd_outb(%struct.ahd_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %39 = load i32, i32* @SEQ_FLAGS2, align 4
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %41 = load i32, i32* @SEQ_FLAGS2, align 4
  %42 = call i32 @ahd_inb(%struct.ahd_softc* %40, i32 %41)
  %43 = load i32, i32* @TARGET_MSG_PENDING, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call i32 @ahd_outb(%struct.ahd_softc* %38, i32 %39, i32 %45)
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @ahd_restore_modes(%struct.ahd_softc* %47, i32 %48)
  ret void
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
