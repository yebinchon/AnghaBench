; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_send_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_ctx = type { i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s: %s: send(%d)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: %s: send(%d): short send\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_ctx*, i32, i32, i8*)* @send_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_pkt(%struct.test_ctx* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.test_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.test_ctx* %0, %struct.test_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i64 8, i64* %10, align 8
  %11 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %12 = call i32 @get_clock_type(%struct.test_ctx* %11)
  %13 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @clock_gettime(i32 %12, i32* %24)
  %26 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @send(i32 %32, %struct.TYPE_4__* %38, i64 %39, i32 0)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %4
  %44 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %47, i32 %54)
  br label %56

56:                                               ; preds = %43, %4
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %64, i32 %71)
  br label %73

73:                                               ; preds = %60, %56
  %74 = load %struct.test_ctx*, %struct.test_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  ret void
}

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i32 @get_clock_type(%struct.test_ctx*) #1

declare dso_local i64 @send(i32, %struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @err(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
