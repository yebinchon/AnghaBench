; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_wep_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_wep_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32 }

@Z_NULL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wep_decrypt(%struct.ieee80211_frame* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %15, i64 1
  %17 = bitcast %struct.ieee80211_frame* %16 to i8*
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** @Z_NULL, align 8
  %19 = call i64 @crc32(i64 0, i8* %18, i32 0)
  store i64 %19, i64* %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 3
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 64, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @memcpy(i8* %26, i8* %27, i32 3)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 3
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @memcpy(i8* %29, i8* %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 3
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %36 = call i32 @RC4_set_key(i32* %10, i32 %34, i8* %35)
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 4
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  store i8* %44, i8** %12, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @RC4(i32* %10, i32 %45, i8* %46, i8* %47)
  %49 = load i64, i64* %13, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 4
  %53 = call i64 @crc32(i64 %49, i8* %50, i32 %52)
  store i64 %53, i64* %13, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = getelementptr inbounds i8, i8* %57, i64 -4
  %59 = bitcast i8* %58 to i64*
  store i64* %59, i64** %14, align 8
  %60 = load i64*, i64** %14, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %66

65:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i32, i32* %5, align 4
  ret i32 %67
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
