; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.rack_sendmap*, %struct.rack_sendmap*, i32 }
%struct.rack_sendmap = type { i64 }

@rack_free_cache = common dso_local global i64 0, align 8
@r_tnext = common dso_local global i32 0, align 4
@rack_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, %struct.rack_sendmap*)* @rack_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_free(%struct.tcp_rack* %0, %struct.rack_sendmap* %1) #0 {
  %3 = alloca %struct.tcp_rack*, align 8
  %4 = alloca %struct.rack_sendmap*, align 8
  store %struct.tcp_rack* %0, %struct.tcp_rack** %3, align 8
  store %struct.rack_sendmap* %1, %struct.rack_sendmap** %4, align 8
  %5 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  %6 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %11 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %17 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load %struct.rack_sendmap*, %struct.rack_sendmap** %18, align 8
  %20 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  %21 = icmp eq %struct.rack_sendmap* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %24 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %25, align 8
  br label %26

26:                                               ; preds = %22, %15
  %27 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %28 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load %struct.rack_sendmap*, %struct.rack_sendmap** %29, align 8
  %31 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  %32 = icmp eq %struct.rack_sendmap* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %35 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %36, align 8
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %39 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @rack_free_cache, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  %45 = call i32 @memset(%struct.rack_sendmap* %44, i32 0, i32 8)
  %46 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %47 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  %50 = load i32, i32* @r_tnext, align 4
  %51 = call i32 @TAILQ_INSERT_TAIL(i32* %48, %struct.rack_sendmap* %49, i32 %50)
  %52 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  %53 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %55 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %67

58:                                               ; preds = %37
  %59 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %60 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @rack_zone, align 4
  %65 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  %66 = call i32 @uma_zfree(i32 %64, %struct.rack_sendmap* %65)
  br label %67

67:                                               ; preds = %58, %43
  ret void
}

declare dso_local i32 @memset(%struct.rack_sendmap*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.rack_sendmap*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.rack_sendmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
