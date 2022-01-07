; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_countryie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_countryie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i64, i32* }

@M_80211_NODE_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.ieee80211com*)* @ieee80211_add_countryie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ieee80211_add_countryie(i32* %0, %struct.ieee80211com* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ieee80211com* %1, %struct.ieee80211com** %5, align 8
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %10, %2
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @M_80211_NODE_IE, align 4
  %28 = call i32 @IEEE80211_FREE(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %31 = call i32* @ieee80211_alloc_countryie(%struct.ieee80211com* %30)
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32*, i32** %4, align 8
  store i32* %39, i32** %3, align 8
  br label %52

40:                                               ; preds = %29
  %41 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %10
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32* @add_appie(i32* %47, i32* %50)
  store i32* %51, i32** %3, align 8
  br label %52

52:                                               ; preds = %46, %38
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local i32 @IEEE80211_FREE(i32*, i32) #1

declare dso_local i32* @ieee80211_alloc_countryie(%struct.ieee80211com*) #1

declare dso_local i32* @add_appie(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
