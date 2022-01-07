; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_add_meshpreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_add_meshpreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_meshpreq_ie = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IEEE80211_ELEMID_MESHPREQ = common dso_local global i32 0, align 4
@IEEE80211_MESHPREQ_FLAGS_AE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.ieee80211_meshpreq_ie*)* @hwmp_add_meshpreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hwmp_add_meshpreq(i32* %0, %struct.ieee80211_meshpreq_ie* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211_meshpreq_ie*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211_meshpreq_ie* %1, %struct.ieee80211_meshpreq_ie** %4, align 8
  %6 = load i32, i32* @IEEE80211_ELEMID_MESHPREQ, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %3, align 8
  store i32 %6, i32* %7, align 4
  %9 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %3, align 8
  store i32 %11, i32* %12, align 4
  %14 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %3, align 8
  store i32 %16, i32* %17, align 4
  %19 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %3, align 8
  store i32 %21, i32* %22, align 4
  %24 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %3, align 8
  store i32 %26, i32* %27, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ADDWORD(i32* %29, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IEEE80211_ADDR_COPY(i32* %34, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  store i32* %40, i32** %3, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ADDWORD(i32* %41, i32 %44)
  %46 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_MESHPREQ_FLAGS_AE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %2
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @IEEE80211_ADDR_COPY(i32* %53, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  store i32* %59, i32** %3, align 8
  br label %60

60:                                               ; preds = %52, %2
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ADDWORD(i32* %61, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ADDWORD(i32* %66, i32 %69)
  %71 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %3, align 8
  store i32 %73, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %97, %60
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.ieee80211_meshpreq_ie*, %struct.ieee80211_meshpreq_ie** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_meshpreq_ie, %struct.ieee80211_meshpreq_ie* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @PREQ_TFLAGS(i32 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %3, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @PREQ_TADDR(i32 %88)
  %90 = call i32 @IEEE80211_ADDR_COPY(i32* %87, i32 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  store i32* %92, i32** %3, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @PREQ_TSEQ(i32 %94)
  %96 = call i32 @ADDWORD(i32* %93, i32 %95)
  br label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %76

100:                                              ; preds = %76
  %101 = load i32*, i32** %3, align 8
  ret i32* %101
}

declare dso_local i32 @ADDWORD(i32*, i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32*, i32) #1

declare dso_local i32 @PREQ_TFLAGS(i32) #1

declare dso_local i32 @PREQ_TADDR(i32) #1

declare dso_local i32 @PREQ_TSEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
