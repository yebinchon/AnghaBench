; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_pci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_info = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to initialize the mixer\0A\00", align 1
@PCMTRIG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tr_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr_pci_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tr_info*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.tr_info* @pcm_getdevinfo(i32 %6)
  store %struct.tr_info* %7, %struct.tr_info** %5, align 8
  %8 = load %struct.tr_info*, %struct.tr_info** %5, align 8
  %9 = call i32 @tr_init(%struct.tr_info* %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @mixer_reinit(i32 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %65

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %50, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.tr_info*, %struct.tr_info** %5, align 8
  %27 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load %struct.tr_info*, %struct.tr_info** %5, align 8
  %32 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load %struct.tr_info*, %struct.tr_info** %5, align 8
  %42 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = load i32, i32* @PCMTRIG_START, align 4
  %48 = call i32 @trpchan_trigger(i32* null, %struct.TYPE_4__* %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load %struct.tr_info*, %struct.tr_info** %5, align 8
  %55 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.tr_info*, %struct.tr_info** %5, align 8
  %61 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %60, i32 0, i32 1
  %62 = load i32, i32* @PCMTRIG_START, align 4
  %63 = call i32 @trrchan_trigger(i32* null, %struct.TYPE_3__* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %53
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %19, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.tr_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @tr_init(%struct.tr_info*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mixer_reinit(i32) #1

declare dso_local i32 @trpchan_trigger(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @trrchan_trigger(i32*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
