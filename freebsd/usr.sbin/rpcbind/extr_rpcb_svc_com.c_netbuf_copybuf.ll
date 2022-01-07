; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_netbuf_copybuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_netbuf_copybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { i64, i64, i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netbuf*, %struct.netbuf*)* @netbuf_copybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netbuf_copybuf(%struct.netbuf* %0, %struct.netbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netbuf*, align 8
  %5 = alloca %struct.netbuf*, align 8
  store %struct.netbuf* %0, %struct.netbuf** %4, align 8
  store %struct.netbuf* %1, %struct.netbuf** %5, align 8
  %6 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %7 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %10 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %16 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %19 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %24 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %22, %2
  %28 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %29 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @free(i32* %30)
  %32 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %33 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32* @calloc(i32 1, i64 %34)
  %36 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %37 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = icmp eq i32* %35, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %3, align 4
  br label %64

41:                                               ; preds = %27
  %42 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %43 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %46 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %22
  %48 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %49 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %52 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.netbuf*, %struct.netbuf** %4, align 8
  %54 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %57 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %60 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @memcpy(i32* %55, i32* %58, i64 %61)
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %47, %39
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
