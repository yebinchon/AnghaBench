; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_lltable_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_lltable_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32, i32, i32 }
%struct.lltable = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32 }

@LLE_MAX_LINKHDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"sin_family %d\00", align 1
@LLE_IFADDR = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"lla_lookup: new lle malloc failed\0A\00", align 1
@LLE_STATIC = common dso_local global i32 0, align 4
@RLLE_VALID = common dso_local global i32 0, align 4
@net_epoch_preempt = common dso_local global i32 0, align 4
@in_lltable_destroy_lle_unlocked = common dso_local global i32 0, align 4
@RLLE_IFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llentry* (%struct.lltable*, i32, %struct.sockaddr*)* @in_lltable_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llentry* @in_lltable_alloc(%struct.lltable* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.llentry*, align 8
  %5 = alloca %struct.lltable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
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
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %17, %struct.sockaddr_in** %8, align 8
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
  %28 = load i64, i64* @AF_INET, align 8
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
  %44 = call i64 @in_lltable_rtcheck(%struct.ifnet* %41, i32 %42, %struct.sockaddr* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store %struct.llentry* null, %struct.llentry** %4, align 8
  store i32 1, i32* %15, align 4
  br label %113

47:                                               ; preds = %40, %3
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.llentry* @in_lltable_new(i32 %50, i32 %51)
  store %struct.llentry* %52, %struct.llentry** %10, align 8
  %53 = load %struct.llentry*, %struct.llentry** %10, align 8
  %54 = icmp eq %struct.llentry* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @LOG_INFO, align 4
  %57 = call i32 @log(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store %struct.llentry* null, %struct.llentry** %4, align 8
  store i32 1, i32* %15, align 4
  br label %113

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.llentry*, %struct.llentry** %10, align 8
  %61 = getelementptr inbounds %struct.llentry, %struct.llentry* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @LLE_STATIC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i32, i32* @RLLE_VALID, align 4
  %68 = load %struct.llentry*, %struct.llentry** %10, align 8
  %69 = getelementptr inbounds %struct.llentry, %struct.llentry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %58
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @LLE_IFADDR, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @LLE_IFADDR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %72
  %79 = load i32, i32* @LLE_MAX_LINKHDR, align 4
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %13, align 8
  %81 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %82 = load i64, i64* @AF_INET, align 8
  %83 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %84 = call i32 @IF_LLADDR(%struct.ifnet* %83)
  %85 = call i64 @lltable_calc_llheader(%struct.ifnet* %81, i64 %82, i32 %84, i8* %24, i64* %13, i32* %14)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load i32, i32* @net_epoch_preempt, align 4
  %89 = load %struct.llentry*, %struct.llentry** %10, align 8
  %90 = getelementptr inbounds %struct.llentry, %struct.llentry* %89, i32 0, i32 2
  %91 = load i32, i32* @in_lltable_destroy_lle_unlocked, align 4
  %92 = call i32 @epoch_call(i32 %88, i32* %90, i32 %91)
  store %struct.llentry* null, %struct.llentry** %4, align 8
  store i32 1, i32* %15, align 4
  br label %113

93:                                               ; preds = %78
  %94 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %95 = load %struct.llentry*, %struct.llentry** %10, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @lltable_set_entry_addr(%struct.ifnet* %94, %struct.llentry* %95, i8* %24, i64 %96, i32 %97)
  %99 = load i32, i32* @LLE_STATIC, align 4
  %100 = load %struct.llentry*, %struct.llentry** %10, align 8
  %101 = getelementptr inbounds %struct.llentry, %struct.llentry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @RLLE_VALID, align 4
  %105 = load i32, i32* @RLLE_IFADDR, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.llentry*, %struct.llentry** %10, align 8
  %108 = getelementptr inbounds %struct.llentry, %struct.llentry* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %93, %72
  %112 = load %struct.llentry*, %struct.llentry** %10, align 8
  store %struct.llentry* %112, %struct.llentry** %4, align 8
  store i32 1, i32* %15, align 4
  br label %113

113:                                              ; preds = %111, %87, %55, %46
  %114 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load %struct.llentry*, %struct.llentry** %4, align 8
  ret %struct.llentry* %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i64 @in_lltable_rtcheck(%struct.ifnet*, i32, %struct.sockaddr*) #2

declare dso_local %struct.llentry* @in_lltable_new(i32, i32) #2

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
