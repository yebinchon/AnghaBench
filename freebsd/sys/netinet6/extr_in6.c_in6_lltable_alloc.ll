; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltable_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltable_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32, i32, i32 }
%struct.lltable = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { i32 }

@LLE_MAX_LINKHDR = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"sin_family %d\00", align 1
@LLE_IFADDR = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"lla_lookup: new lle malloc failed\0A\00", align 1
@net_epoch_preempt = common dso_local global i32 0, align 4
@in6_lltable_destroy_lle_unlocked = common dso_local global i32 0, align 4
@LLE_STATIC = common dso_local global i32 0, align 4
@ND6_LLINFO_REACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llentry* (%struct.lltable*, i32, %struct.sockaddr*)* @in6_lltable_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llentry* @in6_lltable_alloc(%struct.lltable* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.llentry*, align 8
  %5 = alloca %struct.lltable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.llentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lltable* %0, %struct.lltable** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %17, %struct.sockaddr_in6** %8, align 8
  %18 = load %struct.lltable*, %struct.lltable** %5, align 8
  %19 = getelementptr inbounds %struct.lltable, %struct.lltable* %18, i32 0, i32 0
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %9, align 8
  %21 = load i32, i32* @LLE_MAX_LINKHDR, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET6, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %30, i8* %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @LLE_IFADDR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %3
  %41 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %44 = call i64 @in6_lltable_rtcheck(%struct.ifnet* %41, i32 %42, %struct.sockaddr* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store %struct.llentry* null, %struct.llentry** %4, align 8
  store i32 1, i32* %15, align 4
  br label %105

47:                                               ; preds = %40, %3
  %48 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.llentry* @in6_lltable_new(i32* %49, i32 %50)
  store %struct.llentry* %51, %struct.llentry** %10, align 8
  %52 = load %struct.llentry*, %struct.llentry** %10, align 8
  %53 = icmp eq %struct.llentry* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @LOG_INFO, align 4
  %56 = call i32 @log(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store %struct.llentry* null, %struct.llentry** %4, align 8
  store i32 1, i32* %15, align 4
  br label %105

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.llentry*, %struct.llentry** %10, align 8
  %60 = getelementptr inbounds %struct.llentry, %struct.llentry* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @LLE_IFADDR, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @LLE_IFADDR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %57
  %67 = load i32, i32* @LLE_MAX_LINKHDR, align 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %13, align 8
  %69 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %70 = load i64, i64* @AF_INET6, align 8
  %71 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %72 = call i32 @IF_LLADDR(%struct.ifnet* %71)
  %73 = call i64 @lltable_calc_llheader(%struct.ifnet* %69, i64 %70, i32 %72, i8* %24, i64* %13, i32* %14)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load i32, i32* @net_epoch_preempt, align 4
  %77 = load %struct.llentry*, %struct.llentry** %10, align 8
  %78 = getelementptr inbounds %struct.llentry, %struct.llentry* %77, i32 0, i32 2
  %79 = load i32, i32* @in6_lltable_destroy_lle_unlocked, align 4
  %80 = call i32 @epoch_call(i32 %76, i32* %78, i32 %79)
  store %struct.llentry* null, %struct.llentry** %4, align 8
  store i32 1, i32* %15, align 4
  br label %105

81:                                               ; preds = %66
  %82 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %83 = load %struct.llentry*, %struct.llentry** %10, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @lltable_set_entry_addr(%struct.ifnet* %82, %struct.llentry* %83, i8* %24, i64 %84, i32 %85)
  %87 = load i32, i32* @LLE_STATIC, align 4
  %88 = load %struct.llentry*, %struct.llentry** %10, align 8
  %89 = getelementptr inbounds %struct.llentry, %struct.llentry* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %81, %57
  %93 = load %struct.llentry*, %struct.llentry** %10, align 8
  %94 = getelementptr inbounds %struct.llentry, %struct.llentry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @LLE_STATIC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* @ND6_LLINFO_REACHABLE, align 4
  %101 = load %struct.llentry*, %struct.llentry** %10, align 8
  %102 = getelementptr inbounds %struct.llentry, %struct.llentry* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %92
  %104 = load %struct.llentry*, %struct.llentry** %10, align 8
  store %struct.llentry* %104, %struct.llentry** %4, align 8
  store i32 1, i32* %15, align 4
  br label %105

105:                                              ; preds = %103, %75, %54, %46
  %106 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load %struct.llentry*, %struct.llentry** %4, align 8
  ret %struct.llentry* %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i64 @in6_lltable_rtcheck(%struct.ifnet*, i32, %struct.sockaddr*) #2

declare dso_local %struct.llentry* @in6_lltable_new(i32*, i32) #2

declare dso_local i32 @log(i32, i8*) #2

declare dso_local i64 @lltable_calc_llheader(%struct.ifnet*, i64, i32, i8*, i64*, i32*) #2

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #2

declare dso_local i32 @epoch_call(i32, i32*, i32) #2

declare dso_local i32 @lltable_set_entry_addr(%struct.ifnet*, %struct.llentry*, i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
