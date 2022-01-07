; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_ieee80211_node_psq_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_ieee80211_node_psq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }
%struct.ieee80211_node = type { %struct.ieee80211_psq }
%struct.ieee80211_psq = type { i32, %struct.ieee80211_psq_head* }
%struct.ieee80211_psq_head = type { i64, i32*, %struct.mbuf* }

@.str = private unnamed_addr constant [13 x i8] c"qhead len %d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"psq len %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @ieee80211_node_psq_dequeue(%struct.ieee80211_node* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211_psq*, align 8
  %6 = alloca %struct.ieee80211_psq_head*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 0
  store %struct.ieee80211_psq* %9, %struct.ieee80211_psq** %5, align 8
  %10 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %5, align 8
  %11 = call i32 @IEEE80211_PSQ_LOCK(%struct.ieee80211_psq* %10)
  %12 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %12, i32 0, i32 1
  %14 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %13, align 8
  %15 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %14, i64 0
  store %struct.ieee80211_psq_head* %15, %struct.ieee80211_psq_head** %6, align 8
  br label %16

16:                                               ; preds = %73, %2
  %17 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %17, i32 0, i32 2
  %19 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  store %struct.mbuf* %19, %struct.mbuf** %7, align 8
  %20 = icmp ne %struct.mbuf* %19, null
  br i1 %20, label %21, label %63

21:                                               ; preds = %16
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %25 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %25, i32 0, i32 2
  store %struct.mbuf* %24, %struct.mbuf** %26, align 8
  %27 = icmp eq %struct.mbuf* %24, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %36, i8* %40)
  %42 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @KASSERT(i32 %50, i8* %55)
  %57 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %62, align 8
  br label %63

63:                                               ; preds = %31, %16
  %64 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %65 = icmp eq %struct.mbuf* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %6, align 8
  %68 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %68, i32 0, i32 1
  %70 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %69, align 8
  %71 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %70, i64 0
  %72 = icmp eq %struct.ieee80211_psq_head* %67, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %5, align 8
  %75 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %74, i32 0, i32 1
  %76 = load %struct.ieee80211_psq_head*, %struct.ieee80211_psq_head** %75, align 8
  %77 = getelementptr inbounds %struct.ieee80211_psq_head, %struct.ieee80211_psq_head* %76, i64 1
  store %struct.ieee80211_psq_head* %77, %struct.ieee80211_psq_head** %6, align 8
  br label %16

78:                                               ; preds = %66, %63
  %79 = load i32*, i32** %4, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %5, align 8
  %83 = getelementptr inbounds %struct.ieee80211_psq, %struct.ieee80211_psq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %4, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %78
  %87 = load %struct.ieee80211_psq*, %struct.ieee80211_psq** %5, align 8
  %88 = call i32 @IEEE80211_PSQ_UNLOCK(%struct.ieee80211_psq* %87)
  %89 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  ret %struct.mbuf* %89
}

declare dso_local i32 @IEEE80211_PSQ_LOCK(%struct.ieee80211_psq*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_PSQ_UNLOCK(%struct.ieee80211_psq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
