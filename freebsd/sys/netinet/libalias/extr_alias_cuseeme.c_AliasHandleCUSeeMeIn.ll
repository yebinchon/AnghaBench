; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_cuseeme.c_AliasHandleCUSeeMeIn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_cuseeme.c_AliasHandleCUSeeMeIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.in_addr = type { i64 }
%struct.udphdr = type { i32 }
%struct.cu_header = type { i32, i64 }
%struct.oc_header = type { i32 }
%struct.client_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*, %struct.ip*, i64)* @AliasHandleCUSeeMeIn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AliasHandleCUSeeMeIn(%struct.libalias* %0, %struct.ip* %1, i64 %2) #0 {
  %4 = alloca %struct.in_addr, align 8
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca %struct.ip*, align 8
  %7 = alloca %struct.in_addr, align 8
  %8 = alloca %struct.udphdr*, align 8
  %9 = alloca %struct.cu_header*, align 8
  %10 = alloca %struct.oc_header*, align 8
  %11 = alloca %struct.client_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i64 %2, i64* %14, align 8
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store %struct.ip* %1, %struct.ip** %6, align 8
  %15 = load %struct.libalias*, %struct.libalias** %5, align 8
  %16 = load %struct.ip*, %struct.ip** %6, align 8
  %17 = getelementptr inbounds %struct.ip, %struct.ip* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load %struct.ip*, %struct.ip** %6, align 8
  %22 = call %struct.udphdr* @ip_next(%struct.ip* %21)
  store %struct.udphdr* %22, %struct.udphdr** %8, align 8
  %23 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %24 = call %struct.cu_header* @udp_next(%struct.udphdr* %23)
  store %struct.cu_header* %24, %struct.cu_header** %9, align 8
  %25 = load %struct.cu_header*, %struct.cu_header** %9, align 8
  %26 = getelementptr inbounds %struct.cu_header, %struct.cu_header* %25, i64 1
  %27 = bitcast %struct.cu_header* %26 to %struct.oc_header*
  store %struct.oc_header* %27, %struct.oc_header** %10, align 8
  %28 = load %struct.oc_header*, %struct.oc_header** %10, align 8
  %29 = getelementptr inbounds %struct.oc_header, %struct.oc_header* %28, i64 1
  %30 = bitcast %struct.oc_header* %29 to %struct.client_info*
  store %struct.client_info* %30, %struct.client_info** %11, align 8
  %31 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %32 = bitcast %struct.udphdr* %31 to i8*
  %33 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %34 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  store i8* %38, i8** %12, align 8
  %39 = load %struct.oc_header*, %struct.oc_header** %10, align 8
  %40 = bitcast %struct.oc_header* %39 to i8*
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ule i8* %40, %41
  br i1 %42, label %43, label %94

43:                                               ; preds = %3
  %44 = load %struct.cu_header*, %struct.cu_header** %9, align 8
  %45 = getelementptr inbounds %struct.cu_header, %struct.cu_header* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.cu_header*, %struct.cu_header** %9, align 8
  %52 = getelementptr inbounds %struct.cu_header, %struct.cu_header* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.cu_header*, %struct.cu_header** %9, align 8
  %55 = getelementptr inbounds %struct.cu_header, %struct.cu_header* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ntohs(i32 %56)
  %58 = icmp eq i32 %57, 101
  br i1 %58, label %59, label %93

59:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %87, %59
  %61 = load %struct.client_info*, %struct.client_info** %11, align 8
  %62 = getelementptr inbounds %struct.client_info, %struct.client_info* %61, i64 1
  %63 = bitcast %struct.client_info* %62 to i8*
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ule i8* %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.oc_header*, %struct.oc_header** %10, align 8
  %69 = getelementptr inbounds %struct.oc_header, %struct.oc_header* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi i1 [ false, %60 ], [ %71, %66 ]
  br i1 %73, label %74, label %92

74:                                               ; preds = %72
  %75 = load %struct.client_info*, %struct.client_info** %11, align 8
  %76 = getelementptr inbounds %struct.client_info, %struct.client_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.client_info*, %struct.client_info** %11, align 8
  %85 = getelementptr inbounds %struct.client_info, %struct.client_info* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %92

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  %90 = load %struct.client_info*, %struct.client_info** %11, align 8
  %91 = getelementptr inbounds %struct.client_info, %struct.client_info* %90, i32 1
  store %struct.client_info* %91, %struct.client_info** %11, align 8
  br label %60

92:                                               ; preds = %81, %72
  br label %93

93:                                               ; preds = %92, %53
  br label %94

94:                                               ; preds = %93, %3
  ret void
}

declare dso_local %struct.udphdr* @ip_next(%struct.ip*) #1

declare dso_local %struct.cu_header* @udp_next(%struct.udphdr*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
