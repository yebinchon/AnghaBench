; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_pci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"unable to reinitialize the card\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to reinitialize the mixer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cs4281_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4281_pci_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.sc_info* @pcm_getdevinfo(i32 %5)
  store %struct.sc_info* %6, %struct.sc_info** %4, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %8 = call i32 @cs4281_power(%struct.sc_info* %7, i32 0)
  %9 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %10 = call i32 @cs4281_init(%struct.sc_info* %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %81

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @mixer_reinit(i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %81

24:                                               ; preds = %16
  %25 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 1
  %27 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cs4281chan_setspeed(i32* null, %struct.TYPE_5__* %26, i32 %30)
  %32 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %33 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %32, i32 0, i32 1
  %34 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %35 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cs4281chan_setblocksize(i32* null, %struct.TYPE_5__* %33, i32 %37)
  %39 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %40 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %39, i32 0, i32 1
  %41 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %42 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cs4281chan_setformat(i32* null, %struct.TYPE_5__* %40, i32 %44)
  %46 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %47 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %46, i32 0, i32 1
  %48 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %49 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @adcdac_go(%struct.TYPE_5__* %47, i32 %51)
  %53 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %54 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %53, i32 0, i32 0
  %55 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cs4281chan_setspeed(i32* null, %struct.TYPE_5__* %54, i32 %58)
  %60 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %61 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %60, i32 0, i32 0
  %62 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %63 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cs4281chan_setblocksize(i32* null, %struct.TYPE_5__* %61, i32 %65)
  %67 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %68 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %67, i32 0, i32 0
  %69 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %70 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cs4281chan_setformat(i32* null, %struct.TYPE_5__* %68, i32 %72)
  %74 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %75 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %74, i32 0, i32 0
  %76 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %77 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @adcdac_go(%struct.TYPE_5__* %75, i32 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %24, %20, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @cs4281_power(%struct.sc_info*, i32) #1

declare dso_local i32 @cs4281_init(%struct.sc_info*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mixer_reinit(i32) #1

declare dso_local i32 @cs4281chan_setspeed(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @cs4281chan_setblocksize(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @cs4281chan_setformat(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @adcdac_go(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
