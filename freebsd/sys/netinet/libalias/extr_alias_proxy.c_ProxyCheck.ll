; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_ProxyCheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_ProxyCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { %struct.proxy_entry* }
%struct.proxy_entry = type { i64, i64, i64, i32, %struct.proxy_entry*, %struct.in_addr, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.in_addr = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProxyCheck(%struct.libalias* %0, %struct.in_addr* %1, i64* %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.in_addr, align 8
  %10 = alloca %struct.in_addr, align 8
  %11 = alloca %struct.libalias*, align 8
  %12 = alloca %struct.in_addr*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.proxy_entry*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.in_addr, align 8
  %19 = alloca %struct.in_addr, align 8
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i64 %3, i64* %20, align 8
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i64 %4, i64* %21, align 8
  store %struct.libalias* %0, %struct.libalias** %11, align 8
  store %struct.in_addr* %1, %struct.in_addr** %12, align 8
  store i64* %2, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %22 = load %struct.libalias*, %struct.libalias** %11, align 8
  %23 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %22)
  %24 = load %struct.libalias*, %struct.libalias** %11, align 8
  %25 = getelementptr inbounds %struct.libalias, %struct.libalias* %24, i32 0, i32 0
  %26 = load %struct.proxy_entry*, %struct.proxy_entry** %25, align 8
  store %struct.proxy_entry* %26, %struct.proxy_entry** %16, align 8
  br label %27

27:                                               ; preds = %109, %7
  %28 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %29 = icmp ne %struct.proxy_entry* %28, null
  br i1 %29, label %30, label %113

30:                                               ; preds = %27
  %31 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %32 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* %17, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %17, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %109

40:                                               ; preds = %37, %30
  %41 = load i64, i64* %15, align 8
  %42 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %43 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %109

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %50 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %109

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %58 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %57, i32 0, i32 9
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = and i64 %56, %61
  %63 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %67 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = and i64 %65, %70
  %72 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %76 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp eq i64 %74, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %54
  %82 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %85 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp eq i64 %83, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %81
  %91 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %92 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %13, align 8
  store i64 %93, i64* %94, align 8
  %95 = icmp eq i64 %93, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i64, i64* %14, align 8
  %98 = load i64*, i64** %13, align 8
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %90
  %100 = load %struct.in_addr*, %struct.in_addr** %12, align 8
  %101 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %102 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %101, i32 0, i32 5
  %103 = bitcast %struct.in_addr* %100 to i8*
  %104 = bitcast %struct.in_addr* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 8, i1 false)
  %105 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %106 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %8, align 4
  br label %114

108:                                              ; preds = %81, %54
  br label %109

109:                                              ; preds = %108, %46, %40, %37
  %110 = load %struct.proxy_entry*, %struct.proxy_entry** %16, align 8
  %111 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %110, i32 0, i32 4
  %112 = load %struct.proxy_entry*, %struct.proxy_entry** %111, align 8
  store %struct.proxy_entry* %112, %struct.proxy_entry** %16, align 8
  br label %27

113:                                              ; preds = %27
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %113, %99
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
