; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_lookup_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_lookup_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_kentry = type { i32 }
%struct.pfr_ktable = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.radix_head }
%struct.radix_head = type { i32 }
%struct.TYPE_3__ = type { %struct.radix_head }
%struct.pfr_addr = type { i32, i32, i32, i32 }
%union.sockaddr_union = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pfr_kentry* (%struct.pfr_ktable*, %struct.pfr_addr*, i32)* @pfr_lookup_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %0, %struct.pfr_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.pfr_ktable*, align 8
  %5 = alloca %struct.pfr_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.sockaddr_union, align 4
  %8 = alloca %union.sockaddr_union, align 4
  %9 = alloca %struct.radix_head*, align 8
  %10 = alloca %struct.pfr_kentry*, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %4, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.radix_head* null, %struct.radix_head** %9, align 8
  %11 = call i32 (...) @PF_RULES_ASSERT()
  %12 = call i32 @bzero(%union.sockaddr_union* %7, i32 4)
  %13 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %14 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AF_INET, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = bitcast %union.sockaddr_union* %7 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %22 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @FILLIN_SIN(i32 %20, i32 %23)
  %25 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %26 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.radix_head* %28, %struct.radix_head** %9, align 8
  br label %47

29:                                               ; preds = %3
  %30 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %31 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AF_INET6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = bitcast %union.sockaddr_union* %7 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %39 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FILLIN_SIN6(i32 %37, i32 %40)
  %42 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %43 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %struct.radix_head* %45, %struct.radix_head** %9, align 8
  br label %46

46:                                               ; preds = %35, %29
  br label %47

47:                                               ; preds = %46, %18
  %48 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %49 = call i64 @ADDR_NETWORK(%struct.pfr_addr* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %53 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %56 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pfr_prepare_network(%union.sockaddr_union* %8, i32 %54, i32 %57)
  %59 = load %struct.radix_head*, %struct.radix_head** %9, align 8
  %60 = call i64 @rn_lookup(%union.sockaddr_union* %7, %union.sockaddr_union* %8, %struct.radix_head* %59)
  %61 = inttoptr i64 %60 to %struct.pfr_kentry*
  store %struct.pfr_kentry* %61, %struct.pfr_kentry** %10, align 8
  %62 = load %struct.pfr_kentry*, %struct.pfr_kentry** %10, align 8
  %63 = icmp ne %struct.pfr_kentry* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load %struct.pfr_kentry*, %struct.pfr_kentry** %10, align 8
  %66 = call i64 @KENTRY_RNF_ROOT(%struct.pfr_kentry* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %10, align 8
  br label %69

69:                                               ; preds = %68, %64, %51
  br label %93

70:                                               ; preds = %47
  %71 = load %struct.radix_head*, %struct.radix_head** %9, align 8
  %72 = call i64 @rn_match(%union.sockaddr_union* %7, %struct.radix_head* %71)
  %73 = inttoptr i64 %72 to %struct.pfr_kentry*
  store %struct.pfr_kentry* %73, %struct.pfr_kentry** %10, align 8
  %74 = load %struct.pfr_kentry*, %struct.pfr_kentry** %10, align 8
  %75 = icmp ne %struct.pfr_kentry* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.pfr_kentry*, %struct.pfr_kentry** %10, align 8
  %78 = call i64 @KENTRY_RNF_ROOT(%struct.pfr_kentry* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %10, align 8
  br label %81

81:                                               ; preds = %80, %76, %70
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.pfr_kentry*, %struct.pfr_kentry** %10, align 8
  %86 = icmp ne %struct.pfr_kentry* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.pfr_kentry*, %struct.pfr_kentry** %10, align 8
  %89 = call i64 @KENTRY_NETWORK(%struct.pfr_kentry* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %10, align 8
  br label %92

92:                                               ; preds = %91, %87, %84, %81
  br label %93

93:                                               ; preds = %92, %69
  %94 = load %struct.pfr_kentry*, %struct.pfr_kentry** %10, align 8
  ret %struct.pfr_kentry* %94
}

declare dso_local i32 @PF_RULES_ASSERT(...) #1

declare dso_local i32 @bzero(%union.sockaddr_union*, i32) #1

declare dso_local i32 @FILLIN_SIN(i32, i32) #1

declare dso_local i32 @FILLIN_SIN6(i32, i32) #1

declare dso_local i64 @ADDR_NETWORK(%struct.pfr_addr*) #1

declare dso_local i32 @pfr_prepare_network(%union.sockaddr_union*, i32, i32) #1

declare dso_local i64 @rn_lookup(%union.sockaddr_union*, %union.sockaddr_union*, %struct.radix_head*) #1

declare dso_local i64 @KENTRY_RNF_ROOT(%struct.pfr_kentry*) #1

declare dso_local i64 @rn_match(%union.sockaddr_union*, %struct.radix_head*) #1

declare dso_local i64 @KENTRY_NETWORK(%struct.pfr_kentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
