; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_set_mcsset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_set_mcsset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ic_rxstream %d out of range\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ic_txstream %d out of range\00", align 1
@IEEE80211_HTCAP_CHWIDTH40 = common dso_local global i32 0, align 4
@IEEE80211_HTC_RXMCS32 = common dso_local global i32 0, align 4
@IEEE80211_HTC_RXUNEQUAL = common dso_local global i32 0, align 4
@IEEE80211_HTC_TXUNEQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32*)* @ieee80211_set_mcsset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_set_mcsset(%struct.ieee80211com* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %14, 4
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ false, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %18, i8* %23)
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %16
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %32, 4
  br label %34

34:                                               ; preds = %29, %16
  %35 = phi i1 [ false, %16 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @KASSERT(i32 %36, i8* %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %54, %34
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @setbit(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %43

57:                                               ; preds = %43
  %58 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %59 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IEEE80211_HTC_RXMCS32, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @setbit(i32* %72, i32 32)
  br label %74

74:                                               ; preds = %71, %64, %57
  %75 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_HTC_RXUNEQUAL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %133

81:                                               ; preds = %74
  %82 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %83 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 2
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  store i32 33, i32* %5, align 4
  br label %87

87:                                               ; preds = %94, %86
  %88 = load i32, i32* %5, align 4
  %89 = icmp sle i32 %88, 38
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @setbit(i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %87

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %81
  %99 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %101, 3
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  store i32 39, i32* %5, align 4
  br label %104

104:                                              ; preds = %111, %103
  %105 = load i32, i32* %5, align 4
  %106 = icmp sle i32 %105, 52
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @setbit(i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %104

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %98
  %116 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %117 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 4
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  store i32 53, i32* %5, align 4
  br label %121

121:                                              ; preds = %128, %120
  %122 = load i32, i32* %5, align 4
  %123 = icmp sle i32 %122, 76
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @setbit(i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %121

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %115
  br label %133

133:                                              ; preds = %132, %74
  %134 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %135 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %138 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %136, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %133
  store i32 1, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, 2
  store i32 %143, i32* %6, align 4
  %144 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %145 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  %148 = shl i32 %147, 2
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %6, align 4
  %151 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %152 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @IEEE80211_HTC_TXUNEQUAL, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %141
  %158 = load i32, i32* %6, align 4
  %159 = or i32 %158, 22
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %157, %141
  br label %162

161:                                              ; preds = %133
  store i32 0, i32* %6, align 4
  br label %162

162:                                              ; preds = %161, %160
  %163 = load i32, i32* %6, align 4
  %164 = load i32*, i32** %4, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 12
  store i32 %163, i32* %165, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @setbit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
