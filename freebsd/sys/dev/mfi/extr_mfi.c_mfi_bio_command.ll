; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_bio_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_bio_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_command = type { i32 }
%struct.mfi_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i64 }

@MFIQ_FREE = common dso_local global i64 0, align 8
@MFI_LD_IO = common dso_local global i64 0, align 8
@MFI_SYS_PD_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfi_command* (%struct.mfi_softc*)* @mfi_bio_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfi_command* @mfi_bio_command(%struct.mfi_softc* %0) #0 {
  %2 = alloca %struct.mfi_command*, align 8
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.mfi_command*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  store %struct.mfi_command* null, %struct.mfi_command** %5, align 8
  %6 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i64, i64* @MFIQ_FREE, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.mfi_command* null, %struct.mfi_command** %2, align 8
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %17 = call %struct.bio* @mfi_dequeue_bio(%struct.mfi_softc* %16)
  store %struct.bio* %17, %struct.bio** %4, align 8
  %18 = icmp eq %struct.bio* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store %struct.mfi_command* null, %struct.mfi_command** %2, align 8
  br label %50

20:                                               ; preds = %15
  %21 = load %struct.bio*, %struct.bio** %4, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MFI_LD_IO, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = call %struct.mfi_command* @mfi_build_ldio(%struct.mfi_softc* %27, %struct.bio* %28)
  store %struct.mfi_command* %29, %struct.mfi_command** %5, align 8
  br label %41

30:                                               ; preds = %20
  %31 = load %struct.bio*, %struct.bio** %4, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MFI_SYS_PD_IO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  %39 = call %struct.mfi_command* @mfi_build_syspdio(%struct.mfi_softc* %37, %struct.bio* %38)
  store %struct.mfi_command* %39, %struct.mfi_command** %5, align 8
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %43 = icmp ne %struct.mfi_command* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = call i32 @mfi_enqueue_bio(%struct.mfi_softc* %45, %struct.bio* %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  store %struct.mfi_command* %49, %struct.mfi_command** %2, align 8
  br label %50

50:                                               ; preds = %48, %19, %14
  %51 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  ret %struct.mfi_command* %51
}

declare dso_local %struct.bio* @mfi_dequeue_bio(%struct.mfi_softc*) #1

declare dso_local %struct.mfi_command* @mfi_build_ldio(%struct.mfi_softc*, %struct.bio*) #1

declare dso_local %struct.mfi_command* @mfi_build_syspdio(%struct.mfi_softc*, %struct.bio*) #1

declare dso_local i32 @mfi_enqueue_bio(%struct.mfi_softc*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
