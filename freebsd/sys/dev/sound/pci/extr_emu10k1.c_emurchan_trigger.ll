; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emurchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emurchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_rchinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32, i32, i32 }

@EMU_RECBS_BUFSIZE_4096 = common dso_local global i32 0, align 4
@EMU_RECBS_BUFSIZE_8192 = common dso_local global i32 0, align 4
@EMU_RECBS_BUFSIZE_16384 = common dso_local global i32 0, align 4
@EMU_RECBS_BUFSIZE_32768 = common dso_local global i32 0, align 4
@EMU_RECBS_BUFSIZE_65536 = common dso_local global i32 0, align 4
@EMU_A_ADCCR_LCHANENABLE = common dso_local global i32 0, align 4
@EMU_A_ADCCR_RCHANENABLE = common dso_local global i32 0, align 4
@EMU_ADCCR_LCHANENABLE = common dso_local global i32 0, align 4
@EMU_ADCCR_RCHANENABLE = common dso_local global i32 0, align 4
@EMU_INTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @emurchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emurchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc_rchinfo*, align 8
  %9 = alloca %struct.sc_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.sc_rchinfo*
  store %struct.sc_rchinfo* %13, %struct.sc_rchinfo** %8, align 8
  %14 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %15 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %14, i32 0, i32 7
  %16 = load %struct.sc_info*, %struct.sc_info** %15, align 8
  store %struct.sc_info* %16, %struct.sc_info** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @PCMTRIG_COMMON(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %161

21:                                               ; preds = %3
  %22 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %35 [
    i32 4096, label %25
    i32 8192, label %27
    i32 16384, label %29
    i32 32768, label %31
    i32 65536, label %33
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @EMU_RECBS_BUFSIZE_4096, align 4
  store i32 %26, i32* %11, align 4
  br label %37

27:                                               ; preds = %21
  %28 = load i32, i32* @EMU_RECBS_BUFSIZE_8192, align 4
  store i32 %28, i32* %11, align 4
  br label %37

29:                                               ; preds = %21
  %30 = load i32, i32* @EMU_RECBS_BUFSIZE_16384, align 4
  store i32 %30, i32* %11, align 4
  br label %37

31:                                               ; preds = %21
  %32 = load i32, i32* @EMU_RECBS_BUFSIZE_32768, align 4
  store i32 %32, i32* %11, align 4
  br label %37

33:                                               ; preds = %21
  %34 = load i32, i32* @EMU_RECBS_BUFSIZE_65536, align 4
  store i32 %34, i32* %11, align 4
  br label %37

35:                                               ; preds = %21
  %36 = load i32, i32* @EMU_RECBS_BUFSIZE_4096, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %33, %31, %29, %27, %25
  %38 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snd_mtxlock(i32 %40)
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %155 [
    i32 129, label %43
    i32 128, label %122
    i32 132, label %122
    i32 130, label %154
    i32 131, label %154
  ]

43:                                               ; preds = %37
  %44 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %45 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %47 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %48 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @emu_wrptr(%struct.sc_info* %46, i32 0, i32 %49, i32 %50)
  %52 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %53 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %109

56:                                               ; preds = %43
  %57 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %58 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load i32, i32* @EMU_A_ADCCR_LCHANENABLE, align 4
  store i32 %62, i32* %10, align 4
  %63 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %64 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @AFMT_CHANNEL(i32 %65)
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @EMU_A_ADCCR_RCHANENABLE, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %74 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @audigy_recval(i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %97

79:                                               ; preds = %56
  %80 = load i32, i32* @EMU_ADCCR_LCHANENABLE, align 4
  store i32 %80, i32* %10, align 4
  %81 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %82 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @AFMT_CHANNEL(i32 %83)
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @EMU_ADCCR_RCHANENABLE, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %92 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @emu_recval(i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %90, %72
  %98 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %99 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %100 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @emu_wrptr(%struct.sc_info* %98, i32 0, i32 %101, i32 0)
  %103 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %104 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %105 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @emu_wrptr(%struct.sc_info* %103, i32 0, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %97, %43
  %110 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %111 = load i32, i32* @EMU_INTE, align 4
  %112 = call i32 @emu_rd(%struct.sc_info* %110, i32 %111, i32 4)
  store i32 %112, i32* %10, align 4
  %113 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %114 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %119 = load i32, i32* @EMU_INTE, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @emu_wr(%struct.sc_info* %118, i32 %119, i32 %120, i32 4)
  br label %156

122:                                              ; preds = %37, %37
  %123 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %124 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  %125 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %126 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %127 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @emu_wrptr(%struct.sc_info* %125, i32 0, i32 %128, i32 0)
  %130 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %131 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %122
  %135 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %136 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %137 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @emu_wrptr(%struct.sc_info* %135, i32 0, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %134, %122
  %141 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %142 = load i32, i32* @EMU_INTE, align 4
  %143 = call i32 @emu_rd(%struct.sc_info* %141, i32 %142, i32 4)
  store i32 %143, i32* %10, align 4
  %144 = load %struct.sc_rchinfo*, %struct.sc_rchinfo** %8, align 8
  %145 = getelementptr inbounds %struct.sc_rchinfo, %struct.sc_rchinfo* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %10, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %10, align 4
  %150 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %151 = load i32, i32* @EMU_INTE, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @emu_wr(%struct.sc_info* %150, i32 %151, i32 %152, i32 4)
  br label %156

154:                                              ; preds = %37, %37
  br label %155

155:                                              ; preds = %37, %154
  br label %156

156:                                              ; preds = %155, %140, %109
  %157 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  %158 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @snd_mtxunlock(i32 %159)
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %156, %20
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @emu_wrptr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @audigy_recval(i32) #1

declare dso_local i32 @emu_recval(i32) #1

declare dso_local i32 @emu_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @emu_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
