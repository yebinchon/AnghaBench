; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_send_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { %struct.hda_codec_inst** }
%struct.hda_codec_inst = type { %struct.hda_codec_class* }
%struct.hda_codec_class = type { i32 (%struct.hda_codec_inst*, i32)* }

@HDA_CMD_CAD_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cad: 0x%x verb: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"This codec does not implement the command function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_softc*, i32)* @hda_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_send_command(%struct.hda_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec_inst*, align 8
  %7 = alloca %struct.hda_codec_class*, align 8
  %8 = alloca i64, align 8
  store %struct.hda_softc* %0, %struct.hda_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hda_codec_inst* null, %struct.hda_codec_inst** %6, align 8
  store %struct.hda_codec_class* null, %struct.hda_codec_class** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @HDA_CMD_CAD_SHIFT, align 4
  %11 = ashr i32 %9, %10
  %12 = and i32 %11, 15
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %8, align 8
  %14 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %15 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %14, i32 0, i32 0
  %16 = load %struct.hda_codec_inst**, %struct.hda_codec_inst*** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.hda_codec_inst*, %struct.hda_codec_inst** %16, i64 %17
  %19 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %18, align 8
  store %struct.hda_codec_inst* %19, %struct.hda_codec_inst** %6, align 8
  %20 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %6, align 8
  %21 = icmp ne %struct.hda_codec_inst* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

23:                                               ; preds = %2
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25)
  %27 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %6, align 8
  %28 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %27, i32 0, i32 0
  %29 = load %struct.hda_codec_class*, %struct.hda_codec_class** %28, align 8
  store %struct.hda_codec_class* %29, %struct.hda_codec_class** %7, align 8
  %30 = load %struct.hda_codec_class*, %struct.hda_codec_class** %7, align 8
  %31 = call i32 @assert(%struct.hda_codec_class* %30)
  %32 = load %struct.hda_codec_class*, %struct.hda_codec_class** %7, align 8
  %33 = getelementptr inbounds %struct.hda_codec_class, %struct.hda_codec_class* %32, i32 0, i32 0
  %34 = load i32 (%struct.hda_codec_inst*, i32)*, i32 (%struct.hda_codec_inst*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.hda_codec_inst*, i32)* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %23
  %37 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %45

38:                                               ; preds = %23
  %39 = load %struct.hda_codec_class*, %struct.hda_codec_class** %7, align 8
  %40 = getelementptr inbounds %struct.hda_codec_class, %struct.hda_codec_class* %39, i32 0, i32 0
  %41 = load i32 (%struct.hda_codec_inst*, i32)*, i32 (%struct.hda_codec_inst*, i32)** %40, align 8
  %42 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 %41(%struct.hda_codec_inst* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %36, %22
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @assert(%struct.hda_codec_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
