; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_add_meshperr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_add_meshperr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_meshperr_ie = type { i32, i32, i32 }

@IEEE80211_ELEMID_MESHPERR = common dso_local global i32 0, align 4
@IEEE80211_MESHPERR_FLAGS_AE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.ieee80211_meshperr_ie*)* @hwmp_add_meshperr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hwmp_add_meshperr(i32* %0, %struct.ieee80211_meshperr_ie* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211_meshperr_ie*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211_meshperr_ie* %1, %struct.ieee80211_meshperr_ie** %4, align 8
  %6 = load i32, i32* @IEEE80211_ELEMID_MESHPERR, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %3, align 8
  store i32 %6, i32* %7, align 4
  %9 = load %struct.ieee80211_meshperr_ie*, %struct.ieee80211_meshperr_ie** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_meshperr_ie, %struct.ieee80211_meshperr_ie* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %3, align 8
  store i32 %11, i32* %12, align 4
  %14 = load %struct.ieee80211_meshperr_ie*, %struct.ieee80211_meshperr_ie** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_meshperr_ie, %struct.ieee80211_meshperr_ie* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %3, align 8
  store i32 %16, i32* %17, align 4
  %19 = load %struct.ieee80211_meshperr_ie*, %struct.ieee80211_meshperr_ie** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_meshperr_ie, %struct.ieee80211_meshperr_ie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %3, align 8
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %62, %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ieee80211_meshperr_ie*, %struct.ieee80211_meshperr_ie** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_meshperr_ie, %struct.ieee80211_meshperr_ie* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @PERR_DFLAGS(i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %3, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @PERR_DADDR(i32 %36)
  %38 = call i32 @IEEE80211_ADDR_COPY(i32* %35, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  store i32* %40, i32** %3, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @PERR_DSEQ(i32 %42)
  %44 = call i32 @ADDWORD(i32* %41, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @PERR_DFLAGS(i32 %45)
  %47 = load i32, i32* @IEEE80211_MESHPERR_FLAGS_AE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %30
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @PERR_EXTADDR(i32 %52)
  %54 = call i32 @IEEE80211_ADDR_COPY(i32* %51, i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  store i32* %56, i32** %3, align 8
  br label %57

57:                                               ; preds = %50, %30
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @PERR_DRCODE(i32 %59)
  %61 = call i32 @ADDSHORT(i32* %58, i32 %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %24

65:                                               ; preds = %24
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
}

declare dso_local i32 @PERR_DFLAGS(i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32*, i32) #1

declare dso_local i32 @PERR_DADDR(i32) #1

declare dso_local i32 @ADDWORD(i32*, i32) #1

declare dso_local i32 @PERR_DSEQ(i32) #1

declare dso_local i32 @PERR_EXTADDR(i32) #1

declare dso_local i32 @ADDSHORT(i32*, i32) #1

declare dso_local i32 @PERR_DRCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
