; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FM_INTSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\0Afm801_intr intsrc 0x%x \00", align 1
@FM_INTSTATUS_PLAY = common dso_local global i32 0, align 4
@FM_PLAY_DMABUF1 = common dso_local global i32 0, align 4
@FM_PLAY_DMABUF2 = common dso_local global i32 0, align 4
@FM_INTSTATUS_REC = common dso_local global i32 0, align 4
@FM_REC_DMABUF1 = common dso_local global i32 0, align 4
@FM_REC_DMABUF2 = common dso_local global i32 0, align 4
@FM_INTSTATUS_MPU = common dso_local global i32 0, align 4
@FM_INTSTATUS_VOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"fm801_intr clear\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fm801_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm801_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fm801_info*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.fm801_info*
  store %struct.fm801_info* %6, %struct.fm801_info** %3, align 8
  %7 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %8 = load i32, i32* @FM_INTSTATUS, align 4
  %9 = call i32 @fm801_rd(%struct.fm801_info* %7, i32 %8, i32 2)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FM_INTSTATUS_PLAY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %1
  %17 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %18 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %22 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %28 = load i32, i32* @FM_PLAY_DMABUF1, align 4
  %29 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %30 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fm801_wr(%struct.fm801_info* %27, i32 %28, i32 %31, i32 4)
  br label %40

33:                                               ; preds = %16
  %34 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %35 = load i32, i32* @FM_PLAY_DMABUF2, align 4
  %36 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %37 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fm801_wr(%struct.fm801_info* %34, i32 %35, i32 %38, i32 4)
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %42 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @chn_intr(i32 %44)
  br label %46

46:                                               ; preds = %40, %1
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @FM_INTSTATUS_REC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %53 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %57 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %63 = load i32, i32* @FM_REC_DMABUF1, align 4
  %64 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %65 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @fm801_wr(%struct.fm801_info* %62, i32 %63, i32 %66, i32 4)
  br label %75

68:                                               ; preds = %51
  %69 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %70 = load i32, i32* @FM_REC_DMABUF2, align 4
  %71 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %72 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @fm801_wr(%struct.fm801_info* %69, i32 %70, i32 %73, i32 4)
  br label %75

75:                                               ; preds = %68, %61
  %76 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %77 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @chn_intr(i32 %79)
  br label %81

81:                                               ; preds = %75, %46
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @FM_INTSTATUS_MPU, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %88 = load i32, i32* @FM_INTSTATUS, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @FM_INTSTATUS_MPU, align 4
  %91 = and i32 %89, %90
  %92 = call i32 @fm801_wr(%struct.fm801_info* %87, i32 %88, i32 %91, i32 2)
  br label %93

93:                                               ; preds = %86, %81
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @FM_INTSTATUS_VOL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %100 = load i32, i32* @FM_INTSTATUS, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @FM_INTSTATUS_VOL, align 4
  %103 = and i32 %101, %102
  %104 = call i32 @fm801_wr(%struct.fm801_info* %99, i32 %100, i32 %103, i32 2)
  br label %105

105:                                              ; preds = %98, %93
  %106 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.fm801_info*, %struct.fm801_info** %3, align 8
  %108 = load i32, i32* @FM_INTSTATUS, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @FM_INTSTATUS_PLAY, align 4
  %111 = load i32, i32* @FM_INTSTATUS_REC, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = call i32 @fm801_wr(%struct.fm801_info* %107, i32 %108, i32 %113, i32 2)
  ret void
}

declare dso_local i32 @fm801_rd(%struct.fm801_info*, i32, i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @fm801_wr(%struct.fm801_info*, i32, i32, i32) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
