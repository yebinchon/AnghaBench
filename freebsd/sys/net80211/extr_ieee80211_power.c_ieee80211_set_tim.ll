; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_ieee80211_set_tim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_ieee80211_set_tim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211com*, %struct.ieee80211vap* }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i64, i64, i32 (%struct.ieee80211vap*, i32)*, i32, i32 }

@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"operating mode %u\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"bogus aid %u, max %u\00", align 1
@IEEE80211_BEACON_TIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, i32)* @ieee80211_set_tim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_tim(%struct.ieee80211_node* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 2
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  store %struct.ieee80211vap* %11, %struct.ieee80211vap** %5, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 1
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %13, align 8
  store %struct.ieee80211com* %14, %struct.ieee80211com** %6, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %2
  %27 = phi i1 [ true, %2 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %28, i8* %32)
  %34 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IEEE80211_AID(i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @KASSERT(i32 %43, i8* %48)
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %51 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %50)
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @isset(i32 %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = icmp ne i32 %52, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %26
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @setbit(i32 %70, i64 %71)
  %73 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %87

77:                                               ; preds = %64
  %78 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @clrbit(i32 %80, i64 %81)
  %83 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %77, %67
  %88 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %89 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %88, i32 0, i32 2
  %90 = load i32 (%struct.ieee80211vap*, i32)*, i32 (%struct.ieee80211vap*, i32)** %89, align 8
  %91 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %92 = load i32, i32* @IEEE80211_BEACON_TIM, align 4
  %93 = call i32 %90(%struct.ieee80211vap* %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %26
  %95 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %96 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %95)
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @IEEE80211_AID(i32) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i64 @isset(i32, i64) #1

declare dso_local i32 @setbit(i32, i64) #1

declare dso_local i32 @clrbit(i32, i64) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
