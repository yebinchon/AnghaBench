; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_sw_to_nic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_sw_to_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i64, i64, %struct.netmap_kring**, %struct.netmap_kring** }
%struct.netmap_kring = type { i64, i64, i64, %struct.netmap_ring* }
%struct.netmap_ring = type { i64, i64, %struct.netmap_slot* }
%struct.netmap_slot = type { i32, i32, i32 }

@NS_FORWARD = common dso_local global i32 0, align 4
@netmap_fwd = common dso_local global i32 0, align 4
@NS_BUF_CHANGED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.netmap_adapter*)* @netmap_sw_to_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @netmap_sw_to_nic(%struct.netmap_adapter* %0) #0 {
  %2 = alloca %struct.netmap_adapter*, align 8
  %3 = alloca %struct.netmap_kring*, align 8
  %4 = alloca %struct.netmap_slot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.netmap_kring*, align 8
  %11 = alloca %struct.netmap_ring*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.netmap_slot*, align 8
  %14 = alloca %struct.netmap_slot*, align 8
  %15 = alloca %struct.netmap_slot, align 4
  %16 = alloca i64, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %2, align 8
  %17 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %17, i32 0, i32 3
  %19 = load %struct.netmap_kring**, %struct.netmap_kring*** %18, align 8
  %20 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %19, i64 %22
  %24 = load %struct.netmap_kring*, %struct.netmap_kring** %23, align 8
  store %struct.netmap_kring* %24, %struct.netmap_kring** %3, align 8
  %25 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %26 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %25, i32 0, i32 3
  %27 = load %struct.netmap_ring*, %struct.netmap_ring** %26, align 8
  %28 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %27, i32 0, i32 2
  %29 = load %struct.netmap_slot*, %struct.netmap_slot** %28, align 8
  store %struct.netmap_slot* %29, %struct.netmap_slot** %4, align 8
  %30 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %31 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %34 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %37 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %38, 1
  store i64 %39, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %5, align 8
  br label %40

40:                                               ; preds = %134, %1
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %137

46:                                               ; preds = %40
  %47 = load %struct.netmap_adapter*, %struct.netmap_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %47, i32 0, i32 2
  %49 = load %struct.netmap_kring**, %struct.netmap_kring*** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %49, i64 %50
  %52 = load %struct.netmap_kring*, %struct.netmap_kring** %51, align 8
  store %struct.netmap_kring* %52, %struct.netmap_kring** %10, align 8
  %53 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %54 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %53, i32 0, i32 3
  %55 = load %struct.netmap_ring*, %struct.netmap_ring** %54, align 8
  store %struct.netmap_ring* %55, %struct.netmap_ring** %11, align 8
  %56 = load %struct.netmap_kring*, %struct.netmap_kring** %10, align 8
  %57 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %128, %46
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.netmap_ring*, %struct.netmap_ring** %11, align 8
  %66 = call i32 @nm_ring_empty(%struct.netmap_ring* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i1 [ false, %60 ], [ %68, %64 ]
  br i1 %70, label %71, label %133

71:                                               ; preds = %69
  %72 = load %struct.netmap_ring*, %struct.netmap_ring** %11, align 8
  %73 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %16, align 8
  %75 = load %struct.netmap_slot*, %struct.netmap_slot** %4, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %75, i64 %76
  store %struct.netmap_slot* %77, %struct.netmap_slot** %13, align 8
  %78 = load %struct.netmap_slot*, %struct.netmap_slot** %13, align 8
  %79 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NS_FORWARD, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = load i32, i32* @netmap_fwd, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  br label %128

88:                                               ; preds = %84, %71
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %9, align 8
  %91 = load %struct.netmap_ring*, %struct.netmap_ring** %11, align 8
  %92 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %91, i32 0, i32 2
  %93 = load %struct.netmap_slot*, %struct.netmap_slot** %92, align 8
  %94 = load i64, i64* %16, align 8
  %95 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %93, i64 %94
  store %struct.netmap_slot* %95, %struct.netmap_slot** %14, align 8
  %96 = load %struct.netmap_slot*, %struct.netmap_slot** %13, align 8
  %97 = bitcast %struct.netmap_slot* %15 to i8*
  %98 = bitcast %struct.netmap_slot* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 %98, i64 12, i1 false)
  %99 = load %struct.netmap_slot*, %struct.netmap_slot** %14, align 8
  %100 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.netmap_slot*, %struct.netmap_slot** %13, align 8
  %103 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load i8*, i8** @NS_BUF_CHANGED, align 8
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.netmap_slot*, %struct.netmap_slot** %13, align 8
  %107 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %15, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.netmap_slot*, %struct.netmap_slot** %14, align 8
  %111 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %15, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.netmap_slot*, %struct.netmap_slot** %14, align 8
  %115 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i8*, i8** @NS_BUF_CHANGED, align 8
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.netmap_slot*, %struct.netmap_slot** %14, align 8
  %119 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %12, align 8
  %122 = call i8* @nm_next(i64 %120, i64 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.netmap_ring*, %struct.netmap_ring** %11, align 8
  %125 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.netmap_ring*, %struct.netmap_ring** %11, align 8
  %127 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %126, i32 0, i32 0
  store i64 %123, i64* %127, align 8
  br label %128

128:                                              ; preds = %88, %87
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i8* @nm_next(i64 %129, i64 %130)
  %132 = ptrtoint i8* %131 to i64
  store i64 %132, i64* %6, align 8
  br label %60

133:                                              ; preds = %69
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %5, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %5, align 8
  br label %40

137:                                              ; preds = %40
  %138 = load i64, i64* %9, align 8
  ret i64 %138
}

declare dso_local i32 @nm_ring_empty(%struct.netmap_ring*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @nm_next(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
