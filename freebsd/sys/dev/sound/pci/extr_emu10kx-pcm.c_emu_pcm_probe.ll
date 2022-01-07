; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_pcm_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_pcm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EMU_VAR_FUNC = common dso_local global i32 0, align 4
@SCF_PCM = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@EMU_VAR_ROUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"front\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rear\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"subwoofer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"side\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"multichannel recording\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"EMU10Kx DSP %s PCM interface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu_pcm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_pcm_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [255 x i8], align 16
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @EMU_VAR_FUNC, align 4
  %13 = call i64 @BUS_READ_IVAR(i32 %10, i32 %11, i32 %12, i64* %4)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @SCF_PCM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @EMU_VAR_ROUTE, align 4
  %24 = call i64 @BUS_READ_IVAR(i32 %21, i32 %22, i32 %23, i64* %5)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  switch i64 %25, label %32 [
    i64 132, label %26
    i64 130, label %27
    i64 133, label %28
    i64 128, label %29
    i64 129, label %30
    i64 131, label %31
  ]

26:                                               ; preds = %19
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %32

27:                                               ; preds = %19
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %32

28:                                               ; preds = %19
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %32

29:                                               ; preds = %19
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %32

30:                                               ; preds = %19
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %32

31:                                               ; preds = %19
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %32

32:                                               ; preds = %19, %31, %30, %29, %28, %27, %26
  %33 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @snprintf(i8* %33, i32 255, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %3, align 4
  %37 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %38 = call i32 @device_set_desc_copy(i32 %36, i8* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %17
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @BUS_READ_IVAR(i32, i32, i32, i64*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
