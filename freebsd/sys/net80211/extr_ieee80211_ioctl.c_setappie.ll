; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_setappie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_setappie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_appie = type { i32, i32 }
%struct.ieee80211req = type { i32, i32 }

@M_80211_NODE_IE = common dso_local global i32 0, align 4
@IEEE80211_MAX_APPIE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_appie**, %struct.ieee80211req*)* @setappie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setappie(%struct.ieee80211_appie** %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_appie**, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211_appie*, align 8
  %7 = alloca %struct.ieee80211_appie*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_appie** %0, %struct.ieee80211_appie*** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %9 = load %struct.ieee80211_appie**, %struct.ieee80211_appie*** %4, align 8
  %10 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %9, align 8
  store %struct.ieee80211_appie* %10, %struct.ieee80211_appie** %6, align 8
  %11 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %6, align 8
  %17 = icmp ne %struct.ieee80211_appie* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.ieee80211_appie**, %struct.ieee80211_appie*** %4, align 8
  store %struct.ieee80211_appie* null, %struct.ieee80211_appie** %19, align 8
  %20 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %6, align 8
  %21 = load i32, i32* @M_80211_NODE_IE, align 4
  %22 = call i32 @IEEE80211_FREE(%struct.ieee80211_appie* %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %15
  store i32 0, i32* %3, align 4
  br label %85

24:                                               ; preds = %2
  %25 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 2, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_MAX_APPIE, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %85

37:                                               ; preds = %29
  %38 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 8, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @M_80211_NODE_IE, align 4
  %45 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %46 = call i64 @IEEE80211_MALLOC(i32 %43, i32 %44, i32 %45)
  %47 = inttoptr i64 %46 to %struct.ieee80211_appie*
  store %struct.ieee80211_appie* %47, %struct.ieee80211_appie** %7, align 8
  %48 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %7, align 8
  %49 = icmp eq %struct.ieee80211_appie* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %3, align 4
  br label %85

52:                                               ; preds = %37
  %53 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @copyin(i32 %55, i32 %58, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %7, align 8
  %67 = load i32, i32* @M_80211_NODE_IE, align 4
  %68 = call i32 @IEEE80211_FREE(%struct.ieee80211_appie* %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %85

70:                                               ; preds = %52
  %71 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211_appie, %struct.ieee80211_appie* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %7, align 8
  %77 = load %struct.ieee80211_appie**, %struct.ieee80211_appie*** %4, align 8
  store %struct.ieee80211_appie* %76, %struct.ieee80211_appie** %77, align 8
  %78 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %6, align 8
  %79 = icmp ne %struct.ieee80211_appie* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load %struct.ieee80211_appie*, %struct.ieee80211_appie** %6, align 8
  %82 = load i32, i32* @M_80211_NODE_IE, align 4
  %83 = call i32 @IEEE80211_FREE(%struct.ieee80211_appie* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %70
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %65, %50, %35, %23
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @IEEE80211_FREE(%struct.ieee80211_appie*, i32) #1

declare dso_local i64 @IEEE80211_MALLOC(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
