; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_alq.c_ieee80211_alq_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_alq.c_ieee80211_alq_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ale = type { i64 }
%struct.ieee80211_alq_rec = type { i32, i8*, i8*, i8*, i8*, i8*, i32 }

@ieee80211_alq = common dso_local global i32* null, align 8
@IEEE80211_ALQ_MAX_PAYLOAD = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_alq_log(%struct.ieee80211com* %0, %struct.ieee80211vap* %1, i64 %2, i64 %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.ieee80211vap*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ale*, align 8
  %17 = alloca %struct.ieee80211_alq_rec*, align 8
  %18 = alloca i8*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %9, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load i32*, i32** @ieee80211_alq, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %97

22:                                               ; preds = %7
  %23 = load i64, i64* %15, align 8
  %24 = load i64, i64* @IEEE80211_ALQ_MAX_PAYLOAD, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %8, align 4
  br label %97

28:                                               ; preds = %22
  %29 = load i64, i64* %15, align 8
  %30 = call %struct.ale* @ieee80211_alq_get(i64 %29)
  store %struct.ale* %30, %struct.ale** %16, align 8
  %31 = load %struct.ale*, %struct.ale** %16, align 8
  %32 = icmp ne %struct.ale* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %8, align 4
  br label %97

35:                                               ; preds = %28
  %36 = load %struct.ale*, %struct.ale** %16, align 8
  %37 = getelementptr inbounds %struct.ale, %struct.ale* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.ieee80211_alq_rec*
  store %struct.ieee80211_alq_rec* %39, %struct.ieee80211_alq_rec** %17, align 8
  %40 = load %struct.ieee80211_alq_rec*, %struct.ieee80211_alq_rec** %17, align 8
  %41 = bitcast %struct.ieee80211_alq_rec* %40 to i8*
  %42 = getelementptr inbounds i8, i8* %41, i64 56
  store i8* %42, i8** %18, align 8
  %43 = load i32, i32* @ticks, align 4
  %44 = call i32 @htobe64(i32 %43)
  %45 = load %struct.ieee80211_alq_rec*, %struct.ieee80211_alq_rec** %17, align 8
  %46 = getelementptr inbounds %struct.ieee80211_alq_rec, %struct.ieee80211_alq_rec* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %48 = icmp ne %struct.ieee80211vap* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %35
  %50 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %51 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @htobe16(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.ieee80211_alq_rec*, %struct.ieee80211_alq_rec** %17, align 8
  %58 = getelementptr inbounds %struct.ieee80211_alq_rec, %struct.ieee80211_alq_rec* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %62

59:                                               ; preds = %35
  %60 = load %struct.ieee80211_alq_rec*, %struct.ieee80211_alq_rec** %17, align 8
  %61 = getelementptr inbounds %struct.ieee80211_alq_rec, %struct.ieee80211_alq_rec* %60, i32 0, i32 0
  store i32 65535, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %49
  %63 = load i32, i32* %13, align 4
  %64 = call i8* @htobe16(i32 %63)
  %65 = load %struct.ieee80211_alq_rec*, %struct.ieee80211_alq_rec** %17, align 8
  %66 = getelementptr inbounds %struct.ieee80211_alq_rec, %struct.ieee80211_alq_rec* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i8* @htobe32(i64 %67)
  %69 = load %struct.ieee80211_alq_rec*, %struct.ieee80211_alq_rec** %17, align 8
  %70 = getelementptr inbounds %struct.ieee80211_alq_rec, %struct.ieee80211_alq_rec* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i8* @htobe32(i64 %71)
  %73 = load %struct.ieee80211_alq_rec*, %struct.ieee80211_alq_rec** %17, align 8
  %74 = getelementptr inbounds %struct.ieee80211_alq_rec, %struct.ieee80211_alq_rec* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* %15, align 8
  %76 = add i64 %75, 56
  %77 = call i8* @htobe32(i64 %76)
  %78 = load %struct.ieee80211_alq_rec*, %struct.ieee80211_alq_rec** %17, align 8
  %79 = getelementptr inbounds %struct.ieee80211_alq_rec, %struct.ieee80211_alq_rec* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @htobe32(i64 %82)
  %84 = load %struct.ieee80211_alq_rec*, %struct.ieee80211_alq_rec** %17, align 8
  %85 = getelementptr inbounds %struct.ieee80211_alq_rec, %struct.ieee80211_alq_rec* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %62
  %89 = load i8*, i8** %18, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @memcpy(i8* %89, i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %88, %62
  %94 = load i32*, i32** @ieee80211_alq, align 8
  %95 = load %struct.ale*, %struct.ale** %16, align 8
  %96 = call i32 @alq_post(i32* %94, %struct.ale* %95)
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %93, %33, %26, %21
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local %struct.ale* @ieee80211_alq_get(i64) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i8* @htobe16(i32) #1

declare dso_local i8* @htobe32(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @alq_post(i32*, %struct.ale*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
