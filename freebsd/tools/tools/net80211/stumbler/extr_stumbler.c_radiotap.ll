; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_radiotap.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_radiotap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_radiotap_header = type { i32, i32 }
%struct.ieee80211_frame = type { i32 }
%struct.node_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radiotap(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_radiotap_header*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.node_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 4
  store i32 %17, i32* %4, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to %struct.ieee80211_radiotap_header*
  store %struct.ieee80211_radiotap_header* %19, %struct.ieee80211_radiotap_header** %5, align 8
  %20 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %5, align 8
  %21 = bitcast %struct.ieee80211_radiotap_header* %20 to i8*
  %22 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = bitcast i8* %26 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %27, %struct.ieee80211_frame** %6, align 8
  %28 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %38 = bitcast %struct.ieee80211_frame* %37 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  store i8* %39, i8** %7, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @get_packet_info(%struct.ieee80211_frame* %44, i8* %45, i32 %46, %struct.node_info* %8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %2
  br label %145

50:                                               ; preds = %2
  %51 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %5, align 8
  %52 = bitcast %struct.ieee80211_radiotap_header* %51 to i8*
  %53 = getelementptr inbounds i8, i8* %52, i64 8
  store i8* %53, i8** %7, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 128, i32* %15, align 4
  br label %54

54:                                               ; preds = %109, %50
  %55 = load i32, i32* %15, align 4
  %56 = icmp sle i32 %55, 132
  br i1 %56, label %57, label %112

57:                                               ; preds = %54
  %58 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  br label %109

66:                                               ; preds = %57
  %67 = load i32, i32* %15, align 4
  switch i32 %67, label %108 [
    i32 128, label %68
    i32 130, label %71
    i32 129, label %71
    i32 137, label %74
    i32 131, label %77
    i32 135, label %80
    i32 136, label %86
    i32 133, label %92
    i32 134, label %99
    i32 132, label %106
  ]

68:                                               ; preds = %66
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %70, i8** %7, align 8
  br label %108

71:                                               ; preds = %66, %66
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 8
  store i8* %73, i8** %7, align 8
  br label %108

74:                                               ; preds = %66
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 8
  store i8* %76, i8** %7, align 8
  br label %108

77:                                               ; preds = %66
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  store i8* %79, i8** %7, align 8
  br label %108

80:                                               ; preds = %66
  %81 = load i8*, i8** %7, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  store i32 %83, i32* %9, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %7, align 8
  store i32 1, i32* %13, align 4
  br label %108

86:                                               ; preds = %66
  %87 = load i8*, i8** %7, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  store i32 %89, i32* %10, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %7, align 8
  br label %108

92:                                               ; preds = %66
  %93 = load i8*, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  store i8* %96, i8** %11, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %7, align 8
  br label %108

99:                                               ; preds = %66
  %100 = load i8*, i8** %7, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  store i8* %103, i8** %12, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  br label %108

106:                                              ; preds = %66
  %107 = call i32 (...) @abort() #3
  unreachable

108:                                              ; preds = %66, %99, %92, %86, %80, %77, %74, %71, %68
  br label %109

109:                                              ; preds = %108, %65
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %54

112:                                              ; preds = %54
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %116, %117
  store i32 %118, i32* %14, align 4
  br label %126

119:                                              ; preds = %112
  %120 = load i8*, i8** %11, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %119, %115
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %129, %126
  %131 = load i32, i32* %14, align 4
  %132 = getelementptr inbounds %struct.node_info, %struct.node_info* %8, i32 0, i32 0
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds %struct.node_info, %struct.node_info* %8, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp sle i32 %134, 100
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.node_info, %struct.node_info* %8, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp sge i32 %138, 0
  br label %140

140:                                              ; preds = %136, %130
  %141 = phi i1 [ false, %130 ], [ %139, %136 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = call i32 @update_node(%struct.node_info* %8)
  br label %145

145:                                              ; preds = %140, %49
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_packet_info(%struct.ieee80211_frame*, i8*, i32, %struct.node_info*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @update_node(%struct.node_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
