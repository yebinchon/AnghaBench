; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_lltable_match_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_lltable_match_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.llentry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.in_addr = type { i64 }
%struct.sockaddr_in = type { %struct.in_addr }

@LLE_IFADDR = common dso_local global i32 0, align 4
@LLE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, i32, %struct.llentry*)* @in_lltable_match_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_lltable_match_prefix(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2, %struct.llentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.llentry*, align 8
  %10 = alloca %struct.in_addr, align 8
  %11 = alloca %struct.in_addr, align 8
  %12 = alloca %struct.in_addr, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.llentry* %3, %struct.llentry** %9, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_in*
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %16 = bitcast %struct.in_addr* %10 to i8*
  %17 = bitcast %struct.in_addr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in*
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = bitcast %struct.in_addr* %11 to i8*
  %22 = bitcast %struct.in_addr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = load %struct.llentry*, %struct.llentry** %9, align 8
  %24 = getelementptr inbounds %struct.llentry, %struct.llentry* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ntohl(i32 %27)
  %29 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @IN_ARE_MASKED_ADDR_EQUAL(i64 %31, i64 %33, i64 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %73

39:                                               ; preds = %4
  %40 = load %struct.llentry*, %struct.llentry** %9, align 8
  %41 = getelementptr inbounds %struct.llentry, %struct.llentry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @LLE_IFADDR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @LLE_STATIC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %73

58:                                               ; preds = %52, %46
  store i32 0, i32* %5, align 4
  br label %73

59:                                               ; preds = %39
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @LLE_STATIC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load %struct.llentry*, %struct.llentry** %9, align 8
  %66 = getelementptr inbounds %struct.llentry, %struct.llentry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @LLE_STATIC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64, %59
  store i32 1, i32* %5, align 4
  br label %73

72:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %71, %58, %57, %38
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ntohl(i32) #2

declare dso_local i64 @IN_ARE_MASKED_ADDR_EQUAL(i64, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
