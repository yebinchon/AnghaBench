; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_ies_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_ies_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ies = type { i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ies_expand(%struct.ieee80211_ies* %0) #0 {
  %2 = alloca %struct.ieee80211_ies*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_ies* %0, %struct.ieee80211_ies** %2, align 8
  %5 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %68, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %82

14:                                               ; preds = %11
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %68 [
    i32 131, label %18
    i32 132, label %36
    i32 135, label %40
    i32 134, label %44
    i32 130, label %48
    i32 129, label %52
    i32 128, label %56
    i32 136, label %60
    i32 137, label %64
  ]

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @iswpaoui(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  br label %35

26:                                               ; preds = %18
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @iswmeoui(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %22
  br label %68

36:                                               ; preds = %14
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %38, i32 0, i32 6
  store i32* %37, i32** %39, align 8
  br label %68

40:                                               ; preds = %14
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %42, i32 0, i32 7
  store i32* %41, i32** %43, align 8
  br label %68

44:                                               ; preds = %14
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %47 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %46, i32 0, i32 8
  store i32* %45, i32** %47, align 8
  br label %68

48:                                               ; preds = %14
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %50, i32 0, i32 10
  store i32* %49, i32** %51, align 8
  br label %68

52:                                               ; preds = %14
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %54, i32 0, i32 11
  store i32* %53, i32** %55, align 8
  br label %68

56:                                               ; preds = %14
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %59 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %58, i32 0, i32 12
  store i32* %57, i32** %59, align 8
  br label %68

60:                                               ; preds = %14
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %63 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %62, i32 0, i32 13
  store i32* %61, i32** %63, align 8
  br label %68

64:                                               ; preds = %14
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.ieee80211_ies*, %struct.ieee80211_ies** %2, align 8
  %67 = getelementptr inbounds %struct.ieee80211_ies, %struct.ieee80211_ies* %66, i32 0, i32 14
  store i32* %65, i32** %67, align 8
  br label %68

68:                                               ; preds = %14, %64, %60, %56, %52, %48, %44, %40, %36, %35
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 2, %71
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 2, %77
  %79 = load i32*, i32** %3, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %3, align 8
  br label %11

82:                                               ; preds = %11
  ret void
}

declare dso_local i32 @iswpaoui(i32*) #1

declare dso_local i32 @iswmeoui(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
