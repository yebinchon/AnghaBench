; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ntptime.c_ntp_update_second.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ntptime.c_ntp_update_second.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXFREQ = common dso_local global i32 0, align 4
@time_maxerror = common dso_local global i32 0, align 4
@time_state = common dso_local global i32 0, align 4
@time_status = common dso_local global i32 0, align 4
@STA_INS = common dso_local global i32 0, align 4
@STA_DEL = common dso_local global i32 0, align 4
@time_tai = common dso_local global i32 0, align 4
@time_offset = common dso_local global i32 0, align 4
@SHIFT_PLL = common dso_local global i64 0, align 8
@time_constant = common dso_local global i64 0, align 8
@time_adj = common dso_local global i32 0, align 4
@time_freq = common dso_local global i32 0, align 4
@time_adjtime = common dso_local global i32 0, align 4
@STA_PPSSIGNAL = common dso_local global i32 0, align 4
@STA_PPSTIME = common dso_local global i32 0, align 4
@pps_shift = common dso_local global i64 0, align 8
@pps_valid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntp_update_second(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 (...) @NTP_LOCK()
  %8 = load i32, i32* @MAXFREQ, align 4
  %9 = sdiv i32 %8, 1000
  %10 = load i32, i32* @time_maxerror, align 4
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* @time_maxerror, align 4
  %12 = load i32, i32* @time_state, align 4
  switch i32 %12, label %76 [
    i32 130, label %13
    i32 131, label %27
    i32 132, label %46
    i32 129, label %66
    i32 128, label %67
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @time_status, align 4
  %15 = load i32, i32* @STA_INS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 131, i32* @time_state, align 4
  br label %26

19:                                               ; preds = %13
  %20 = load i32, i32* @time_status, align 4
  %21 = load i32, i32* @STA_DEL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 132, i32* @time_state, align 4
  br label %25

25:                                               ; preds = %24, %19
  br label %26

26:                                               ; preds = %25, %18
  br label %76

27:                                               ; preds = %2
  %28 = load i32, i32* @time_status, align 4
  %29 = load i32, i32* @STA_INS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 130, i32* @time_state, align 4
  br label %45

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = srem i32 %35, 86400
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  store i32 129, i32* @time_state, align 4
  %42 = load i32, i32* @time_tai, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @time_tai, align 4
  br label %44

44:                                               ; preds = %38, %33
  br label %45

45:                                               ; preds = %44, %32
  br label %76

46:                                               ; preds = %2
  %47 = load i32, i32* @time_status, align 4
  %48 = load i32, i32* @STA_DEL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 130, i32* @time_state, align 4
  br label %65

52:                                               ; preds = %46
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = srem i32 %55, 86400
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @time_tai, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* @time_tai, align 4
  store i32 128, i32* @time_state, align 4
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %51
  br label %76

66:                                               ; preds = %2
  store i32 128, i32* @time_state, align 4
  br label %76

67:                                               ; preds = %2
  %68 = load i32, i32* @time_status, align 4
  %69 = load i32, i32* @STA_INS, align 4
  %70 = load i32, i32* @STA_DEL, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  store i32 130, i32* @time_state, align 4
  br label %75

75:                                               ; preds = %74, %67
  br label %76

76:                                               ; preds = %75, %2, %66, %65, %45, %26
  %77 = load i32, i32* @time_offset, align 4
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i64, i64* @SHIFT_PLL, align 8
  %80 = load i64, i64* @time_constant, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @L_RSHIFT(i32 %78, i64 %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* @time_adj, align 4
  %84 = load i32, i32* @time_offset, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @L_SUB(i32 %84, i32 %85)
  %87 = load i32, i32* @time_adj, align 4
  %88 = load i32, i32* @time_freq, align 4
  %89 = call i32 @L_ADD(i32 %87, i32 %88)
  %90 = load i32, i32* @time_adjtime, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %76
  %93 = load i32, i32* @time_adjtime, align 4
  %94 = icmp sgt i32 %93, 1000000
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 5000, i32* %5, align 4
  br label %113

96:                                               ; preds = %92
  %97 = load i32, i32* @time_adjtime, align 4
  %98 = icmp slt i32 %97, -1000000
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 -5000, i32* %5, align 4
  br label %112

100:                                              ; preds = %96
  %101 = load i32, i32* @time_adjtime, align 4
  %102 = icmp sgt i32 %101, 500
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 500, i32* %5, align 4
  br label %111

104:                                              ; preds = %100
  %105 = load i32, i32* @time_adjtime, align 4
  %106 = icmp slt i32 %105, -500
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 -500, i32* %5, align 4
  br label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @time_adjtime, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %107
  br label %111

111:                                              ; preds = %110, %103
  br label %112

112:                                              ; preds = %111, %99
  br label %113

113:                                              ; preds = %112, %95
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @time_adjtime, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* @time_adjtime, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %5, align 4
  %119 = mul nsw i32 %118, 1000
  %120 = call i32 @L_LINT(i32 %117, i32 %119)
  %121 = load i32, i32* @time_adj, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @L_ADD(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %113, %76
  %125 = load i32, i32* @time_adj, align 4
  %126 = load i32*, i32** %3, align 8
  store i32 %125, i32* %126, align 4
  %127 = call i32 (...) @NTP_UNLOCK()
  ret void
}

declare dso_local i32 @NTP_LOCK(...) #1

declare dso_local i32 @L_RSHIFT(i32, i64) #1

declare dso_local i32 @L_SUB(i32, i32) #1

declare dso_local i32 @L_ADD(i32, i32) #1

declare dso_local i32 @L_LINT(i32, i32) #1

declare dso_local i32 @NTP_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
