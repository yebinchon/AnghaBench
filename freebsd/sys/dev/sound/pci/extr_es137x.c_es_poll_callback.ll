; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_poll_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_poll_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_info = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ES_NCHANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @es_poll_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @es_poll_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.es_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.es_info*
  store %struct.es_info* %7, %struct.es_info** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.es_info*, %struct.es_info** %3, align 8
  %9 = icmp eq %struct.es_info* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %79

11:                                               ; preds = %1
  %12 = load %struct.es_info*, %struct.es_info** %3, align 8
  %13 = call i32 @ES_LOCK(%struct.es_info* %12)
  %14 = load %struct.es_info*, %struct.es_info** %3, align 8
  %15 = getelementptr inbounds %struct.es_info, %struct.es_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load %struct.es_info*, %struct.es_info** %3, align 8
  %20 = call i64 @es_chan_active(%struct.es_info* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %11
  %23 = load %struct.es_info*, %struct.es_info** %3, align 8
  %24 = call i32 @ES_UNLOCK(%struct.es_info* %23)
  br label %79

25:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ES_NCHANS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load %struct.es_info*, %struct.es_info** %3, align 8
  %32 = getelementptr inbounds %struct.es_info, %struct.es_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = call i64 @es_poll_channel(%struct.TYPE_2__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load %struct.es_info*, %struct.es_info** %3, align 8
  %50 = getelementptr inbounds %struct.es_info, %struct.es_info* %49, i32 0, i32 2
  %51 = load %struct.es_info*, %struct.es_info** %3, align 8
  %52 = call i32 @callout_reset(i32* %50, i32 1, void (i8*)* @es_poll_callback, %struct.es_info* %51)
  %53 = load %struct.es_info*, %struct.es_info** %3, align 8
  %54 = call i32 @ES_UNLOCK(%struct.es_info* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %76, %48
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @ES_NCHANS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.es_info*, %struct.es_info** %3, align 8
  %67 = getelementptr inbounds %struct.es_info, %struct.es_info* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @chn_intr(i32 %73)
  br label %75

75:                                               ; preds = %65, %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %55

79:                                               ; preds = %10, %22, %55
  ret void
}

declare dso_local i32 @ES_LOCK(%struct.es_info*) #1

declare dso_local i64 @es_chan_active(%struct.es_info*) #1

declare dso_local i32 @ES_UNLOCK(%struct.es_info*) #1

declare dso_local i64 @es_poll_channel(%struct.TYPE_2__*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.es_info*) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
