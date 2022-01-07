; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_corb_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_corb_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { %struct.hda_codec_cmd_ctl }
%struct.hda_codec_cmd_ctl = type { i32, i32, i32, i64, i64 }

@HDAC_CORBWP = common dso_local global i32 0, align 4
@HDA_CORB_ENTRY_LEN = common dso_local global i32 0, align 4
@HDAC_CORBRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_softc*)* @hda_corb_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_corb_run(%struct.hda_softc* %0) #0 {
  %2 = alloca %struct.hda_softc*, align 8
  %3 = alloca %struct.hda_codec_cmd_ctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_softc* %0, %struct.hda_softc** %2, align 8
  %6 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %7 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %6, i32 0, i32 0
  store %struct.hda_codec_cmd_ctl* %7, %struct.hda_codec_cmd_ctl** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %9 = load i32, i32* @HDAC_CORBWP, align 4
  %10 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %8, i32 %9)
  %11 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %3, align 8
  %12 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  br label %13

13:                                               ; preds = %28, %1
  %14 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %3, align 8
  %15 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %3, align 8
  %18 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %3, align 8
  %23 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %13
  %27 = phi i1 [ false, %13 ], [ %25, %21 ]
  br i1 %27, label %28, label %59

28:                                               ; preds = %26
  %29 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %3, align 8
  %30 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %3, align 8
  %34 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %3, align 8
  %37 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %3, align 8
  %41 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @HDA_CORB_ENTRY_LEN, align 4
  %44 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %3, align 8
  %45 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %42, %48
  %50 = call i32 @hda_dma_ld_dword(i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @hda_send_command(%struct.hda_softc* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  br label %13

59:                                               ; preds = %26
  %60 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %61 = load i32, i32* @HDAC_CORBRP, align 4
  %62 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %3, align 8
  %63 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hda_set_reg_by_offset(%struct.hda_softc* %60, i32 %61, i32 %64)
  %66 = load %struct.hda_codec_cmd_ctl*, %struct.hda_codec_cmd_ctl** %3, align 8
  %67 = getelementptr inbounds %struct.hda_codec_cmd_ctl, %struct.hda_codec_cmd_ctl* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %72 = call i32 @hda_response_interrupt(%struct.hda_softc* %71)
  br label %73

73:                                               ; preds = %70, %59
  ret i32 0
}

declare dso_local i32 @hda_get_reg_by_offset(%struct.hda_softc*, i32) #1

declare dso_local i32 @hda_dma_ld_dword(i64) #1

declare dso_local i32 @hda_send_command(%struct.hda_softc*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hda_set_reg_by_offset(%struct.hda_softc*, i32, i32) #1

declare dso_local i32 @hda_response_interrupt(%struct.hda_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
