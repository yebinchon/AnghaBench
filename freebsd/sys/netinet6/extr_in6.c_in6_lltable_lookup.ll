; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltable_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_lltable_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32 }
%struct.lltable = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"sin_family %d\00", align 1
@LLE_UNLOCKED = common dso_local global i32 0, align 4
@LLE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"wrong lle request flags: %#x\00", align 1
@LLE_LINKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llentry* (%struct.lltable*, i32, %struct.sockaddr*)* @in6_lltable_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llentry* @in6_lltable_lookup(%struct.lltable* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.llentry*, align 8
  %5 = alloca %struct.lltable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.llentry*, align 8
  store %struct.lltable* %0, %struct.lltable** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %11, %struct.sockaddr_in6** %8, align 8
  %12 = load %struct.lltable*, %struct.lltable** %5, align 8
  %13 = getelementptr inbounds %struct.lltable, %struct.lltable* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IF_AFDATA_LOCK_ASSERT(i32 %14)
  %16 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_INET6, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %21, i8* %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @LLE_UNLOCKED, align 4
  %29 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* @LLE_UNLOCKED, align 4
  %33 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %34 = or i32 %32, %33
  %35 = icmp ne i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @KASSERT(i32 %36, i8* %39)
  %41 = load %struct.lltable*, %struct.lltable** %5, align 8
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 0
  %44 = call %struct.llentry* @in6_lltable_find_dst(%struct.lltable* %41, i32* %43)
  store %struct.llentry* %44, %struct.llentry** %9, align 8
  %45 = load %struct.llentry*, %struct.llentry** %9, align 8
  %46 = icmp eq %struct.llentry* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  store %struct.llentry* null, %struct.llentry** %4, align 8
  br label %90

48:                                               ; preds = %3
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @LLE_UNLOCKED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load %struct.llentry*, %struct.llentry** %9, align 8
  store %struct.llentry* %54, %struct.llentry** %4, align 8
  br label %90

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.llentry*, %struct.llentry** %9, align 8
  %62 = call i32 @LLE_WLOCK(%struct.llentry* %61)
  br label %66

63:                                               ; preds = %55
  %64 = load %struct.llentry*, %struct.llentry** %9, align 8
  %65 = call i32 @LLE_RLOCK(%struct.llentry* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.llentry*, %struct.llentry** %9, align 8
  %68 = getelementptr inbounds %struct.llentry, %struct.llentry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @LLE_LINKED, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @__predict_false(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %66
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.llentry*, %struct.llentry** %9, align 8
  %83 = call i32 @LLE_WUNLOCK(%struct.llentry* %82)
  br label %87

84:                                               ; preds = %76
  %85 = load %struct.llentry*, %struct.llentry** %9, align 8
  %86 = call i32 @LLE_RUNLOCK(%struct.llentry* %85)
  br label %87

87:                                               ; preds = %84, %81
  store %struct.llentry* null, %struct.llentry** %4, align 8
  br label %90

88:                                               ; preds = %66
  %89 = load %struct.llentry*, %struct.llentry** %9, align 8
  store %struct.llentry* %89, %struct.llentry** %4, align 8
  br label %90

90:                                               ; preds = %88, %87, %53, %47
  %91 = load %struct.llentry*, %struct.llentry** %4, align 8
  ret %struct.llentry* %91
}

declare dso_local i32 @IF_AFDATA_LOCK_ASSERT(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.llentry* @in6_lltable_find_dst(%struct.lltable*, i32*) #1

declare dso_local i32 @LLE_WLOCK(%struct.llentry*) #1

declare dso_local i32 @LLE_RLOCK(%struct.llentry*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @LLE_WUNLOCK(%struct.llentry*) #1

declare dso_local i32 @LLE_RUNLOCK(%struct.llentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
