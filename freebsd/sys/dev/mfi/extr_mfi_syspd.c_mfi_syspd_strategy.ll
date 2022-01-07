; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_syspd.c_mfi_syspd_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_syspd.c_mfi_syspd_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i8*, i8*, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mfi_system_pd* }
%struct.mfi_system_pd = type { i64, %struct.mfi_softc* }
%struct.mfi_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@MFI_SYS_PD_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @mfi_syspd_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_syspd_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.mfi_system_pd*, align 8
  %4 = alloca %struct.mfi_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 6
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %8, align 8
  store %struct.mfi_system_pd* %9, %struct.mfi_system_pd** %3, align 8
  %10 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %11 = icmp eq %struct.mfi_system_pd* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @BIO_ERROR, align 4
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bio*, %struct.bio** %2, align 8
  %27 = call i32 @biodone(%struct.bio* %26)
  br label %53

28:                                               ; preds = %1
  %29 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %30 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %29, i32 0, i32 1
  %31 = load %struct.mfi_softc*, %struct.mfi_softc** %30, align 8
  store %struct.mfi_softc* %31, %struct.mfi_softc** %4, align 8
  %32 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %33 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* @MFI_SYS_PD_IO, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.bio*, %struct.bio** %2, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %42, i32 0, i32 0
  %44 = call i32 @mtx_lock(i32* %43)
  %45 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %46 = load %struct.bio*, %struct.bio** %2, align 8
  %47 = call i32 @mfi_enqueue_bio(%struct.mfi_softc* %45, %struct.bio* %46)
  %48 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %49 = call i32 @mfi_startio(%struct.mfi_softc* %48)
  %50 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %51 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %50, i32 0, i32 0
  %52 = call i32 @mtx_unlock(i32* %51)
  br label %53

53:                                               ; preds = %28, %12
  ret void
}

declare dso_local i32 @biodone(%struct.bio*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mfi_enqueue_bio(%struct.mfi_softc*, %struct.bio*) #1

declare dso_local i32 @mfi_startio(%struct.mfi_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
