; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_reset_bss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_reset_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211_node*, %struct.ieee80211com* }
%struct.ieee80211_node = type { i32, i32 }
%struct.ieee80211com = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"unable to setup initial BSS node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_reset_bss(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %6, i32 0, i32 2
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  store %struct.ieee80211com* %8, %struct.ieee80211com** %3, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 1
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %12 = call i32 @ieee80211_node_table_reset(i32* %10, %struct.ieee80211vap* %11)
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %14 = call i32 @ieee80211_reset_erp(%struct.ieee80211com* %13)
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 1
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.ieee80211_node* @ieee80211_alloc_node(i32* %16, %struct.ieee80211vap* %17, i32 %20)
  store %struct.ieee80211_node* %21, %struct.ieee80211_node** %4, align 8
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %23 = icmp ne %struct.ieee80211_node* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %26, i32 0, i32 1
  %28 = load %struct.ieee80211_node*, %struct.ieee80211_node** %27, align 8
  store %struct.ieee80211_node* %28, %struct.ieee80211_node** %5, align 8
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %30 = call %struct.ieee80211_node* @ieee80211_ref_node(%struct.ieee80211_node* %29)
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %31, i32 0, i32 1
  store %struct.ieee80211_node* %30, %struct.ieee80211_node** %32, align 8
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %34 = icmp ne %struct.ieee80211_node* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %1
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %38 = call i32 @copy_bss(%struct.ieee80211_node* %36, %struct.ieee80211_node* %37)
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %45 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %44)
  br label %54

46:                                               ; preds = %1
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @IEEE80211_ADDR_COPY(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %46, %35
  ret void
}

declare dso_local i32 @ieee80211_node_table_reset(i32*, %struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_reset_erp(%struct.ieee80211com*) #1

declare dso_local %struct.ieee80211_node* @ieee80211_alloc_node(i32*, %struct.ieee80211vap*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(%struct.ieee80211_node*) #1

declare dso_local i32 @copy_bss(%struct.ieee80211_node*, %struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
