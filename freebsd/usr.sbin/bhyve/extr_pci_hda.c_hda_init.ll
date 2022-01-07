; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { i32 }
%struct.hda_codec_class = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"opts: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"hda_codec\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"play=\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"rec=\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"play: %s rec: %s\0A\00", align 1
@dbg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hda_softc* (i8*)* @hda_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hda_softc* @hda_init(i8* %0) #0 {
  %2 = alloca %struct.hda_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hda_softc*, align 8
  %5 = alloca %struct.hda_codec_class*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.hda_softc* null, %struct.hda_softc** %4, align 8
  store %struct.hda_codec_class* null, %struct.hda_codec_class** %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = call %struct.hda_softc* @calloc(i32 1, i32 4)
  store %struct.hda_softc* %13, %struct.hda_softc** %4, align 8
  %14 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %15 = icmp ne %struct.hda_softc* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.hda_softc* null, %struct.hda_softc** %2, align 8
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %19 = call i32 @hda_reset_regs(%struct.hda_softc* %18)
  %20 = call %struct.hda_codec_class* @hda_find_codec_class(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.hda_codec_class* %20, %struct.hda_codec_class** %5, align 8
  %21 = load %struct.hda_codec_class*, %struct.hda_codec_class** %5, align 8
  %22 = icmp ne %struct.hda_codec_class* %21, null
  br i1 %22, label %23, label %61

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %26 = call i32 @hda_parse_config(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %29 = call i32 @hda_parse_config(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %32 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %30, i8* %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %23
  %38 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %39 = load %struct.hda_codec_class*, %struct.hda_codec_class** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  br label %45

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i8* [ %43, %42 ], [ null, %44 ]
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ null, %51 ]
  %54 = call i32 @hda_codec_constructor(%struct.hda_softc* %38, %struct.hda_codec_class* %39, i8* %46, i8* %53, i32* null)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %52, %23
  br label %61

61:                                               ; preds = %60, %17
  %62 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  store %struct.hda_softc* %62, %struct.hda_softc** %2, align 8
  br label %63

63:                                               ; preds = %61, %16
  %64 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  ret %struct.hda_softc* %64
}

declare dso_local i32 @DPRINTF(i8*, i8*, ...) #1

declare dso_local %struct.hda_softc* @calloc(i32, i32) #1

declare dso_local i32 @hda_reset_regs(%struct.hda_softc*) #1

declare dso_local %struct.hda_codec_class* @hda_find_codec_class(i8*) #1

declare dso_local i32 @hda_parse_config(i8*, i8*, i8*) #1

declare dso_local i32 @hda_codec_constructor(%struct.hda_softc*, %struct.hda_codec_class*, i8*, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
