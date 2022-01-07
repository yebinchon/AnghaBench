; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_send_arp.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_send_arp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32*, i8* }

@send_arp.arp_pkt = internal global [128 x i8] zeroinitializer, align 16
@IEEE80211_FC0_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_TODS = common dso_local global i32 0, align 4
@ETHERTYPE_ARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_arp(i32 %0, i16 zeroext %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ieee80211_frame*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i16 %1, i16* %8, align 2
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = call i32 @memset(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @send_arp.arp_pkt, i64 0, i64 0), i32 0, i32 128)
  store %struct.ieee80211_frame* bitcast ([128 x i8]* @send_arp.arp_pkt to %struct.ieee80211_frame*), %struct.ieee80211_frame** %15, align 8
  %18 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %15, align 8
  %19 = call i32 @fill_basic(%struct.ieee80211_frame* %18)
  %20 = load i32, i32* @IEEE80211_FC0_TYPE_DATA, align 4
  %21 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %15, align 8
  %22 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %20
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %28 = load i32, i32* @IEEE80211_FC1_DIR_TODS, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %15, align 8
  %31 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 4
  %36 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %15, align 8
  %37 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @memset(i8* %38, i32 255, i32 6)
  %40 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %15, align 8
  %41 = bitcast %struct.ieee80211_frame* %40 to i8*
  %42 = getelementptr inbounds i8, i8* %41, i64 16
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* @ETHERTYPE_ARP, align 4
  %48 = call i32 @do_llc(i8* %46, i32 %47)
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  store i8* %50, i8** %14, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i16, i16* %8, align 2
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @do_arp(i8* %51, i16 zeroext %52, i8* %53, i8* %54, i8* %55, i8* %56)
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @wepify(i8* %58, i32 36)
  store i32 60, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 128
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @send_frame(i32 %65, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @send_arp.arp_pkt, i64 0, i64 0), i32 %66)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_basic(%struct.ieee80211_frame*) #1

declare dso_local i32 @do_llc(i8*, i32) #1

declare dso_local i32 @do_arp(i8*, i16 zeroext, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @wepify(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @send_frame(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
