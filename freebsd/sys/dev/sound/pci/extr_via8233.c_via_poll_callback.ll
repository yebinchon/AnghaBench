; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_poll_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_poll_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i64, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NDXSCHANS = common dso_local global i32 0, align 4
@NMSGDCHANS = common dso_local global i32 0, align 4
@NWRCHANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @via_poll_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_poll_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.via_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.via_info*
  store %struct.via_info* %8, %struct.via_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.via_info*, %struct.via_info** %3, align 8
  %10 = icmp eq %struct.via_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %142

12:                                               ; preds = %1
  %13 = load %struct.via_info*, %struct.via_info** %3, align 8
  %14 = getelementptr inbounds %struct.via_info, %struct.via_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @snd_mtxlock(i32 %15)
  %17 = load %struct.via_info*, %struct.via_info** %3, align 8
  %18 = getelementptr inbounds %struct.via_info, %struct.via_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load %struct.via_info*, %struct.via_info** %3, align 8
  %23 = call i64 @via_chan_active(%struct.via_info* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %12
  %26 = load %struct.via_info*, %struct.via_info** %3, align 8
  %27 = getelementptr inbounds %struct.via_info, %struct.via_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @snd_mtxunlock(i32 %28)
  br label %142

30:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NDXSCHANS, align 4
  %34 = load i32, i32* @NMSGDCHANS, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load %struct.via_info*, %struct.via_info** %3, align 8
  %39 = getelementptr inbounds %struct.via_info, %struct.via_info* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = call i64 @via_poll_channel(%struct.TYPE_2__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 1, %47
  br label %50

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32 [ %48, %46 ], [ 0, %49 ]
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %31

57:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %79, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @NWRCHANS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load %struct.via_info*, %struct.via_info** %3, align 8
  %64 = getelementptr inbounds %struct.via_info, %struct.via_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = call i64 @via_poll_channel(%struct.TYPE_2__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 1, %72
  br label %75

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32 [ %73, %71 ], [ 0, %74 ]
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %58

82:                                               ; preds = %58
  %83 = load %struct.via_info*, %struct.via_info** %3, align 8
  %84 = getelementptr inbounds %struct.via_info, %struct.via_info* %83, i32 0, i32 4
  %85 = load %struct.via_info*, %struct.via_info** %3, align 8
  %86 = call i32 @callout_reset(i32* %84, i32 1, void (i8*)* @via_poll_callback, %struct.via_info* %85)
  %87 = load %struct.via_info*, %struct.via_info** %3, align 8
  %88 = getelementptr inbounds %struct.via_info, %struct.via_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @snd_mtxunlock(i32 %89)
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %114, %82
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @NDXSCHANS, align 4
  %94 = load i32, i32* @NMSGDCHANS, align 4
  %95 = add nsw i32 %93, %94
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %91
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %6, align 4
  %100 = shl i32 1, %99
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  %104 = load %struct.via_info*, %struct.via_info** %3, align 8
  %105 = getelementptr inbounds %struct.via_info, %struct.via_info* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @chn_intr(i32 %111)
  br label %113

113:                                              ; preds = %103, %97
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %91

117:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %139, %117
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @NWRCHANS, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = shl i32 1, %124
  %126 = and i32 %123, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load %struct.via_info*, %struct.via_info** %3, align 8
  %130 = getelementptr inbounds %struct.via_info, %struct.via_info* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @chn_intr(i32 %136)
  br label %138

138:                                              ; preds = %128, %122
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %118

142:                                              ; preds = %11, %25, %118
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i64 @via_chan_active(%struct.via_info*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i64 @via_poll_channel(%struct.TYPE_2__*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.via_info*) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
