; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_recv_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_recv_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_ctx = type { i64, i32, %struct.TYPE_4__*, i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.test_pkt = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s: %s: poll(%d)\00", align 1
@POLLIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: %s: poll(%d): unexpected result\00", align 1
@NPKTS = common dso_local global i64 0, align 8
@PKT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: %s: recv(%d): corrupted data, packet %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_ctx*, i32, i8*, i32)* @recv_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_pkt(%struct.test_ctx* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.test_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.test_pkt, align 8
  %12 = alloca i64, align 8
  store %struct.test_ctx* %0, %struct.test_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %13, i32 0, i32 5
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %17
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @poll(%struct.TYPE_5__* %18, i32 1, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27, i32 %34)
  br label %36

36:                                               ; preds = %23, %4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %153

40:                                               ; preds = %36
  %41 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %41, i32 0, i32 5
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @POLLIN, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %40
  %52 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %54, i8* %55, i32 %62)
  br label %64

64:                                               ; preds = %51, %40
  store i64 24, i64* %12, align 8
  %65 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %11, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = call i32 @recv_pkt_recv(%struct.test_ctx* %70, i32 %71, i8* %72, %struct.test_pkt* %11, i64 %73, i32* %79)
  br label %93

81:                                               ; preds = %64
  %82 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %12, align 8
  %86 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %11, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = call i32 @recv_pkt_recvmsg(%struct.test_ctx* %82, i32 %83, i8* %84, %struct.test_pkt* %11, i64 %85, i32* %91)
  br label %93

93:                                               ; preds = %81, %69
  %94 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %11, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %11, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NPKTS, align 8
  %101 = icmp uge i64 %99, %100
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %11, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %106 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %11, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @PDATA(%struct.test_ctx* %105, i64 %107)
  %109 = load i32, i32* @PKT_SIZE, align 4
  %110 = call i64 @memcmp(i32 %104, i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %102, %97, %93
  %113 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %114 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %118 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %11, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (i32, i8*, i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %115, i8* %116, i32 %123, i64 %125)
  br label %127

127:                                              ; preds = %112, %102
  %128 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %129 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %133 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %11, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %11, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = call i32 @memcpy(i32 %139, %struct.TYPE_6__* %141, i32 8)
  %143 = load %struct.test_ctx*, %struct.test_ctx** %6, align 8
  %144 = getelementptr inbounds %struct.test_ctx, %struct.test_ctx* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %11, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  %150 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %11, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %127, %39
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @poll(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @recv_pkt_recv(%struct.test_ctx*, i32, i8*, %struct.test_pkt*, i64, i32*) #1

declare dso_local i32 @recv_pkt_recvmsg(%struct.test_ctx*, i32, i8*, %struct.test_pkt*, i64, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @PDATA(%struct.test_ctx*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
