; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_anal.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_anal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_frame = type { i32*, i32, i32, i64 }

@anal.lastseq = internal global i32 -1, align 4
@.str = private unnamed_addr constant [7 x i8] c"rd=%d\0A\00", align 1
@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_MASK = common dso_local global i32 0, align 4
@state = common dso_local global i64 0, align 8
@FOUND_VICTIM = common dso_local global i64 0, align 8
@mymac = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_SEQ_SEQ_MASK = common dso_local global i16 0, align 2
@IEEE80211_SEQ_SEQ_SHIFT = common dso_local global i16 0, align 2
@IEEE80211_FC1_RETRY = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@FIND_VICTIM = common dso_local global i64 0, align 8
@IEEE80211_FC0_SUBTYPE_BEACON = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_PROBE_RESP = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@victim = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IEEE80211_FC1_DIR_FROMDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @anal(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %14, %struct.ieee80211_frame** %7, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @time_print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* @state, align 8
  %37 = load i64, i64* @FOUND_VICTIM, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %21
  %40 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @mymac, align 4
  %44 = call i64 @memcmp(i32 %42, i32 %43, i32 6)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  store i32 1, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @send_ack(i32 %51)
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i16*
  store i16* %59, i16** %11, align 8
  %60 = load i16*, i16** %11, align 8
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* @IEEE80211_SEQ_SEQ_MASK, align 2
  %64 = zext i16 %63 to i32
  %65 = and i32 %62, %64
  %66 = load i16, i16* @IEEE80211_SEQ_SEQ_SHIFT, align 2
  %67 = zext i16 %66 to i32
  %68 = ashr i32 %65, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @anal.lastseq, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %55
  %73 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_FC1_RETRY, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @IEEE80211_FC0_TYPE_CTL, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %160

86:                                               ; preds = %81, %72, %55
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* @anal.lastseq, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %86
  %92 = load i64, i64* @state, align 8
  %93 = load i64, i64* @FIND_VICTIM, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @IEEE80211_FC0_SUBTYPE_BEACON, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @IEEE80211_FC0_SUBTYPE_PROBE_RESP, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %99, %95
  %104 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i64 @get_victim_ssid(%struct.ieee80211_frame* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %160

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %99
  br label %111

111:                                              ; preds = %110, %91
  br label %112

112:                                              ; preds = %111, %86
  %113 = load i64, i64* @state, align 8
  %114 = load i64, i64* @FOUND_VICTIM, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %160

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @stuff_for_us(%struct.ieee80211_frame* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %123
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 4
  %134 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %135 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @memcmp(i32 %133, i32 %136, i32 6)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %132, %123
  %140 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %141 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IEEE80211_FC1_DIR_FROMDS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %139
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 4
  %150 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %151 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @memcmp(i32 %149, i32 %152, i32 6)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148, %132
  %156 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @stuff_for_net(%struct.ieee80211_frame* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %148, %139
  br label %160

160:                                              ; preds = %85, %108, %159, %112
  ret void
}

declare dso_local i32 @time_print(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @send_ack(i32) #1

declare dso_local i64 @get_victim_ssid(%struct.ieee80211_frame*, i32) #1

declare dso_local i32 @stuff_for_us(%struct.ieee80211_frame*, i32) #1

declare dso_local i32 @stuff_for_net(%struct.ieee80211_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
