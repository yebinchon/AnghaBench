; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_startio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_startio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, %struct.mfi_command* (%struct.ccb_hdr*)*, i32 }
%struct.mfi_command = type { i32 }
%struct.ccb_hdr = type opaque
%struct.ccb_hdr.0 = type { i32 }

@MFI_FLAGS_QFRZN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Failed to startio\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfi_startio(%struct.mfi_softc* %0) #0 {
  %2 = alloca %struct.mfi_softc*, align 8
  %3 = alloca %struct.mfi_command*, align 8
  %4 = alloca %struct.ccb_hdr.0*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %2, align 8
  br label %5

5:                                                ; preds = %53, %1
  %6 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @MFI_FLAGS_QFRZN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %54

13:                                               ; preds = %5
  %14 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %15 = call %struct.mfi_command* @mfi_dequeue_ready(%struct.mfi_softc* %14)
  store %struct.mfi_command* %15, %struct.mfi_command** %3, align 8
  %16 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  %17 = icmp eq %struct.mfi_command* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %19, i32 0, i32 3
  %21 = call %struct.ccb_hdr.0* @TAILQ_FIRST(i32* %20)
  store %struct.ccb_hdr.0* %21, %struct.ccb_hdr.0** %4, align 8
  %22 = icmp ne %struct.ccb_hdr.0* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %24, i32 0, i32 2
  %26 = load %struct.mfi_command* (%struct.ccb_hdr*)*, %struct.mfi_command* (%struct.ccb_hdr*)** %25, align 8
  %27 = load %struct.ccb_hdr.0*, %struct.ccb_hdr.0** %4, align 8
  %28 = bitcast %struct.ccb_hdr.0* %27 to %struct.ccb_hdr*
  %29 = call %struct.mfi_command* %26(%struct.ccb_hdr* %28)
  store %struct.mfi_command* %29, %struct.mfi_command** %3, align 8
  br label %30

30:                                               ; preds = %23, %18
  br label %31

31:                                               ; preds = %30, %13
  %32 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  %33 = icmp eq %struct.mfi_command* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %36 = call %struct.mfi_command* @mfi_bio_command(%struct.mfi_softc* %35)
  store %struct.mfi_command* %36, %struct.mfi_command** %3, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  %39 = icmp eq %struct.mfi_command* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %54

41:                                               ; preds = %37
  %42 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %43 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  %44 = call i64 @mfi_mapcmd(%struct.mfi_softc* %42, %struct.mfi_command* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.mfi_command*, %struct.mfi_command** %3, align 8
  %52 = call i32 @mfi_requeue_ready(%struct.mfi_command* %51)
  br label %54

53:                                               ; preds = %41
  br label %5

54:                                               ; preds = %46, %40, %12
  ret void
}

declare dso_local %struct.mfi_command* @mfi_dequeue_ready(%struct.mfi_softc*) #1

declare dso_local %struct.ccb_hdr.0* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.mfi_command* @mfi_bio_command(%struct.mfi_softc*) #1

declare dso_local i64 @mfi_mapcmd(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mfi_requeue_ready(%struct.mfi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
