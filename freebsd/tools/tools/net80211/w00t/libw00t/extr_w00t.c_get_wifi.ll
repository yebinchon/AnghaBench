; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_get_wifi.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_get_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_hdr = type { i32, i32 }
%struct.ieee80211_radiotap_header = type { i32, i32 }

@IEEE80211_RADIOTAP_FLAGS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_TSFT = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_FCS = common dso_local global i32 0, align 4
@IEEE80211_CRC_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_wifi(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bpf_hdr*, align 8
  %6 = alloca %struct.ieee80211_radiotap_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.bpf_hdr*
  store %struct.bpf_hdr* %11, %struct.bpf_hdr** %5, align 8
  %12 = load %struct.bpf_hdr*, %struct.bpf_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = load %struct.bpf_hdr*, %struct.bpf_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.bpf_hdr*, %struct.bpf_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.bpf_hdr*, %struct.bpf_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %24, %2
  %38 = load %struct.bpf_hdr*, %struct.bpf_hdr** %5, align 8
  %39 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.bpf_hdr*, %struct.bpf_hdr** %5, align 8
  %47 = bitcast %struct.bpf_hdr* %46 to i8*
  %48 = load %struct.bpf_hdr*, %struct.bpf_hdr** %5, align 8
  %49 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = bitcast i8* %52 to %struct.ieee80211_radiotap_header*
  store %struct.ieee80211_radiotap_header* %53, %struct.ieee80211_radiotap_header** %6, align 8
  %54 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32toh(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @IEEE80211_RADIOTAP_FLAGS, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %37
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @IEEE80211_RADIOTAP_TSFT, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %71 = bitcast %struct.ieee80211_radiotap_header* %70 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  br label %79

74:                                               ; preds = %63
  %75 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %76 = bitcast %struct.ieee80211_radiotap_header* %75 to i32*
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %74, %69
  br label %81

80:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @IEEE80211_RADIOTAP_F_FCS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %81
  %93 = load i64, i64* @IEEE80211_CRC_LEN, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %96, %93
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  br label %99

99:                                               ; preds = %92, %81
  %100 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %101 = bitcast %struct.ieee80211_radiotap_header* %100 to i8*
  %102 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %103 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  store i8* %106, i8** %9, align 8
  %107 = load i8*, i8** %9, align 8
  ret i8* %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
