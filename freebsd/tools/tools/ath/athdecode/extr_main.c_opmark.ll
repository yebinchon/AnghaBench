; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_opmark.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_opmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.athregrec = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"\0A%05d: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ar%uReset %s\00", align 1
@state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"change channel\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"no channel change\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ar%u_reset.c; line %u\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"ar%uReset (done), FAIL, error %u\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ar%uReset (done), OK\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"ar%uChipReset, channel %u MHz\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"ar%uPerCalibration, channel %u MHz\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"ar%uSetChannel, channel %u MHz\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"ar%uAniReset, HAL_M_STA\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"ar%uAniReset, HAL_M_IBSS\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"ar%uAniReset, HAL_M_HOSTAP\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"ar%uAniReset, HAL_M_MONITOR\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"ar%uAniReset, opmode %u\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"ar%uAniPoll, listenTime %u\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"ar%uAniControl, PRESENT\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"ar%uAniControl, NOISE_IMMUNITY\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"ar%uAniControl, OFDM_WEAK_SIGNAL\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"ar%uAniControl, CCK_WEAK_SIGNAL\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"ar%uAniControl, FIRSTEP_LEVEL\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"ar%uAniControl, SPUR_IMMUNITY\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"ar%uAniControl, MODE\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"ar%uAniControl, PHYERR_RESET\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"ar%uAniControl, cmd %u\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"mark #%u value %u/0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, %struct.athregrec*)* @opmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @opmark(i32* %0, i32 %1, %struct.athregrec* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.athregrec*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.athregrec* %2, %struct.athregrec** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %11 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %147 [
    i32 143, label %13
    i32 141, label %23
    i32 142, label %30
    i32 145, label %47
    i32 144, label %54
    i32 140, label %61
    i32 146, label %68
    i32 147, label %96
    i32 148, label %103
  ]

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %16 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %17 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)
  %22 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %15, i8* %21)
  br label %159

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %26 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %27 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %25, i32 %28)
  br label %159

30:                                               ; preds = %3
  %31 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %32 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %38 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %39 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %37, i32 %40)
  br label %46

42:                                               ; preds = %30
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %45 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %35
  br label %159

47:                                               ; preds = %3
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %50 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %51 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %49, i32 %52)
  br label %159

54:                                               ; preds = %3
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %57 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %58 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %56, i32 %59)
  br label %159

61:                                               ; preds = %3
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %64 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %65 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %63, i32 %66)
  br label %159

68:                                               ; preds = %3
  %69 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %70 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %88 [
    i32 128, label %72
    i32 130, label %76
    i32 131, label %80
    i32 129, label %84
  ]

72:                                               ; preds = %68
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %75 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %74)
  br label %95

76:                                               ; preds = %68
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %79 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %78)
  br label %95

80:                                               ; preds = %68
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %83 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %82)
  br label %95

84:                                               ; preds = %68
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %87 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %86)
  br label %95

88:                                               ; preds = %68
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %91 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %92 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %88, %84, %80, %76, %72
  br label %159

96:                                               ; preds = %3
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %99 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %100 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %98, i32 %101)
  br label %159

103:                                              ; preds = %3
  %104 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %105 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %139 [
    i32 133, label %107
    i32 136, label %111
    i32 135, label %115
    i32 139, label %119
    i32 138, label %123
    i32 132, label %127
    i32 137, label %131
    i32 134, label %135
  ]

107:                                              ; preds = %103
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %110 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %109)
  br label %146

111:                                              ; preds = %103
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %114 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %113)
  br label %146

115:                                              ; preds = %103
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %118 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 %117)
  br label %146

119:                                              ; preds = %103
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %122 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32 %121)
  br label %146

123:                                              ; preds = %103
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %126 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 %125)
  br label %146

127:                                              ; preds = %103
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %130 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i32 %129)
  br label %146

131:                                              ; preds = %103
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %134 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 %133)
  br label %146

135:                                              ; preds = %103
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %138 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %137)
  br label %146

139:                                              ; preds = %103
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  %142 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %143 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %139, %135, %131, %127, %123, %119, %115, %111, %107
  br label %159

147:                                              ; preds = %3
  %148 = load i32*, i32** %4, align 8
  %149 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %150 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %153 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.athregrec*, %struct.athregrec** %6, align 8
  %156 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 %151, i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %147, %146, %96, %95, %61, %54, %47, %46, %23, %13
  ret i8* null
}

declare dso_local i32 @fprintf(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
