; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, %struct.bbr_sendmap*, %struct.bbr_sendmap*, %struct.bbr_sendmap*, %struct.bbr_sendmap*, i32, i32 }
%struct.bbr_sendmap = type { i64, i64 }

@bbr_min_req_free = common dso_local global i64 0, align 8
@r_next = common dso_local global i32 0, align 4
@bbr_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, %struct.bbr_sendmap*)* @bbr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_free(%struct.tcp_bbr* %0, %struct.bbr_sendmap* %1) #0 {
  %3 = alloca %struct.tcp_bbr*, align 8
  %4 = alloca %struct.bbr_sendmap*, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %3, align 8
  store %struct.bbr_sendmap* %1, %struct.bbr_sendmap** %4, align 8
  %5 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %6 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %11 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %17 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %28 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 6
  %30 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %29, align 8
  %31 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %32 = icmp eq %struct.bbr_sendmap* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %35 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %36, align 8
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %39 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %40, align 8
  %42 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %43 = icmp eq %struct.bbr_sendmap* %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %46 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %47, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %50 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %51, align 8
  %53 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %54 = icmp eq %struct.bbr_sendmap* %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %57 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %58, align 8
  br label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %61 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %62, align 8
  %64 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %65 = icmp eq %struct.bbr_sendmap* %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %68 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %69, align 8
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %72 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @bbr_min_req_free, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %70
  %78 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %79 = call i32 @memset(%struct.bbr_sendmap* %78, i32 0, i32 16)
  %80 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %81 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %84 = load i32, i32* @r_next, align 4
  %85 = call i32 @TAILQ_INSERT_TAIL(i32* %82, %struct.bbr_sendmap* %83, i32 %84)
  %86 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %87 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %89 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %102

93:                                               ; preds = %70
  %94 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %95 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @bbr_zone, align 4
  %100 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %101 = call i32 @uma_zfree(i32 %99, %struct.bbr_sendmap* %100)
  br label %102

102:                                              ; preds = %93, %77
  ret void
}

declare dso_local i32 @memset(%struct.bbr_sendmap*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.bbr_sendmap*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.bbr_sendmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
