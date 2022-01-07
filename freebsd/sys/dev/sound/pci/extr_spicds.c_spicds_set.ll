; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_spicds.c_spicds_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_spicds.c_spicds_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spicds_info = type { i32, i32, i32 }

@PCMDIR_REC = common dso_local global i32 0, align 4
@SPICDS_TYPE_AK4524 = common dso_local global i32 0, align 4
@AK4524_LIPGA = common dso_local global i32 0, align 4
@AK4524_RIPGA = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@AK4524_LOATT = common dso_local global i32 0, align 4
@AK4524_ROATT = common dso_local global i32 0, align 4
@SPICDS_TYPE_AK4528 = common dso_local global i32 0, align 4
@AK4528_LOATT = common dso_local global i32 0, align 4
@AK4528_ROATT = common dso_local global i32 0, align 4
@WM8770_AOATT_L1 = common dso_local global i32 0, align 4
@WM8770_AOATT_UPDATE = common dso_local global i32 0, align 4
@WM8770_AOATT_R1 = common dso_local global i32 0, align 4
@SPICDS_TYPE_AK4358 = common dso_local global i32 0, align 4
@AK4358_LO1ATT = common dso_local global i32 0, align 4
@AK4358_OATT_ENABLE = common dso_local global i32 0, align 4
@AK4358_RO1ATT = common dso_local global i32 0, align 4
@AK4381_LOATT = common dso_local global i32 0, align 4
@AK4381_ROATT = common dso_local global i32 0, align 4
@AK4396_LOATT = common dso_local global i32 0, align 4
@AK4396_ROATT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spicds_set(%struct.spicds_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.spicds_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spicds_info* %0, %struct.spicds_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %10 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @snd_mtxlock(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = icmp uge i32 %13, 100
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %17 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 130
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %22 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 129
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15
  store i32 255, i32* %7, align 4
  br label %27

26:                                               ; preds = %20
  store i32 127, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %25
  br label %44

28:                                               ; preds = %4
  %29 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %30 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %39 [
    i32 128, label %32
    i32 130, label %35
    i32 129, label %35
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 27
  store i32 %34, i32* %7, align 4
  br label %43

35:                                               ; preds = %28, %28
  %36 = load i32, i32* %7, align 4
  %37 = mul i32 %36, 255
  %38 = udiv i32 %37, 100
  store i32 %38, i32* %7, align 4
  br label %43

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = mul i32 %40, 127
  %42 = udiv i32 %41, 100
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %35, %32
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32, i32* %8, align 4
  %46 = icmp uge i32 %45, 100
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %49 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 130
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %54 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 129
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47
  store i32 255, i32* %8, align 4
  br label %59

58:                                               ; preds = %52
  store i32 127, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %57
  br label %76

60:                                               ; preds = %44
  %61 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %62 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %71 [
    i32 128, label %64
    i32 130, label %67
    i32 129, label %67
  ]

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, 27
  store i32 %66, i32* %8, align 4
  br label %75

67:                                               ; preds = %60, %60
  %68 = load i32, i32* %8, align 4
  %69 = mul i32 %68, 255
  %70 = udiv i32 %69, 100
  store i32 %70, i32* %8, align 4
  br label %75

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  %73 = mul i32 %72, 127
  %74 = udiv i32 %73, 100
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %71, %67, %64
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @PCMDIR_REC, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %82 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SPICDS_TYPE_AK4524, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %88 = load i32, i32* @AK4524_LIPGA, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @spicds_wrcd(%struct.spicds_info* %87, i32 %88, i32 %89)
  %91 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %92 = load i32, i32* @AK4524_RIPGA, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @spicds_wrcd(%struct.spicds_info* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %86, %80, %76
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @PCMDIR_PLAY, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %101 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SPICDS_TYPE_AK4524, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %107 = load i32, i32* @AK4524_LOATT, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @spicds_wrcd(%struct.spicds_info* %106, i32 %107, i32 %108)
  %110 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %111 = load i32, i32* @AK4524_ROATT, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @spicds_wrcd(%struct.spicds_info* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %99, %95
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @PCMDIR_PLAY, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %120 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SPICDS_TYPE_AK4528, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %126 = load i32, i32* @AK4528_LOATT, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @spicds_wrcd(%struct.spicds_info* %125, i32 %126, i32 %127)
  %129 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %130 = load i32, i32* @AK4528_ROATT, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @spicds_wrcd(%struct.spicds_info* %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %124, %118, %114
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @PCMDIR_PLAY, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %133
  %138 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %139 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 128
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %144 = load i32, i32* @WM8770_AOATT_L1, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @WM8770_AOATT_UPDATE, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @spicds_wrcd(%struct.spicds_info* %143, i32 %144, i32 %147)
  %149 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %150 = load i32, i32* @WM8770_AOATT_R1, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @WM8770_AOATT_UPDATE, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @spicds_wrcd(%struct.spicds_info* %149, i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %142, %137, %133
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @PCMDIR_PLAY, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %178

159:                                              ; preds = %155
  %160 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %161 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @SPICDS_TYPE_AK4358, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %159
  %166 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %167 = load i32, i32* @AK4358_LO1ATT, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @AK4358_OATT_ENABLE, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @spicds_wrcd(%struct.spicds_info* %166, i32 %167, i32 %170)
  %172 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %173 = load i32, i32* @AK4358_RO1ATT, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @AK4358_OATT_ENABLE, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @spicds_wrcd(%struct.spicds_info* %172, i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %165, %159, %155
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @PCMDIR_PLAY, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %184 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 130
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  %188 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %189 = load i32, i32* @AK4381_LOATT, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @spicds_wrcd(%struct.spicds_info* %188, i32 %189, i32 %190)
  %192 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %193 = load i32, i32* @AK4381_ROATT, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @spicds_wrcd(%struct.spicds_info* %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %187, %182, %178
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @PCMDIR_PLAY, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %214

200:                                              ; preds = %196
  %201 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %202 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 129
  br i1 %204, label %205, label %214

205:                                              ; preds = %200
  %206 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %207 = load i32, i32* @AK4396_LOATT, align 4
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @spicds_wrcd(%struct.spicds_info* %206, i32 %207, i32 %208)
  %210 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %211 = load i32, i32* @AK4396_ROATT, align 4
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @spicds_wrcd(%struct.spicds_info* %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %205, %200, %196
  %215 = load %struct.spicds_info*, %struct.spicds_info** %5, align 8
  %216 = getelementptr inbounds %struct.spicds_info, %struct.spicds_info* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @snd_mtxunlock(i32 %217)
  ret void
}

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @spicds_wrcd(%struct.spicds_info*, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
