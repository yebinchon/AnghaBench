; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_ccache_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_ccache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.tcp_fastopen_ccache_entry = type { i64, i32, i64, i64, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tcp_fastopen_ccache_bucket = type { i64, i32 }
%struct.in_conninfo = type { i32, i32, i32, i32, i32, i32 }

@V_tcp_fastopen_ccache = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@bucket_entries = common dso_local global i32 0, align 4
@cce_link = common dso_local global i32 0, align 4
@INC_ISIPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@TCP_FASTOPEN_MIN_COOKIE_LEN = common dso_local global i32 0, align 4
@TCP_FASTOPEN_MAX_COOKIE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcp_fastopen_ccache_entry* (%struct.tcp_fastopen_ccache_bucket*, %struct.in_conninfo*, i64, i32, i32*)* @tcp_fastopen_ccache_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcp_fastopen_ccache_entry* @tcp_fastopen_ccache_create(%struct.tcp_fastopen_ccache_bucket* %0, %struct.in_conninfo* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.tcp_fastopen_ccache_entry*, align 8
  %7 = alloca %struct.tcp_fastopen_ccache_bucket*, align 8
  %8 = alloca %struct.in_conninfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.tcp_fastopen_ccache_entry*, align 8
  store %struct.tcp_fastopen_ccache_bucket* %0, %struct.tcp_fastopen_ccache_bucket** %7, align 8
  store %struct.in_conninfo* %1, %struct.in_conninfo** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %7, align 8
  %14 = call i32 @CCB_LOCK_ASSERT(%struct.tcp_fastopen_ccache_bucket* %13)
  store %struct.tcp_fastopen_ccache_entry* null, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %15 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %7, align 8
  %16 = getelementptr inbounds %struct.tcp_fastopen_ccache_bucket, %struct.tcp_fastopen_ccache_bucket* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_tcp_fastopen_ccache, i32 0, i32 0), align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_tcp_fastopen_ccache, i32 0, i32 1), align 8
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = call %struct.tcp_fastopen_ccache_entry* @uma_zalloc(i32 %21, i32 %22)
  store %struct.tcp_fastopen_ccache_entry* %23, %struct.tcp_fastopen_ccache_entry** %12, align 8
  br label %24

24:                                               ; preds = %20, %5
  %25 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %26 = icmp eq %struct.tcp_fastopen_ccache_entry* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %7, align 8
  %29 = getelementptr inbounds %struct.tcp_fastopen_ccache_bucket, %struct.tcp_fastopen_ccache_bucket* %28, i32 0, i32 1
  %30 = load i32, i32* @bucket_entries, align 4
  %31 = call %struct.tcp_fastopen_ccache_entry* @TAILQ_LAST(i32* %29, i32 %30)
  store %struct.tcp_fastopen_ccache_entry* %31, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %32 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %33 = icmp eq %struct.tcp_fastopen_ccache_entry* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store %struct.tcp_fastopen_ccache_entry* null, %struct.tcp_fastopen_ccache_entry** %6, align 8
  br label %139

35:                                               ; preds = %27
  %36 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %7, align 8
  %37 = getelementptr inbounds %struct.tcp_fastopen_ccache_bucket, %struct.tcp_fastopen_ccache_bucket* %36, i32 0, i32 1
  %38 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %39 = load i32, i32* @cce_link, align 4
  %40 = call i32 @TAILQ_REMOVE(i32* %37, %struct.tcp_fastopen_ccache_entry* %38, i32 %39)
  br label %46

41:                                               ; preds = %24
  %42 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %7, align 8
  %43 = getelementptr inbounds %struct.tcp_fastopen_ccache_bucket, %struct.tcp_fastopen_ccache_bucket* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %7, align 8
  %48 = getelementptr inbounds %struct.tcp_fastopen_ccache_bucket, %struct.tcp_fastopen_ccache_bucket* %47, i32 0, i32 1
  %49 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %50 = load i32, i32* @cce_link, align 4
  %51 = call i32 @TAILQ_INSERT_HEAD(i32* %48, %struct.tcp_fastopen_ccache_entry* %49, i32 %50)
  %52 = load %struct.in_conninfo*, %struct.in_conninfo** %8, align 8
  %53 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @INC_ISIPV6, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i64, i64* @AF_INET6, align 8
  br label %62

60:                                               ; preds = %46
  %61 = load i64, i64* @AF_INET, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i64 [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %65 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %67 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AF_INET, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %62
  %72 = load %struct.in_conninfo*, %struct.in_conninfo** %8, align 8
  %73 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %76 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.in_conninfo*, %struct.in_conninfo** %8, align 8
  %79 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %82 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  br label %97

84:                                               ; preds = %62
  %85 = load %struct.in_conninfo*, %struct.in_conninfo** %8, align 8
  %86 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %89 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.in_conninfo*, %struct.in_conninfo** %8, align 8
  %92 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %95 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %84, %71
  %98 = load %struct.in_conninfo*, %struct.in_conninfo** %8, align 8
  %99 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %102 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @TCP_FASTOPEN_MIN_COOKIE_LEN, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %97
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @TCP_FASTOPEN_MAX_COOKIE_LEN, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %117 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %116, i32 0, i32 3
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %120 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %122 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @memcpy(i32 %123, i32* %124, i32 %125)
  %127 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %128 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  br label %137

129:                                              ; preds = %110, %106, %97
  %130 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %131 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %133 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %132, i32 0, i32 1
  store i32 0, i32* %133, align 8
  %134 = call i64 (...) @getsbinuptime()
  %135 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  %136 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %129, %114
  %138 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %12, align 8
  store %struct.tcp_fastopen_ccache_entry* %138, %struct.tcp_fastopen_ccache_entry** %6, align 8
  br label %139

139:                                              ; preds = %137, %34
  %140 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %6, align 8
  ret %struct.tcp_fastopen_ccache_entry* %140
}

declare dso_local i32 @CCB_LOCK_ASSERT(%struct.tcp_fastopen_ccache_bucket*) #1

declare dso_local %struct.tcp_fastopen_ccache_entry* @uma_zalloc(i32, i32) #1

declare dso_local %struct.tcp_fastopen_ccache_entry* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tcp_fastopen_ccache_entry*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.tcp_fastopen_ccache_entry*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @getsbinuptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
