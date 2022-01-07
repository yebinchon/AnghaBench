; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_add_meshprep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_add_meshprep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_meshprep_ie = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IEEE80211_ELEMID_MESHPREP = common dso_local global i32 0, align 4
@IEEE80211_MESHPREP_FLAGS_AE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.ieee80211_meshprep_ie*)* @hwmp_add_meshprep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hwmp_add_meshprep(i32* %0, %struct.ieee80211_meshprep_ie* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211_meshprep_ie*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211_meshprep_ie* %1, %struct.ieee80211_meshprep_ie** %4, align 8
  %5 = load i32, i32* @IEEE80211_ELEMID_MESHPREP, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %7, i32** %3, align 8
  store i32 %5, i32* %6, align 4
  %8 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %3, align 8
  store i32 %10, i32* %11, align 4
  %13 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %3, align 8
  store i32 %15, i32* %16, align 4
  %18 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %3, align 8
  store i32 %20, i32* %21, align 4
  %23 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %3, align 8
  store i32 %25, i32* %26, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IEEE80211_ADDR_COPY(i32* %28, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  store i32* %34, i32** %3, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ADDWORD(i32* %35, i32 %38)
  %40 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_MESHPREP_FLAGS_AE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %2
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @IEEE80211_ADDR_COPY(i32* %47, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  store i32* %53, i32** %3, align 8
  br label %54

54:                                               ; preds = %46, %2
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ADDWORD(i32* %55, i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ADDWORD(i32* %60, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IEEE80211_ADDR_COPY(i32* %65, i32 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 6
  store i32* %71, i32** %3, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.ieee80211_meshprep_ie*, %struct.ieee80211_meshprep_ie** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_meshprep_ie, %struct.ieee80211_meshprep_ie* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ADDWORD(i32* %72, i32 %75)
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i32 @IEEE80211_ADDR_COPY(i32*, i32) #1

declare dso_local i32 @ADDWORD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
