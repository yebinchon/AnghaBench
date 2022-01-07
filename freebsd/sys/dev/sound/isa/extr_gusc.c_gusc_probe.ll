; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_gusc.c_gusc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_gusc.c_gusc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sndcard_func = type { i32 }

@gusc_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Gravis UltraSound Plug & Play PCM\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCF_PCM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Gravis UltraSound Plug & Play OPL\00", align 1
@SCF_SYNTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"midi\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Gravis UltraSound Plug & Play MIDI\00", align 1
@SCF_MIDI = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gusc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gusc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sndcard_func*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @isa_get_logicalid(i32 %9)
  store i32 %10, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @gusc_ids, align 4
  %18 = call i32 @ISA_PNP_PROBE(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %97

22:                                               ; preds = %13, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @gusisa_probe(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %97

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %88 [
    i32 128, label %31
    i32 129, label %50
    i32 130, label %69
  ]

31:                                               ; preds = %29
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %32 = load i32, i32* @M_DEVBUF, align 4
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = load i32, i32* @M_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.sndcard_func* @malloc(i32 4, i32 %32, i32 %35)
  store %struct.sndcard_func* %36, %struct.sndcard_func** %7, align 8
  %37 = load %struct.sndcard_func*, %struct.sndcard_func** %7, align 8
  %38 = icmp eq %struct.sndcard_func* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %97

41:                                               ; preds = %31
  %42 = load i32, i32* @SCF_PCM, align 4
  %43 = load %struct.sndcard_func*, %struct.sndcard_func** %7, align 8
  %44 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_add_child(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.sndcard_func*, %struct.sndcard_func** %7, align 8
  %49 = call i32 @device_set_ivars(i32 %47, %struct.sndcard_func* %48)
  br label %88

50:                                               ; preds = %29
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %51 = load i32, i32* @M_DEVBUF, align 4
  %52 = load i32, i32* @M_NOWAIT, align 4
  %53 = load i32, i32* @M_ZERO, align 4
  %54 = or i32 %52, %53
  %55 = call %struct.sndcard_func* @malloc(i32 4, i32 %51, i32 %54)
  store %struct.sndcard_func* %55, %struct.sndcard_func** %7, align 8
  %56 = load %struct.sndcard_func*, %struct.sndcard_func** %7, align 8
  %57 = icmp eq %struct.sndcard_func* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %2, align 4
  br label %97

60:                                               ; preds = %50
  %61 = load i32, i32* @SCF_SYNTH, align 4
  %62 = load %struct.sndcard_func*, %struct.sndcard_func** %7, align 8
  %63 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @device_add_child(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.sndcard_func*, %struct.sndcard_func** %7, align 8
  %68 = call i32 @device_set_ivars(i32 %66, %struct.sndcard_func* %67)
  br label %88

69:                                               ; preds = %29
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  %70 = load i32, i32* @M_DEVBUF, align 4
  %71 = load i32, i32* @M_NOWAIT, align 4
  %72 = load i32, i32* @M_ZERO, align 4
  %73 = or i32 %71, %72
  %74 = call %struct.sndcard_func* @malloc(i32 4, i32 %70, i32 %73)
  store %struct.sndcard_func* %74, %struct.sndcard_func** %7, align 8
  %75 = load %struct.sndcard_func*, %struct.sndcard_func** %7, align 8
  %76 = icmp eq %struct.sndcard_func* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @ENOMEM, align 4
  store i32 %78, i32* %2, align 4
  br label %97

79:                                               ; preds = %69
  %80 = load i32, i32* @SCF_MIDI, align 4
  %81 = load %struct.sndcard_func*, %struct.sndcard_func** %7, align 8
  %82 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_add_child(i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.sndcard_func*, %struct.sndcard_func** %7, align 8
  %87 = call i32 @device_set_ivars(i32 %85, %struct.sndcard_func* %86)
  br label %88

88:                                               ; preds = %29, %79, %60, %41
  %89 = load i8*, i8** %6, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @device_set_desc(i32 %92, i8* %93)
  store i32 0, i32* %2, align 4
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %91, %77, %58, %39, %25, %20
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @isa_get_logicalid(i32) #1

declare dso_local i32 @ISA_PNP_PROBE(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @gusisa_probe(i32) #1

declare dso_local %struct.sndcard_func* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.sndcard_func*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
