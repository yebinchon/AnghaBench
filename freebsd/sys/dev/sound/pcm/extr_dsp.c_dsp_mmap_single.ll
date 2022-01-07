; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_mmap_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_mmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cdev = type { i32 }
%struct.vm_object = type { i32 }
%struct.snddev_info = type { i32 }
%struct.pcm_channel = type { i32, i32 }

@PROT_EXEC = common dso_local global i32 0, align 4
@dsp_mmap_allow_prot_exec = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@SD_F_PRIO_RD = common dso_local global i32 0, align 4
@SD_F_PRIO_WR = common dso_local global i32 0, align 4
@CHN_F_MMAP_INVALID = common dso_local global i32 0, align 4
@CHN_F_MMAP = common dso_local global i32 0, align 4
@OBJT_DEVICE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@SV_ABI_LINUX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64*, i64, %struct.vm_object**, i32)* @dsp_mmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_mmap_single(%struct.cdev* %0, i64* %1, i64 %2, %struct.vm_object** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vm_object**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.snddev_info*, align 8
  %13 = alloca %struct.pcm_channel*, align 8
  %14 = alloca %struct.pcm_channel*, align 8
  %15 = alloca %struct.pcm_channel*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.vm_object** %3, %struct.vm_object*** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @PROT_EXEC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i32, i32* @dsp_mmap_allow_prot_exec, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %6, align 4
  br label %163

25:                                               ; preds = %20, %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @PROT_READ, align 4
  %28 = load i32, i32* @PROT_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %6, align 4
  br label %163

34:                                               ; preds = %25
  %35 = load %struct.cdev*, %struct.cdev** %7, align 8
  %36 = call %struct.snddev_info* @dsp_get_info(%struct.cdev* %35)
  store %struct.snddev_info* %36, %struct.snddev_info** %12, align 8
  %37 = load %struct.snddev_info*, %struct.snddev_info** %12, align 8
  %38 = load %struct.cdev*, %struct.cdev** %7, align 8
  %39 = call i32 @DSP_REGISTERED(%struct.snddev_info* %37, %struct.cdev* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %6, align 4
  br label %163

43:                                               ; preds = %34
  %44 = load %struct.snddev_info*, %struct.snddev_info** %12, align 8
  %45 = call i32 @PCM_GIANT_ENTER(%struct.snddev_info* %44)
  %46 = load %struct.cdev*, %struct.cdev** %7, align 8
  %47 = load i32, i32* @SD_F_PRIO_RD, align 4
  %48 = load i32, i32* @SD_F_PRIO_WR, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @getchns(%struct.cdev* %46, %struct.pcm_channel** %14, %struct.pcm_channel** %13, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @PROT_WRITE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load %struct.pcm_channel*, %struct.pcm_channel** %13, align 8
  br label %59

57:                                               ; preds = %43
  %58 = load %struct.pcm_channel*, %struct.pcm_channel** %14, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi %struct.pcm_channel* [ %56, %55 ], [ %58, %57 ]
  store %struct.pcm_channel* %60, %struct.pcm_channel** %15, align 8
  %61 = load %struct.pcm_channel*, %struct.pcm_channel** %15, align 8
  %62 = icmp eq %struct.pcm_channel* %61, null
  br i1 %62, label %100, label %63

63:                                               ; preds = %59
  %64 = load %struct.pcm_channel*, %struct.pcm_channel** %15, align 8
  %65 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CHN_F_MMAP_INVALID, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %63
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %72, %73
  %75 = load %struct.pcm_channel*, %struct.pcm_channel** %15, align 8
  %76 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @sndbuf_getsize(i32 %77)
  %79 = icmp ugt i64 %74, %78
  br i1 %79, label %100, label %80

80:                                               ; preds = %70
  %81 = load %struct.pcm_channel*, %struct.pcm_channel** %13, align 8
  %82 = icmp ne %struct.pcm_channel* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.pcm_channel*, %struct.pcm_channel** %13, align 8
  %85 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CHN_F_MMAP_INVALID, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %83, %80
  %91 = load %struct.pcm_channel*, %struct.pcm_channel** %14, align 8
  %92 = icmp ne %struct.pcm_channel* %91, null
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load %struct.pcm_channel*, %struct.pcm_channel** %14, align 8
  %95 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CHN_F_MMAP_INVALID, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %93, %83, %70, %63, %59
  %101 = load %struct.cdev*, %struct.cdev** %7, align 8
  %102 = load %struct.pcm_channel*, %struct.pcm_channel** %14, align 8
  %103 = load %struct.pcm_channel*, %struct.pcm_channel** %13, align 8
  %104 = load i32, i32* @SD_F_PRIO_RD, align 4
  %105 = load i32, i32* @SD_F_PRIO_WR, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @relchns(%struct.cdev* %101, %struct.pcm_channel* %102, %struct.pcm_channel* %103, i32 %106)
  %108 = load %struct.snddev_info*, %struct.snddev_info** %12, align 8
  %109 = call i32 @PCM_GIANT_EXIT(%struct.snddev_info* %108)
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %6, align 4
  br label %163

111:                                              ; preds = %93, %90
  %112 = load %struct.pcm_channel*, %struct.pcm_channel** %13, align 8
  %113 = icmp ne %struct.pcm_channel* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, i32* @CHN_F_MMAP, align 4
  %116 = load %struct.pcm_channel*, %struct.pcm_channel** %13, align 8
  %117 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %111
  %121 = load %struct.pcm_channel*, %struct.pcm_channel** %14, align 8
  %122 = icmp ne %struct.pcm_channel* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* @CHN_F_MMAP, align 4
  %125 = load %struct.pcm_channel*, %struct.pcm_channel** %14, align 8
  %126 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %120
  %130 = load %struct.pcm_channel*, %struct.pcm_channel** %15, align 8
  %131 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i64*, i64** %8, align 8
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @sndbuf_getbufofs(i32 %132, i64 %134)
  %136 = load i64*, i64** %8, align 8
  store i64 %135, i64* %136, align 8
  %137 = load %struct.cdev*, %struct.cdev** %7, align 8
  %138 = load %struct.pcm_channel*, %struct.pcm_channel** %14, align 8
  %139 = load %struct.pcm_channel*, %struct.pcm_channel** %13, align 8
  %140 = load i32, i32* @SD_F_PRIO_RD, align 4
  %141 = load i32, i32* @SD_F_PRIO_WR, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @relchns(%struct.cdev* %137, %struct.pcm_channel* %138, %struct.pcm_channel* %139, i32 %142)
  %144 = load i32, i32* @OBJT_DEVICE, align 4
  %145 = load %struct.cdev*, %struct.cdev** %7, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i64*, i64** %8, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call %struct.vm_object* @vm_pager_allocate(i32 %144, %struct.cdev* %145, i64 %146, i32 %147, i64 %149, i32 %152)
  %154 = load %struct.vm_object**, %struct.vm_object*** %10, align 8
  store %struct.vm_object* %153, %struct.vm_object** %154, align 8
  %155 = load %struct.snddev_info*, %struct.snddev_info** %12, align 8
  %156 = call i32 @PCM_GIANT_LEAVE(%struct.snddev_info* %155)
  %157 = load %struct.vm_object**, %struct.vm_object*** %10, align 8
  %158 = load %struct.vm_object*, %struct.vm_object** %157, align 8
  %159 = icmp eq %struct.vm_object* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %129
  %161 = load i32, i32* @EINVAL, align 4
  store i32 %161, i32* %6, align 4
  br label %163

162:                                              ; preds = %129
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %162, %160, %100, %41, %32, %23
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local %struct.snddev_info* @dsp_get_info(%struct.cdev*) #1

declare dso_local i32 @DSP_REGISTERED(%struct.snddev_info*, %struct.cdev*) #1

declare dso_local i32 @PCM_GIANT_ENTER(%struct.snddev_info*) #1

declare dso_local i32 @getchns(%struct.cdev*, %struct.pcm_channel**, %struct.pcm_channel**, i32) #1

declare dso_local i64 @sndbuf_getsize(i32) #1

declare dso_local i32 @relchns(%struct.cdev*, %struct.pcm_channel*, %struct.pcm_channel*, i32) #1

declare dso_local i32 @PCM_GIANT_EXIT(%struct.snddev_info*) #1

declare dso_local i64 @sndbuf_getbufofs(i32, i64) #1

declare dso_local %struct.vm_object* @vm_pager_allocate(i32, %struct.cdev*, i64, i32, i64, i32) #1

declare dso_local i32 @PCM_GIANT_LEAVE(%struct.snddev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
