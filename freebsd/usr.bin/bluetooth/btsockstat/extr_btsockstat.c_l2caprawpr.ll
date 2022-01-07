; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_l2caprawpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_l2caprawpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.socket = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Active raw L2CAP sockets\0A%-8.8s %-8.8s %-6.6s %-6.6s %-17.17s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Socket\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PCB\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Recv-Q\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Send-Q\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Local address\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%-8lx %-8lx %6d %6d %-17.17s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @l2caprawpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2caprawpr(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.socket, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %9, align 4
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %65

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = bitcast i32** %5 to i8*
  %17 = call i64 @kread(i32* %14, i64 %15, i8* %16, i32 8)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %65

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %63, %20
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %65

24:                                               ; preds = %21
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = bitcast %struct.TYPE_7__* %7 to i8*
  %29 = call i64 @kread(i32* %25, i64 %27, i8* %28, i32 16)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %65

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = bitcast %struct.socket* %8 to i8*
  %37 = call i64 @kread(i32* %33, i64 %35, i8* %36, i32 8)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %65

40:                                               ; preds = %32
  %41 = load i32*, i32** %6, align 8
  %42 = call i32* @LIST_NEXT(%struct.TYPE_7__* %7, i32* %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* @stdout, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = ptrtoint i32* %52 to i64
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %61 = call i32 @bdaddrpr(i32* %60, i32* null, i32 0)
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %51, i64 %53, i32 %56, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %48
  %64 = load i32*, i32** %6, align 8
  store i32* %64, i32** %5, align 8
  br label %21

65:                                               ; preds = %12, %19, %31, %39, %21
  ret void
}

declare dso_local i64 @kread(i32*, i64, i8*, i32) #1

declare dso_local i32* @LIST_NEXT(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @bdaddrpr(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
