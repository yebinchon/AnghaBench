; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_check_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_check_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32, i32, i32, i32, i32, i32*, i32, i32 }

@EV_CNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SYN_CNT = common dso_local global i32 0, align 4
@KEY_CNT = common dso_local global i32 0, align 4
@REL_CNT = common dso_local global i32 0, align 4
@ABS_CNT = common dso_local global i32 0, align 4
@ABS_MT_SLOT = common dso_local global i32 0, align 4
@MSC_CNT = common dso_local global i32 0, align 4
@LED_CNT = common dso_local global i32 0, align 4
@SND_CNT = common dso_local global i32 0, align 4
@SW_CNT = common dso_local global i32 0, align 4
@REP_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdev_dev*, i32, i32, i32)* @evdev_check_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_check_event(%struct.evdev_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evdev_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.evdev_dev* %0, %struct.evdev_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @EV_CNT, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %5, align 4
  br label %188

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 128
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @evdev_event_supported(%struct.evdev_dev* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %188

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %185 [
    i32 128, label %27
    i32 135, label %34
    i32 132, label %50
    i32 136, label %66
    i32 133, label %114
    i32 134, label %130
    i32 130, label %146
    i32 129, label %162
    i32 131, label %178
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SYN_CNT, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %5, align 4
  br label %188

33:                                               ; preds = %27
  br label %187

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @KEY_CNT, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %5, align 4
  br label %188

40:                                               ; preds = %34
  %41 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %42 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @bit_test(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %5, align 4
  br label %188

49:                                               ; preds = %40
  br label %187

50:                                               ; preds = %25
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @REL_CNT, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %5, align 4
  br label %188

56:                                               ; preds = %50
  %57 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %58 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @bit_test(i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %5, align 4
  br label %188

65:                                               ; preds = %56
  br label %187

66:                                               ; preds = %25
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @ABS_CNT, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %5, align 4
  br label %188

72:                                               ; preds = %66
  %73 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %74 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @bit_test(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %5, align 4
  br label %188

81:                                               ; preds = %72
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @ABS_MT_SLOT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %91 = call i32 @MAXIMAL_MT_SLOT(%struct.evdev_dev* %90)
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88, %85
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %5, align 4
  br label %188

95:                                               ; preds = %88, %81
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @ABS_IS_MT(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %101 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %106 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ABS_MT_SLOT, align 4
  %109 = call i32 @bit_test(i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %5, align 4
  br label %188

113:                                              ; preds = %104, %99, %95
  br label %187

114:                                              ; preds = %25
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @MSC_CNT, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %5, align 4
  br label %188

120:                                              ; preds = %114
  %121 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %122 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @bit_test(i32 %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %5, align 4
  br label %188

129:                                              ; preds = %120
  br label %187

130:                                              ; preds = %25
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @LED_CNT, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %5, align 4
  br label %188

136:                                              ; preds = %130
  %137 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %138 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @bit_test(i32 %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %136
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %5, align 4
  br label %188

145:                                              ; preds = %136
  br label %187

146:                                              ; preds = %25
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @SND_CNT, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* @EINVAL, align 4
  store i32 %151, i32* %5, align 4
  br label %188

152:                                              ; preds = %146
  %153 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %154 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @bit_test(i32 %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* @EINVAL, align 4
  store i32 %160, i32* %5, align 4
  br label %188

161:                                              ; preds = %152
  br label %187

162:                                              ; preds = %25
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @SW_CNT, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* @EINVAL, align 4
  store i32 %167, i32* %5, align 4
  br label %188

168:                                              ; preds = %162
  %169 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %170 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @bit_test(i32 %171, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %168
  %176 = load i32, i32* @EINVAL, align 4
  store i32 %176, i32* %5, align 4
  br label %188

177:                                              ; preds = %168
  br label %187

178:                                              ; preds = %25
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @REP_CNT, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, i32* @EINVAL, align 4
  store i32 %183, i32* %5, align 4
  br label %188

184:                                              ; preds = %178
  br label %187

185:                                              ; preds = %25
  %186 = load i32, i32* @EINVAL, align 4
  store i32 %186, i32* %5, align 4
  br label %188

187:                                              ; preds = %184, %177, %161, %145, %129, %113, %65, %49, %33
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %187, %185, %182, %175, %166, %159, %150, %143, %134, %127, %118, %111, %93, %79, %70, %63, %54, %47, %38, %31, %23, %13
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @evdev_event_supported(%struct.evdev_dev*, i32) #1

declare dso_local i32 @bit_test(i32, i32) #1

declare dso_local i32 @MAXIMAL_MT_SLOT(%struct.evdev_dev*) #1

declare dso_local i32 @ABS_IS_MT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
