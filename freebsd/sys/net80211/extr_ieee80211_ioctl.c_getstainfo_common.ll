; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_getstainfo_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_getstainfo_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }
%struct.ieee80211req = type { i64, i64 }
%struct.ieee80211_node = type { i32 }
%struct.stainforeq = type { i64, i8* }

@M_TEMP = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@IEEE80211_M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*, %struct.ieee80211_node*, i64)* @getstainfo_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getstainfo_common(%struct.ieee80211vap* %0, %struct.ieee80211req* %1, %struct.ieee80211_node* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211req*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.stainforeq, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %6, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 0
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %15, align 8
  store %struct.ieee80211com* %16, %struct.ieee80211com** %9, align 8
  store i32 0, i32* %13, align 4
  %17 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %10, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %19 = icmp eq %struct.ieee80211_node* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 0
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %24 = call i32 @ieee80211_iterate_nodes_vap(i32* %22, %struct.ieee80211vap* %23, i32 (%struct.stainforeq*, %struct.ieee80211_node*)* @get_sta_space, %struct.stainforeq* %10)
  br label %28

25:                                               ; preds = %4
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %27 = call i32 @get_sta_space(%struct.stainforeq* %10, %struct.ieee80211_node* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %10, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %10, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %35, %28
  %41 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %10, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %91

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %10, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* @M_TEMP, align 4
  %49 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %50 = load i32, i32* @IEEE80211_M_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @IEEE80211_MALLOC(i64 %47, i32 %48, i32 %51)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %13, align 4
  br label %95

57:                                               ; preds = %44
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %10, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %61 = icmp eq %struct.ieee80211_node* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %63, i32 0, i32 0
  %65 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %66 = call i32 @ieee80211_iterate_nodes_vap(i32* %64, %struct.ieee80211vap* %65, i32 (%struct.stainforeq*, %struct.ieee80211_node*)* @get_sta_info, %struct.stainforeq* %10)
  br label %70

67:                                               ; preds = %57
  %68 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %69 = call i32 @get_sta_info(%struct.stainforeq* %10, %struct.ieee80211_node* %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %10, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %71, %73
  %75 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %79 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @copyout(i8* %77, i32* %83, i64 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* @M_TEMP, align 4
  %90 = call i32 @IEEE80211_FREE(i8* %88, i32 %89)
  br label %94

91:                                               ; preds = %40
  %92 = load %struct.ieee80211req*, %struct.ieee80211req** %6, align 8
  %93 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %91, %70
  br label %95

95:                                               ; preds = %94, %55
  %96 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %97 = icmp ne %struct.ieee80211_node* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %100 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %13, align 4
  ret i32 %102
}

declare dso_local i32 @ieee80211_iterate_nodes_vap(i32*, %struct.ieee80211vap*, i32 (%struct.stainforeq*, %struct.ieee80211_node*)*, %struct.stainforeq*) #1

declare dso_local i32 @get_sta_space(%struct.stainforeq*, %struct.ieee80211_node*) #1

declare dso_local i8* @IEEE80211_MALLOC(i64, i32, i32) #1

declare dso_local i32 @get_sta_info(%struct.stainforeq*, %struct.ieee80211_node*) #1

declare dso_local i32 @copyout(i8*, i32*, i64) #1

declare dso_local i32 @IEEE80211_FREE(i8*, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
