; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netmap_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netmap_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_backend = type { i64 }
%struct.iovec = type { i32, i8* }
%struct.netmap_priv = type { %struct.netmap_ring* }
%struct.netmap_ring = type { i64, i64, i64, %struct.netmap_slot* }
%struct.netmap_slot = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Short iov, drop %zd bytes\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@NS_MOREFRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_backend*, %struct.iovec*, i32)* @netmap_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_recv(%struct.net_backend* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_backend*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netmap_priv*, align 8
  %9 = alloca %struct.netmap_slot*, align 8
  %10 = alloca %struct.netmap_ring*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.net_backend* %0, %struct.net_backend** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.net_backend*, %struct.net_backend** %5, align 8
  %19 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.netmap_priv*
  store %struct.netmap_priv* %21, %struct.netmap_priv** %8, align 8
  store %struct.netmap_slot* null, %struct.netmap_slot** %9, align 8
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.netmap_priv*, %struct.netmap_priv** %8, align 8
  %25 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %24, i32 0, i32 0
  %26 = load %struct.netmap_ring*, %struct.netmap_ring** %25, align 8
  store %struct.netmap_ring* %26, %struct.netmap_ring** %10, align 8
  %27 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  %28 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %14, align 8
  %30 = load %struct.iovec*, %struct.iovec** %6, align 8
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %11, align 8
  %33 = load %struct.iovec*, %struct.iovec** %6, align 8
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %116, %3
  %37 = load i64, i64* %14, align 8
  %38 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  %39 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %130

43:                                               ; preds = %36
  %44 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  %45 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %44, i32 0, i32 3
  %46 = load %struct.netmap_slot*, %struct.netmap_slot** %45, align 8
  %47 = load i64, i64* %14, align 8
  %48 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %46, i64 %47
  store %struct.netmap_slot* %48, %struct.netmap_slot** %9, align 8
  %49 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  %50 = load %struct.netmap_slot*, %struct.netmap_slot** %9, align 8
  %51 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @NETMAP_BUF(%struct.netmap_ring* %49, i32 %52)
  store i8* %53, i8** %16, align 8
  %54 = load %struct.netmap_slot*, %struct.netmap_slot** %9, align 8
  %55 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %105, %43
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %15, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %17, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @memcpy(i8* %67, i8* %68, i32 %69)
  %71 = load i32, i32* %17, align 4
  %72 = load i8*, i8** %16, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr i8, i8* %72, i64 %73
  store i8* %74, i8** %16, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %15, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr i8, i8* %79, i64 %80
  store i8* %81, i8** %11, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %65
  br label %112

91:                                               ; preds = %65
  %92 = load %struct.iovec*, %struct.iovec** %6, align 8
  %93 = getelementptr inbounds %struct.iovec, %struct.iovec* %92, i32 1
  store %struct.iovec* %93, %struct.iovec** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @WPRINTF(i8* %101)
  %103 = load i32, i32* @ENOSPC, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %130

105:                                              ; preds = %91
  %106 = load %struct.iovec*, %struct.iovec** %6, align 8
  %107 = getelementptr inbounds %struct.iovec, %struct.iovec* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %11, align 8
  %109 = load %struct.iovec*, %struct.iovec** %6, align 8
  %110 = getelementptr inbounds %struct.iovec, %struct.iovec* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %12, align 4
  br label %57

112:                                              ; preds = %90
  %113 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  %114 = load i64, i64* %14, align 8
  %115 = call i64 @nm_ring_next(%struct.netmap_ring* %113, i64 %114)
  store i64 %115, i64* %14, align 8
  br label %116

116:                                              ; preds = %112
  %117 = load %struct.netmap_slot*, %struct.netmap_slot** %9, align 8
  %118 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NS_MOREFRAG, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %36, label %123

123:                                              ; preds = %116
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  %126 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  %128 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %127, i32 0, i32 0
  store i64 %124, i64* %128, align 8
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %123, %98, %42
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @NETMAP_BUF(%struct.netmap_ring*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i64 @nm_ring_next(%struct.netmap_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
