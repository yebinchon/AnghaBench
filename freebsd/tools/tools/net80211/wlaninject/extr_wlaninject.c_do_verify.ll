; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_do_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlaninject/extr_wlaninject.c_do_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32 }
%struct.bpf_hdr = type { i32, i32 }
%struct.ieee80211_radiotap_header = type { i32, i32 }

@IEEE80211_RADIOTAP_FLAGS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_TSFT = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_FCS = common dso_local global i32 0, align 4
@IEEE80211_CRC_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"No mangling---got it perfect\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Got mangled:\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Position: %d Was: %.2X Got: %.2X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_verify(%struct.ieee80211_frame* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_hdr*, align 8
  %11 = alloca %struct.ieee80211_frame*, align 8
  %12 = alloca %struct.ieee80211_radiotap_header*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.bpf_hdr*
  store %struct.bpf_hdr* %19, %struct.bpf_hdr** %10, align 8
  %20 = load %struct.bpf_hdr*, %struct.bpf_hdr** %10, align 8
  %21 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.bpf_hdr*, %struct.bpf_hdr** %10, align 8
  %30 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = call i32 (...) @abort() #3
  unreachable

36:                                               ; preds = %4
  %37 = load %struct.bpf_hdr*, %struct.bpf_hdr** %10, align 8
  %38 = bitcast %struct.bpf_hdr* %37 to i8*
  %39 = load %struct.bpf_hdr*, %struct.bpf_hdr** %10, align 8
  %40 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = bitcast i8* %43 to %struct.ieee80211_radiotap_header*
  store %struct.ieee80211_radiotap_header* %44, %struct.ieee80211_radiotap_header** %12, align 8
  %45 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %46 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %55 = bitcast %struct.ieee80211_radiotap_header* %54 to i8*
  %56 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %57 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = bitcast i8* %60 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %61, %struct.ieee80211_frame** %11, align 8
  %62 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %63 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32toh(i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @IEEE80211_RADIOTAP_FLAGS, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %36
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @IEEE80211_RADIOTAP_TSFT, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %79 = bitcast %struct.ieee80211_radiotap_header* %78 to i32*
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %17, align 4
  br label %87

82:                                               ; preds = %71
  %83 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %12, align 8
  %84 = bitcast %struct.ieee80211_radiotap_header* %83 to i32*
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %82, %77
  br label %89

88:                                               ; preds = %36
  store i32 0, i32* %17, align 4
  br label %89

89:                                               ; preds = %88, %87
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @IEEE80211_RADIOTAP_F_FCS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i64, i64* @IEEE80211_CRC_LEN, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @possible_match(%struct.ieee80211_frame* %105, i32 %106, %struct.ieee80211_frame* %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %156

112:                                              ; preds = %100
  %113 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %114 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i64 @memcmp(%struct.ieee80211_frame* %113, %struct.ieee80211_frame* %114, i32 %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %156

120:                                              ; preds = %112
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %122 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %123 = bitcast %struct.ieee80211_frame* %122 to i8*
  store i8* %123, i8** %14, align 8
  %124 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %125 = bitcast %struct.ieee80211_frame* %124 to i8*
  store i8* %125, i8** %15, align 8
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %148, %120
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %126
  %131 = load i8*, i8** %14, align 8
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8*, i8** %15, align 8
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %130
  %139 = load i32, i32* %13, align 4
  %140 = load i8*, i8** %14, align 8
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8*, i8** %15, align 8
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %138, %130
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  %151 = load i8*, i8** %14, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %14, align 8
  %153 = load i8*, i8** %15, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %15, align 8
  br label %126

155:                                              ; preds = %126
  store i32 -1, i32* %5, align 4
  br label %156

156:                                              ; preds = %155, %118, %111
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @possible_match(%struct.ieee80211_frame*, i32, %struct.ieee80211_frame*, i32) #1

declare dso_local i64 @memcmp(%struct.ieee80211_frame*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
