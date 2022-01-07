; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_vchan.c_vchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_vchan.c_vchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vchan_info = type { i32, %struct.pcm_channel* }
%struct.pcm_channel = type { %struct.pcm_channel* }

@children = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CHN_N_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @vchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vchan_info*, align 8
  %9 = alloca %struct.pcm_channel*, align 8
  %10 = alloca %struct.pcm_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.vchan_info*
  store %struct.vchan_info* %14, %struct.vchan_info** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @PCMTRIG_COMMON(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.vchan_info*, %struct.vchan_info** %8, align 8
  %21 = getelementptr inbounds %struct.vchan_info, %struct.vchan_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %90

25:                                               ; preds = %18
  %26 = load %struct.vchan_info*, %struct.vchan_info** %8, align 8
  %27 = getelementptr inbounds %struct.vchan_info, %struct.vchan_info* %26, i32 0, i32 1
  %28 = load %struct.pcm_channel*, %struct.pcm_channel** %27, align 8
  store %struct.pcm_channel* %28, %struct.pcm_channel** %9, align 8
  %29 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %30 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %29, i32 0, i32 0
  %31 = load %struct.pcm_channel*, %struct.pcm_channel** %30, align 8
  store %struct.pcm_channel* %31, %struct.pcm_channel** %10, align 8
  %32 = load %struct.vchan_info*, %struct.vchan_info** %8, align 8
  %33 = getelementptr inbounds %struct.vchan_info, %struct.vchan_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.vchan_info*, %struct.vchan_info** %8, align 8
  %37 = getelementptr inbounds %struct.vchan_info, %struct.vchan_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %39 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %38)
  %40 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %41 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %40)
  %42 = load %struct.pcm_channel*, %struct.pcm_channel** %10, align 8
  %43 = call i32 @CHN_LOCK(%struct.pcm_channel* %42)
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %63 [
    i32 129, label %45
    i32 128, label %54
    i32 130, label %54
  ]

45:                                               ; preds = %25
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 129
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.pcm_channel*, %struct.pcm_channel** %10, align 8
  %50 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @children, i32 0, i32 0), align 4
  %52 = call i32 @CHN_INSERT_HEAD(%struct.pcm_channel* %49, %struct.pcm_channel* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  br label %64

54:                                               ; preds = %25, %25
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 129
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.pcm_channel*, %struct.pcm_channel** %10, align 8
  %59 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @children, i32 0, i32 0), align 4
  %61 = call i32 @CHN_REMOVE(%struct.pcm_channel* %58, %struct.pcm_channel* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  br label %64

63:                                               ; preds = %25
  br label %64

64:                                               ; preds = %63, %62, %53
  %65 = load %struct.pcm_channel*, %struct.pcm_channel** %10, align 8
  %66 = load i32, i32* @CHN_N_TRIGGER, align 4
  %67 = call i32 @chn_notify(%struct.pcm_channel* %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %69 = call i32 @CHN_LOCK(%struct.pcm_channel* %68)
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 129
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %77 = call i64 @VCHAN_SYNC_REQUIRED(%struct.pcm_channel* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %81 = call i32 @vchan_sync(%struct.pcm_channel* %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %79, %75, %72, %64
  %83 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %84 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %83)
  %85 = load %struct.pcm_channel*, %struct.pcm_channel** %10, align 8
  %86 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %85)
  %87 = load %struct.pcm_channel*, %struct.pcm_channel** %9, align 8
  %88 = call i32 @CHN_LOCK(%struct.pcm_channel* %87)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %82, %24
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @CHN_UNLOCK(%struct.pcm_channel*) #1

declare dso_local i32 @CHN_LOCK(%struct.pcm_channel*) #1

declare dso_local i32 @CHN_INSERT_HEAD(%struct.pcm_channel*, %struct.pcm_channel*, i32) #1

declare dso_local i32 @CHN_REMOVE(%struct.pcm_channel*, %struct.pcm_channel*, i32) #1

declare dso_local i32 @chn_notify(%struct.pcm_channel*, i32) #1

declare dso_local i64 @VCHAN_SYNC_REQUIRED(%struct.pcm_channel*) #1

declare dso_local i32 @vchan_sync(%struct.pcm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
