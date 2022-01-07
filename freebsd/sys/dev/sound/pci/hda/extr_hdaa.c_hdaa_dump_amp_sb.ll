; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_amp_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_amp_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"     %s amp: 0x%08x mute=%d step=%d size=%d offset=%d (%+d/%+ddB)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i32, i8*)* @hdaa_dump_amp_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_amp_sb(%struct.sbuf* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @HDA_PARAM_OUTPUT_AMP_CAP_OFFSET(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @HDA_PARAM_OUTPUT_AMP_CAP_STEPSIZE(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @HDA_PARAM_OUTPUT_AMP_CAP_NUMSTEPS(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @HDA_PARAM_OUTPUT_AMP_CAP_MUTE_CAP(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 0, %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 %25, %27
  %29 = sdiv i32 %28, 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  %35 = mul nsw i32 %32, %34
  %36 = sdiv i32 %35, 4
  %37 = call i32 @sbuf_printf(%struct.sbuf* %16, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18, i32 %20, i32 %21, i32 %22, i32 %23, i32 %29, i32 %36)
  ret void
}

declare dso_local i32 @HDA_PARAM_OUTPUT_AMP_CAP_OFFSET(i32) #1

declare dso_local i32 @HDA_PARAM_OUTPUT_AMP_CAP_STEPSIZE(i32) #1

declare dso_local i32 @HDA_PARAM_OUTPUT_AMP_CAP_NUMSTEPS(i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HDA_PARAM_OUTPUT_AMP_CAP_MUTE_CAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
