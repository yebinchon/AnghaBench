; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_get_victim_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_get_victim_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8, i8* }
%struct.ieee80211_frame = type { i8* }

@.str = private unnamed_addr constant [44 x i8] c"Warning: short packet in get_victim_ssid()\0A\00", align 1
@IEEE80211_CAPINFO_PRIVACY = common dso_local global i32 0, align 4
@victim_mac = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Warning short.asdfasdf\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Warning short....\0A\00", align 1
@victim = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Warning len of chan not 1\0A\00", align 1
@FOUND_VICTIM = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Found SSID(%s) BSS=(%s) chan=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_victim_ssid(%struct.ieee80211_frame* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ule i64 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @time_print(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %19 = bitcast %struct.ieee80211_frame* %18 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 8
  store i8* %20, i8** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @IEEE80211_BEACON_CAPABILITY(i8* %25)
  %27 = load i32, i32* @IEEE80211_CAPINFO_PRIVACY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %148

31:                                               ; preds = %17
  %32 = load i64, i64* @victim_mac, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i64, i64* @victim_mac, align 8
  %39 = call i64 @memcmp(i8* %37, i64 %38, i32 6)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %148

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %31
  store i32 12, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @time_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %118, %49
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %58, 2
  br i1 %59, label %60, label %126

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %71, 2
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = call i32 (i8*, ...) @time_print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

78:                                               ; preds = %60
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 8
  %86 = call i32 @free(i8* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i64 @malloc(i32 %89)
  %91 = inttoptr i64 %90 to i8*
  store i8* %91, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 8
  %92 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %96 = call i32 @exit(i32 1) #3
  unreachable

97:                                               ; preds = %87
  %98 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @memcpy(i8* %98, i8* %99, i32 %100)
  %102 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 0, i8* %105, align 1
  store i32 1, i32* %8, align 4
  br label %118

106:                                              ; preds = %78
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 (i8*, ...) @time_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %148

114:                                              ; preds = %109
  %115 = load i8*, i8** %6, align 8
  %116 = load i8, i8* %115, align 1
  store i8 %116, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 1), align 8
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %114, %106
  br label %118

118:                                              ; preds = %117, %97
  %119 = load i32, i32* %11, align 4
  %120 = load i8*, i8** %6, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %5, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %57

126:                                              ; preds = %57
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 2), align 8
  %134 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %135 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @memcpy(i8* %133, i8* %136, i32 6)
  %138 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 1), align 8
  %139 = call i32 @set_chan(i8 zeroext %138)
  %140 = load i32, i32* @FOUND_VICTIM, align 4
  store i32 %140, i32* @state, align 4
  %141 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 8
  %142 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 2), align 8
  %143 = call i32 @mac2str(i8* %142)
  %144 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 1), align 8
  %145 = zext i8 %144 to i32
  %146 = call i32 (i8*, ...) @time_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %141, i32 %143, i32 %145)
  store i32 1, i32* %3, align 4
  br label %148

147:                                              ; preds = %129, %126
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %132, %112, %76, %47, %41, %30, %15
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @time_print(i8*, ...) #1

declare dso_local i32 @IEEE80211_BEACON_CAPABILITY(i8*) #1

declare dso_local i64 @memcmp(i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @set_chan(i8 zeroext) #1

declare dso_local i32 @mac2str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
