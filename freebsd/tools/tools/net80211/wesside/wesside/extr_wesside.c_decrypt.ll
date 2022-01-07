; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i64, i64, i64 }
%struct.TYPE_7__ = type { i64*, i32 }
%struct.TYPE_8__ = type { i32 }

@decryptstate = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@MCAST_PREF = common dso_local global i32 0, align 4
@txstate = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decrypt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 1, i32 1), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = call i32 @prepare_fragstate(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 1), i32 0)
  %8 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 1, i32 0, i32 0), align 8
  %9 = load i32, i32* @MCAST_PREF, align 4
  %10 = call i32 @memcpy(i64* %8, i32 %9, i32 5)
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 0, i32 0), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 0, i32 1), align 8
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 1, i32 0, i32 0), align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 5
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 0, i32 1), align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 0, i32 1), align 8
  br label %21

21:                                               ; preds = %6, %1
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 1, i32 3), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 0, i32 0), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 0, i32 1), align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 0, i32 0), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 0, i32 1), align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 1, i32 0, i32 0), align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 5
  store i64 %37, i64* %39, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 1, i32 3), align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 1, i32 1), align 8
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 1, i32 2), align 8
  store i16* bitcast (i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 1, i32 0, i32 1) to i16*), i16** %3, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @txstate, i32 0, i32 0), align 4
  %42 = call zeroext i16 @fnseq(i32 0, i32 %41)
  %43 = load i16*, i16** %3, align 8
  store i16 %42, i16* %43, align 2
  br label %44

44:                                               ; preds = %24, %21
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @send_fragment(i32 %45, %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 1), %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @decryptstate, i32 0, i32 0))
  ret void
}

declare dso_local i32 @prepare_fragstate(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local zeroext i16 @fnseq(i32, i32) #1

declare dso_local i32 @send_fragment(i32, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
