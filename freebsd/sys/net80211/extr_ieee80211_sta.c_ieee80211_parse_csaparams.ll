; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_ieee80211_parse_csaparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_ieee80211_parse_csaparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211com* }
%struct.ieee80211com = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_frame = type { i32 }
%struct.ieee80211_csa_ie = type { i32, i32, i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"state %s\00", align 1
@ieee80211_state_name = common dso_local global i32* null, align 8
@IEEE80211_MSG_ELEMID = common dso_local global i32 0, align 4
@IEEE80211_MSG_DOTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"CSA\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"invalid mode %u\00", align 1
@IEEE80211_F_CSAPENDING = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ALLTURBO = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid channel %u\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"CSA ie mismatch, initial ie <%d,%d,%d>, this ie <%d,%d,%d>\00", align 1
@IEEE80211_CSA_COUNT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, i32*, %struct.ieee80211_frame*)* @ieee80211_parse_csaparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_parse_csaparams(%struct.ieee80211vap* %0, i32* %1, %struct.ieee80211_frame* %2) #0 {
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.ieee80211_csa_ie*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_frame* %2, %struct.ieee80211_frame** %6, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.ieee80211_csa_ie*
  store %struct.ieee80211_csa_ie* %14, %struct.ieee80211_csa_ie** %8, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IEEE80211_S_RUN, align 8
  %19 = icmp uge i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32*, i32** @ieee80211_state_name, align 8
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %20, i8* %28)
  %30 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %31 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %3
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %36 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %37 = load i32, i32* @IEEE80211_MSG_DOTH, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %40 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %35, i32 %38, %struct.ieee80211_frame* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %175

44:                                               ; preds = %3
  %45 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %46 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %45)
  %47 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %48 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IEEE80211_F_CSAPENDING, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %104

53:                                               ; preds = %44
  %54 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %55 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE80211_CHAN_ALLTURBO, align 4
  %64 = and i32 %62, %63
  %65 = call %struct.ieee80211_channel* @ieee80211_find_channel_byieee(%struct.ieee80211com* %54, i32 %57, i32 %64)
  store %struct.ieee80211_channel* %65, %struct.ieee80211_channel** %9, align 8
  %66 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %67 = icmp eq %struct.ieee80211_channel* %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %53
  %69 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %70 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_CHAN_ALL, align 4
  %79 = and i32 %77, %78
  %80 = call %struct.ieee80211_channel* @ieee80211_find_channel_byieee(%struct.ieee80211com* %69, i32 %72, i32 %79)
  store %struct.ieee80211_channel* %80, %struct.ieee80211_channel** %9, align 8
  %81 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %82 = icmp eq %struct.ieee80211_channel* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %68
  %84 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %85 = load i32, i32* @IEEE80211_MSG_ELEMID, align 4
  %86 = load i32, i32* @IEEE80211_MSG_DOTH, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %89 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %90 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) @IEEE80211_DISCARD_IE(%struct.ieee80211vap* %84, i32 %87, %struct.ieee80211_frame* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %172

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %53
  %95 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %96 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %97 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %101 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ieee80211_csa_startswitch(%struct.ieee80211com* %95, %struct.ieee80211_channel* %96, i32 %99, i32 %102)
  br label %171

104:                                              ; preds = %44
  %105 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %106 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %109 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %104
  %113 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %117 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %112
  %121 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %122 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %125 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %126 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %124, i32 %127)
  %129 = icmp eq i32 %123, %128
  br i1 %129, label %155, label %130

130:                                              ; preds = %120, %112, %104
  %131 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %132 = load i32, i32* @IEEE80211_MSG_DOTH, align 4
  %133 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %134 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %135 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %138 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %141 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %144 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %147 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %150 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @IEEE80211_NOTE_FRAME(%struct.ieee80211vap* %131, i32 %132, %struct.ieee80211_frame* %133, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %136, i32 %139, i32 %142, i32 %145, i32 %148, i32 %151)
  %153 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %154 = call i32 @ieee80211_csa_cancelswitch(%struct.ieee80211com* %153)
  br label %170

155:                                              ; preds = %120
  %156 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %157 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp sle i32 %158, 1
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %162 = call i32 @ieee80211_csa_completeswitch(%struct.ieee80211com* %161)
  br label %169

163:                                              ; preds = %155
  %164 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %8, align 8
  %165 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %168 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %163, %160
  br label %170

170:                                              ; preds = %169, %130
  br label %171

171:                                              ; preds = %170, %94
  br label %172

172:                                              ; preds = %171, %83
  %173 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %174 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %173)
  br label %175

175:                                              ; preds = %172, %34
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_DISCARD_IE(%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i8*, i32, ...) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_find_channel_byieee(%struct.ieee80211com*, i32, i32) #1

declare dso_local i32 @ieee80211_csa_startswitch(%struct.ieee80211com*, %struct.ieee80211_channel*, i32, i32) #1

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, i32) #1

declare dso_local i32 @IEEE80211_NOTE_FRAME(%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ieee80211_csa_cancelswitch(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_csa_completeswitch(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
