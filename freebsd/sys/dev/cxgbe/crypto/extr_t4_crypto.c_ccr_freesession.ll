; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_freesession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_freesession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_softc = type { i32 }
%struct.ccr_session = type { i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"session %p freed with %d pending requests\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ccr_freesession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccr_freesession(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccr_softc*, align 8
  %6 = alloca %struct.ccr_session*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ccr_softc* @device_get_softc(i32 %7)
  store %struct.ccr_softc* %8, %struct.ccr_softc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ccr_session* @crypto_get_driver_session(i32 %9)
  store %struct.ccr_session* %10, %struct.ccr_session** %6, align 8
  %11 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %15 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %21 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %22 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.ccr_session* %20, i64 %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.ccr_session*, %struct.ccr_session** %6, align 8
  %27 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load %struct.ccr_softc*, %struct.ccr_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ccr_softc, %struct.ccr_softc* %28, i32 0, i32 0
  %30 = call i32 @mtx_unlock(i32* %29)
  ret void
}

declare dso_local %struct.ccr_softc* @device_get_softc(i32) #1

declare dso_local %struct.ccr_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, %struct.ccr_session*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
