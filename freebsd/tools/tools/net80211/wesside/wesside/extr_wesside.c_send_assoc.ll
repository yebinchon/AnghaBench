; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_send_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_send_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_frame = type { i32* }

@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_ASSOC_REQ = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_PRIVACY = common dso_local global i32 0, align 4
@victim = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_assoc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca %struct.ieee80211_frame*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %8 = bitcast i8* %7 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %8, %struct.ieee80211_frame** %4, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 0, i32 128)
  %11 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %12 = call i32 @fill_basic(%struct.ieee80211_frame* %11)
  %13 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %14 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ASSOC_REQ, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %15
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %23 = bitcast %struct.ieee80211_frame* %22 to i8*
  %24 = getelementptr inbounds i8, i8* %23, i64 8
  store i8* %24, i8** %5, align 8
  %25 = load i32, i32* @IEEE80211_CAPINFO_PRIVACY, align 4
  %26 = or i32 1, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %5, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  store i8 0, i8* %31, align 1
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 4
  %34 = call i32 @strlen(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  store i8 %36, i8* %37, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @memcpy(i8* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %5, align 8
  store i8 1, i8* %47, align 1
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  store i8 4, i8* %49, align 1
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  store i8 2, i8* %51, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  store i8 4, i8* %53, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  store i8 11, i8* %55, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  store i8 22, i8* %57, align 1
  %59 = load i32, i32* %2, align 4
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @victim, i32 0, i32 0), align 4
  %62 = call i32 @strlen(i32 %61)
  %63 = sext i32 %62 to i64
  %64 = add i64 14, %63
  %65 = add i64 %64, 2
  %66 = add i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32 @send_frame(i32 %59, i8* %60, i32 %67)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_basic(%struct.ieee80211_frame*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @send_frame(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
