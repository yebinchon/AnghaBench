; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_vchan.c_vchan_initsys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_vchan.c_vchan_initsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snddev_info = type { i32, i32, i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vchans\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@PLAY = common dso_local global i32 0, align 4
@VCHAN_SYSCTL_DATA_SIZE = common dso_local global i32 0, align 4
@sysctl_dev_pcm_vchans = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"total allocated virtual channel\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"vchanmode\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@sysctl_dev_pcm_vchanmode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"vchan format/rate selection: 0=fixed, 1=passthrough, 2=adaptive\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"vchanrate\00", align 1
@sysctl_dev_pcm_vchanrate = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"virtual channel mixing speed/rate\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"vchanformat\00", align 1
@sysctl_dev_pcm_vchanformat = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"virtual channel mixing format\00", align 1
@REC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchan_initsys(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snddev_info*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @device_get_unit(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.snddev_info* @device_get_softc(i32 %7)
  store %struct.snddev_info* %8, %struct.snddev_info** %3, align 8
  %9 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %10 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %9, i32 0, i32 3
  %11 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %12 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SYSCTL_CHILDREN(i32 %13)
  %15 = load i32, i32* @OID_AUTO, align 4
  %16 = load i32, i32* @CTLTYPE_INT, align 4
  %17 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PLAY, align 4
  %21 = call i32 @VCHAN_SYSCTL_DATA(i32 %19, i32 %20)
  %22 = load i32, i32* @VCHAN_SYSCTL_DATA_SIZE, align 4
  %23 = load i32, i32* @sysctl_dev_pcm_vchans, align 4
  %24 = call i32 @SYSCTL_ADD_PROC(i32* %10, i32 %14, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %22, i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %26 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %25, i32 0, i32 3
  %27 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %28 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SYSCTL_CHILDREN(i32 %29)
  %31 = load i32, i32* @OID_AUTO, align 4
  %32 = load i32, i32* @CTLTYPE_STRING, align 4
  %33 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PLAY, align 4
  %37 = call i32 @VCHAN_SYSCTL_DATA(i32 %35, i32 %36)
  %38 = load i32, i32* @VCHAN_SYSCTL_DATA_SIZE, align 4
  %39 = load i32, i32* @sysctl_dev_pcm_vchanmode, align 4
  %40 = call i32 @SYSCTL_ADD_PROC(i32* %26, i32 %30, i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 %37, i32 %38, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %41 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %42 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %41, i32 0, i32 3
  %43 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %44 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SYSCTL_CHILDREN(i32 %45)
  %47 = load i32, i32* @OID_AUTO, align 4
  %48 = load i32, i32* @CTLTYPE_INT, align 4
  %49 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @PLAY, align 4
  %53 = call i32 @VCHAN_SYSCTL_DATA(i32 %51, i32 %52)
  %54 = load i32, i32* @VCHAN_SYSCTL_DATA_SIZE, align 4
  %55 = load i32, i32* @sysctl_dev_pcm_vchanrate, align 4
  %56 = call i32 @SYSCTL_ADD_PROC(i32* %42, i32 %46, i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %50, i32 %53, i32 %54, i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %57 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %58 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %57, i32 0, i32 3
  %59 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %60 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SYSCTL_CHILDREN(i32 %61)
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLTYPE_STRING, align 4
  %65 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @PLAY, align 4
  %69 = call i32 @VCHAN_SYSCTL_DATA(i32 %67, i32 %68)
  %70 = load i32, i32* @VCHAN_SYSCTL_DATA_SIZE, align 4
  %71 = load i32, i32* @sysctl_dev_pcm_vchanformat, align 4
  %72 = call i32 @SYSCTL_ADD_PROC(i32* %58, i32 %62, i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %66, i32 %69, i32 %70, i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %73 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %74 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %73, i32 0, i32 1
  %75 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %76 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SYSCTL_CHILDREN(i32 %77)
  %79 = load i32, i32* @OID_AUTO, align 4
  %80 = load i32, i32* @CTLTYPE_INT, align 4
  %81 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @REC, align 4
  %85 = call i32 @VCHAN_SYSCTL_DATA(i32 %83, i32 %84)
  %86 = load i32, i32* @VCHAN_SYSCTL_DATA_SIZE, align 4
  %87 = load i32, i32* @sysctl_dev_pcm_vchans, align 4
  %88 = call i32 @SYSCTL_ADD_PROC(i32* %74, i32 %78, i32 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %90 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %89, i32 0, i32 1
  %91 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %92 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @SYSCTL_CHILDREN(i32 %93)
  %95 = load i32, i32* @OID_AUTO, align 4
  %96 = load i32, i32* @CTLTYPE_STRING, align 4
  %97 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @REC, align 4
  %101 = call i32 @VCHAN_SYSCTL_DATA(i32 %99, i32 %100)
  %102 = load i32, i32* @VCHAN_SYSCTL_DATA_SIZE, align 4
  %103 = load i32, i32* @sysctl_dev_pcm_vchanmode, align 4
  %104 = call i32 @SYSCTL_ADD_PROC(i32* %90, i32 %94, i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %101, i32 %102, i32 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %105 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %106 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %105, i32 0, i32 1
  %107 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %108 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @SYSCTL_CHILDREN(i32 %109)
  %111 = load i32, i32* @OID_AUTO, align 4
  %112 = load i32, i32* @CTLTYPE_INT, align 4
  %113 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @REC, align 4
  %117 = call i32 @VCHAN_SYSCTL_DATA(i32 %115, i32 %116)
  %118 = load i32, i32* @VCHAN_SYSCTL_DATA_SIZE, align 4
  %119 = load i32, i32* @sysctl_dev_pcm_vchanrate, align 4
  %120 = call i32 @SYSCTL_ADD_PROC(i32* %106, i32 %110, i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %114, i32 %117, i32 %118, i32 %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %121 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %122 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %121, i32 0, i32 1
  %123 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %124 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @SYSCTL_CHILDREN(i32 %125)
  %127 = load i32, i32* @OID_AUTO, align 4
  %128 = load i32, i32* @CTLTYPE_STRING, align 4
  %129 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @REC, align 4
  %133 = call i32 @VCHAN_SYSCTL_DATA(i32 %131, i32 %132)
  %134 = load i32, i32* @VCHAN_SYSCTL_DATA_SIZE, align 4
  %135 = load i32, i32* @sysctl_dev_pcm_vchanformat, align 4
  %136 = call i32 @SYSCTL_ADD_PROC(i32* %122, i32 %126, i32 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %130, i32 %133, i32 %134, i32 %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @VCHAN_SYSCTL_DATA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
