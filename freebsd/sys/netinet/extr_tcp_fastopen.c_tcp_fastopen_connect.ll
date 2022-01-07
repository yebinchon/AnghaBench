; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, i32, i32, %struct.TYPE_2__, %struct.inpcb* }
%struct.TYPE_2__ = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcp_fastopen_ccache_bucket = type { i32 }
%struct.tcp_fastopen_ccache_entry = type { i64, i64, i32, i64* }

@TCP_FASTOPEN_PSK_LEN = common dso_local global i64 0, align 8
@TCP_FASTOPEN_COOKIE_LEN = common dso_local global i64 0, align 8
@V_tcp_fastopen_path_disable_time = common dso_local global i64 0, align 8
@TF_FASTOPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_fastopen_connect(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.tcp_fastopen_ccache_bucket*, align 8
  %5 = alloca %struct.tcp_fastopen_ccache_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 5
  %11 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  store %struct.inpcb* %11, %struct.inpcb** %3, align 8
  %12 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 0
  %14 = call %struct.tcp_fastopen_ccache_entry* @tcp_fastopen_ccache_lookup(i32* %13, %struct.tcp_fastopen_ccache_bucket** %4)
  store %struct.tcp_fastopen_ccache_entry* %14, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %15 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %16 = icmp ne %struct.tcp_fastopen_ccache_entry* %15, null
  br i1 %16, label %17, label %134

17:                                               ; preds = %1
  %18 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %19 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %101

22:                                               ; preds = %17
  %23 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %24 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TCP_FASTOPEN_PSK_LEN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %35 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %39 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %42 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @tcp_fastopen_make_psk_cookie(i32 %37, i64* %40, i64 %43)
  store i64 %44, i64* %8, align 8
  br label %62

45:                                               ; preds = %27, %22
  %46 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %47 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %50 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %56 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %59 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @memcpy(i32 %54, i64* %57, i64 %60)
  br label %62

62:                                               ; preds = %45, %33
  %63 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %64 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %7, align 4
  %66 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %4, align 8
  %67 = call i32 @CCB_UNLOCK(%struct.tcp_fastopen_ccache_bucket* %66)
  %68 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %69 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TCP_FASTOPEN_PSK_LEN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %62
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i64, i64* @TCP_FASTOPEN_COOKIE_LEN, align 8
  %78 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %81 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* @TCP_FASTOPEN_COOKIE_LEN, align 8
  %85 = call i32 @memcpy(i32 %83, i64* %8, i64 %84)
  br label %86

86:                                               ; preds = %76, %73, %62
  %87 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  br label %93

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ -1, %92 ]
  %95 = call i32 @tcp_mss(%struct.tcpcb* %87, i32 %94)
  %96 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %97 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %100 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  br label %133

101:                                              ; preds = %17
  %102 = call i32 (...) @getsbinuptime()
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %106 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = load i64, i64* @V_tcp_fastopen_path_disable_time, align 8
  %110 = trunc i64 %109 to i32
  %111 = shl i32 %110, 32
  %112 = sext i32 %111 to i64
  %113 = icmp sgt i64 %108, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %101
  %115 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %116 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %118 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %117, i32 0, i32 2
  store i32 0, i32* %118, align 8
  %119 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %120 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  br label %128

121:                                              ; preds = %101
  %122 = load i32, i32* @TF_FASTOPEN, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %125 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %121, %114
  %129 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %4, align 8
  %130 = call i32 @CCB_UNLOCK(%struct.tcp_fastopen_ccache_bucket* %129)
  %131 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %132 = call i32 @tcp_mss(%struct.tcpcb* %131, i32 -1)
  br label %133

133:                                              ; preds = %128, %93
  br label %139

134:                                              ; preds = %1
  %135 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %4, align 8
  %136 = call i32 @CCB_UNLOCK(%struct.tcp_fastopen_ccache_bucket* %135)
  %137 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %138 = call i32 @tcp_mss(%struct.tcpcb* %137, i32 -1)
  br label %139

139:                                              ; preds = %134, %133
  ret void
}

declare dso_local %struct.tcp_fastopen_ccache_entry* @tcp_fastopen_ccache_lookup(i32*, %struct.tcp_fastopen_ccache_bucket**) #1

declare dso_local i64 @tcp_fastopen_make_psk_cookie(i32, i64*, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @CCB_UNLOCK(%struct.tcp_fastopen_ccache_bucket*) #1

declare dso_local i32 @tcp_mss(%struct.tcpcb*, i32) #1

declare dso_local i32 @getsbinuptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
