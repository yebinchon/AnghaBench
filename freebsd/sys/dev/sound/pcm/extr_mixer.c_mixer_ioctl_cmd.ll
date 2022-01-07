; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_ioctl_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_ioctl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_mixer* }
%struct.snd_mixer = type { i32, i32, i32 }
%struct.thread = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@MIXER_CMD_CDEV = common dso_local global i32 0, align 4
@SOUND_VERSION = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mixer_ioctl_cmd(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.thread*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_mixer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.thread* %4, %struct.thread** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i64, i64* %10, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %16, align 8
  store i32 -1, i32* %17, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call signext i8 @IOCGROUP(i32 %24)
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 88
  br i1 %27, label %28, label %50

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %48 [
    i32 134, label %30
    i32 140, label %34
    i32 142, label %38
    i32 141, label %38
    i32 136, label %38
    i32 135, label %43
  ]

30:                                               ; preds = %28
  %31 = load i64, i64* %10, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @sound_oss_sysinfo(i32* %32)
  store i32 0, i32* %7, align 4
  br label %174

34:                                               ; preds = %28
  %35 = load i64, i64* %10, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @sound_oss_card_info(i32* %36)
  store i32 %37, i32* %7, align 4
  br label %174

38:                                               ; preds = %28, %28, %28
  %39 = load %struct.cdev*, %struct.cdev** %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @dsp_oss_audioinfo(%struct.cdev* %39, i32* %41)
  store i32 %42, i32* %7, align 4
  br label %174

43:                                               ; preds = %28
  %44 = load %struct.cdev*, %struct.cdev** %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @mixer_oss_mixerinfo(%struct.cdev* %44, i32* %46)
  store i32 %47, i32* %7, align 4
  br label %174

48:                                               ; preds = %28
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %7, align 4
  br label %174

50:                                               ; preds = %6
  %51 = load %struct.cdev*, %struct.cdev** %8, align 8
  %52 = getelementptr inbounds %struct.cdev, %struct.cdev* %51, i32 0, i32 0
  %53 = load %struct.snd_mixer*, %struct.snd_mixer** %52, align 8
  store %struct.snd_mixer* %53, %struct.snd_mixer** %14, align 8
  %54 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %55 = icmp eq %struct.snd_mixer* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @EBADF, align 4
  store i32 %57, i32* %7, align 4
  br label %174

58:                                               ; preds = %50
  %59 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %60 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snd_mtxlock(i32 %61)
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @MIXER_CMD_CDEV, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %68 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %73 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @snd_mtxunlock(i32 %74)
  %76 = load i32, i32* @EBADF, align 4
  store i32 %76, i32* %7, align 4
  br label %174

77:                                               ; preds = %66, %58
  %78 = load i32, i32* %9, align 4
  switch i32 %78, label %102 [
    i32 138, label %79
    i32 139, label %85
    i32 137, label %89
    i32 143, label %94
    i32 131, label %97
  ]

79:                                               ; preds = %77
  %80 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %81 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %80, i32 0, i32 1
  %82 = bitcast i32* %81 to i8*
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @bcopy(i8* %82, i64 %83, i32 4)
  store i32 0, i32* %15, align 4
  br label %168

85:                                               ; preds = %77
  %86 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %87 = load i32*, i32** %16, align 8
  %88 = call i32 @mixer_get_recroute(%struct.snd_mixer* %86, i32* %87)
  store i32 %88, i32* %15, align 4
  br label %168

89:                                               ; preds = %77
  %90 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mixer_set_recroute(%struct.snd_mixer* %90, i32 %92)
  store i32 %93, i32* %15, align 4
  br label %168

94:                                               ; preds = %77
  %95 = load i32, i32* @SOUND_VERSION, align 4
  %96 = load i32*, i32** %16, align 8
  store i32 %95, i32* %96, align 4
  store i32 0, i32* %15, align 4
  br label %168

97:                                               ; preds = %77
  %98 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %99 = load i64, i64* %10, align 8
  %100 = inttoptr i64 %99 to i32*
  %101 = call i32 @mixer_mixerinfo(%struct.snd_mixer* %98, i32* %100)
  store i32 0, i32* %15, align 4
  br label %168

102:                                              ; preds = %77
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, -256
  %105 = call i32 @MIXER_WRITE(i32 0)
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %102
  %108 = load i32, i32* %18, align 4
  %109 = icmp eq i32 %108, 129
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %112 = load i32*, i32** %16, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mixer_setrecsrc(%struct.snd_mixer* %111, i32 %113)
  store i32 %114, i32* %15, align 4
  br label %121

115:                                              ; preds = %107
  %116 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load i32*, i32** %16, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @mixer_set(%struct.snd_mixer* %116, i32 %117, i32 %119)
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %115, %110
  %122 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %123 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @snd_mtxunlock(i32 %124)
  %126 = load i32, i32* %15, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %131

129:                                              ; preds = %121
  %130 = load i32, i32* @ENXIO, align 4
  br label %131

131:                                              ; preds = %129, %128
  %132 = phi i32 [ 0, %128 ], [ %130, %129 ]
  store i32 %132, i32* %7, align 4
  br label %174

133:                                              ; preds = %102
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %134, -256
  %136 = call i32 @MIXER_READ(i32 0)
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %167

138:                                              ; preds = %133
  %139 = load i32, i32* %18, align 4
  switch i32 %139, label %149 [
    i32 132, label %140
    i32 133, label %140
    i32 128, label %140
    i32 130, label %143
    i32 129, label %146
  ]

140:                                              ; preds = %138, %138, %138
  %141 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %142 = call i32 @mix_getdevs(%struct.snd_mixer* %141)
  store i32 %142, i32* %17, align 4
  br label %153

143:                                              ; preds = %138
  %144 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %145 = call i32 @mix_getrecdevs(%struct.snd_mixer* %144)
  store i32 %145, i32* %17, align 4
  br label %153

146:                                              ; preds = %138
  %147 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %148 = call i32 @mixer_getrecsrc(%struct.snd_mixer* %147)
  store i32 %148, i32* %17, align 4
  br label %153

149:                                              ; preds = %138
  %150 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %151 = load i32, i32* %18, align 4
  %152 = call i32 @mixer_get(%struct.snd_mixer* %150, i32 %151)
  store i32 %152, i32* %17, align 4
  br label %153

153:                                              ; preds = %149, %146, %143, %140
  %154 = load i32, i32* %17, align 4
  %155 = load i32*, i32** %16, align 8
  store i32 %154, i32* %155, align 4
  %156 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %157 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @snd_mtxunlock(i32 %158)
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %160, -1
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %165

163:                                              ; preds = %153
  %164 = load i32, i32* @ENXIO, align 4
  br label %165

165:                                              ; preds = %163, %162
  %166 = phi i32 [ 0, %162 ], [ %164, %163 ]
  store i32 %166, i32* %7, align 4
  br label %174

167:                                              ; preds = %133
  br label %168

168:                                              ; preds = %167, %97, %94, %89, %85, %79
  %169 = load %struct.snd_mixer*, %struct.snd_mixer** %14, align 8
  %170 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @snd_mtxunlock(i32 %171)
  %173 = load i32, i32* %15, align 4
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %168, %165, %131, %71, %56, %48, %43, %38, %34, %30
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local signext i8 @IOCGROUP(i32) #1

declare dso_local i32 @sound_oss_sysinfo(i32*) #1

declare dso_local i32 @sound_oss_card_info(i32*) #1

declare dso_local i32 @dsp_oss_audioinfo(%struct.cdev*, i32*) #1

declare dso_local i32 @mixer_oss_mixerinfo(%struct.cdev*, i32*) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @bcopy(i8*, i64, i32) #1

declare dso_local i32 @mixer_get_recroute(%struct.snd_mixer*, i32*) #1

declare dso_local i32 @mixer_set_recroute(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mixer_mixerinfo(%struct.snd_mixer*, i32*) #1

declare dso_local i32 @MIXER_WRITE(i32) #1

declare dso_local i32 @mixer_setrecsrc(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mixer_set(%struct.snd_mixer*, i32, i32) #1

declare dso_local i32 @MIXER_READ(i32) #1

declare dso_local i32 @mix_getdevs(%struct.snd_mixer*) #1

declare dso_local i32 @mix_getrecdevs(%struct.snd_mixer*) #1

declare dso_local i32 @mixer_getrecsrc(%struct.snd_mixer*) #1

declare dso_local i32 @mixer_get(%struct.snd_mixer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
