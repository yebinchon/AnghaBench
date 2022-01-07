; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_set_sdctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_set_sdctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { i32 }

@HDAC_SDCTL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"stream_ind: 0x%x old: 0x%x value: 0x%x\0A\00", align 1
@HDAC_SDCTL_SRST = common dso_local global i32 0, align 4
@HDAC_SDCTL_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_softc*, i32, i32)* @hda_set_sdctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_set_sdctl(%struct.hda_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_softc* %0, %struct.hda_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @HDAC_SDCTL0, align 4
  %12 = call i32 @hda_get_stream_by_offsets(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @HDAC_SDCTL_SRST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @hda_stream_reset(%struct.hda_softc* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @HDAC_SDCTL_RUN, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HDAC_SDCTL_RUN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @HDAC_SDCTL_RUN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @hda_stream_start(%struct.hda_softc* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  br label %59

50:                                               ; preds = %36
  %51 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @hda_stream_stop(%struct.hda_softc* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  br label %59

59:                                               ; preds = %50, %41
  br label %60

60:                                               ; preds = %59, %28
  ret void
}

declare dso_local i32 @hda_get_stream_by_offsets(i32, i32) #1

declare dso_local i32 @hda_get_reg_by_offset(%struct.hda_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32, i32) #1

declare dso_local i32 @hda_stream_reset(%struct.hda_softc*, i32) #1

declare dso_local i32 @hda_stream_start(%struct.hda_softc*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hda_stream_stop(%struct.hda_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
