; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_quiet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_quiet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_quiet_ie = type { i32, i32, i8*, i8*, i32, i32 }

@IEEE80211_ELEMID_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.ieee80211vap*, i32)* @ieee80211_add_quiet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ieee80211_add_quiet(i32* %0, %struct.ieee80211vap* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_quiet_ie*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.ieee80211_quiet_ie*
  store %struct.ieee80211_quiet_ie* %9, %struct.ieee80211_quiet_ie** %7, align 8
  %10 = load i32, i32* @IEEE80211_ELEMID_QUIET, align 4
  %11 = load %struct.ieee80211_quiet_ie*, %struct.ieee80211_quiet_ie** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_quiet_ie, %struct.ieee80211_quiet_ie* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ieee80211_quiet_ie*, %struct.ieee80211_quiet_ie** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_quiet_ie, %struct.ieee80211_quiet_ie* %13, i32 0, i32 0
  store i32 6, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %3
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %39

28:                                               ; preds = %17
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %22
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ieee80211_quiet_ie*, %struct.ieee80211_quiet_ie** %7, align 8
  %53 = getelementptr inbounds %struct.ieee80211_quiet_ie, %struct.ieee80211_quiet_ie* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211_quiet_ie*, %struct.ieee80211_quiet_ie** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_quiet_ie, %struct.ieee80211_quiet_ie* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @htole16(i32 %61)
  %63 = load %struct.ieee80211_quiet_ie*, %struct.ieee80211_quiet_ie** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_quiet_ie, %struct.ieee80211_quiet_ie* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @htole16(i32 %67)
  %69 = load %struct.ieee80211_quiet_ie*, %struct.ieee80211_quiet_ie** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_quiet_ie, %struct.ieee80211_quiet_ie* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 32
  ret i32* %72
}

declare dso_local i8* @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
