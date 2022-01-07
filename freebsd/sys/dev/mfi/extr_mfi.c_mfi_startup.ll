; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32, i32, i32 (%struct.mfi_softc*)* }

@MFI_FLAGS_SKINNY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mfi_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mfi_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mfi_softc*
  store %struct.mfi_softc* %5, %struct.mfi_softc** %3, align 8
  %6 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %6, i32 0, i32 4
  %8 = load i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)** %7, align 8
  %9 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %10 = call i32 %8(%struct.mfi_softc* %9)
  %11 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %11, i32 0, i32 2
  %13 = call i32 @sx_xlock(i32* %12)
  %14 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %14, i32 0, i32 3
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %18 = call i32 @mfi_ldprobe(%struct.mfi_softc* %17)
  %19 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MFI_FLAGS_SKINNY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %27 = call i32 @mfi_syspdprobe(%struct.mfi_softc* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %29, i32 0, i32 3
  %31 = call i32 @mtx_unlock(i32* %30)
  %32 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %32, i32 0, i32 2
  %34 = call i32 @sx_xunlock(i32* %33)
  %35 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %35, i32 0, i32 1
  %37 = call i32 @config_intrhook_disestablish(i32* %36)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mfi_ldprobe(%struct.mfi_softc*) #1

declare dso_local i32 @mfi_syspdprobe(%struct.mfi_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
