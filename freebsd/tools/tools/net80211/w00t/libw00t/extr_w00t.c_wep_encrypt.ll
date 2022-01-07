; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_wep_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_wep_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32 }

@Z_NULL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wep_encrypt(%struct.ieee80211_frame* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %14, i64 1
  %16 = bitcast %struct.ieee80211_frame* %15 to i8*
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** @Z_NULL, align 8
  %18 = call i64 @crc32(i64 0, i8* %17, i32 0)
  store i64 %18, i64* %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = icmp uge i64 64, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @memcpy(i8* %25, i8* %26, i32 3)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 3
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @memcpy(i8* %28, i8* %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 3
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %35 = call i32 @RC4_set_key(i32* %9, i32 %33, i8* %34)
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8* %41, i8** %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 4
  %46 = call i64 @crc32(i64 %42, i8* %43, i32 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 -4
  %52 = bitcast i8* %51 to i64*
  store i64* %52, i64** %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64*, i64** %13, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @RC4(i32* %9, i32 %55, i8* %56, i8* %57)
  ret void
}

declare dso_local i64 @crc32(i64, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @RC4_set_key(i32*, i32, i8*) #1

declare dso_local i32 @RC4(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
