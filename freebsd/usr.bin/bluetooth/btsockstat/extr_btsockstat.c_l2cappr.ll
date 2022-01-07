; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_l2cappr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_l2cappr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }
%struct.socket = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@l2cappr.states = internal constant [5 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"CLOSED\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CON\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CONFIG\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DISCON\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [71 x i8] c"Active L2CAP sockets\0A%-8.8s %-6.6s %-6.6s %-23.23s %-17.17s %-5.5s %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"PCB\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Recv-Q\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Send-Q\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Local address/PSM\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Foreign address\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"CID\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"%-8lx %6d %6d %-17.17s/%-5d %-17.17s %-5d %s\0A\00", align 1
@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"LISTEN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @l2cappr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cappr(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.socket, align 4
  %9 = alloca i32, align 4
  %10 = alloca [24 x i8], align 16
  %11 = alloca [24 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %9, align 4
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %85

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = bitcast i32** %5 to i8*
  %19 = call i64 @kread(i32* %16, i64 %17, i8* %18, i32 8)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %85

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %83, %22
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %85

26:                                               ; preds = %23
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = ptrtoint i32* %28 to i64
  %30 = bitcast %struct.TYPE_7__* %7 to i8*
  %31 = call i64 @kread(i32* %27, i64 %29, i8* %30, i32 32)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %85

34:                                               ; preds = %26
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = bitcast %struct.socket* %8 to i8*
  %39 = call i64 @kread(i32* %35, i64 %37, i8* %38, i32 12)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %85

42:                                               ; preds = %34
  %43 = load i32*, i32** %6, align 8
  %44 = call i32* @LIST_NEXT(%struct.TYPE_7__* %7, i32* %43)
  store i32* %44, i32** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* @stdout, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = ptrtoint i32* %52 to i64
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %61 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %62 = call i32 @bdaddrpr(i32* %60, i8* %61, i32 24)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %66 = getelementptr inbounds [24 x i8], [24 x i8]* %11, i64 0, i64 0
  %67 = call i32 @bdaddrpr(i32* %65, i8* %66, i32 24)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SO_ACCEPTCONN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %50
  br label %80

76:                                               ; preds = %50
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @state2str(i32 %78)
  br label %80

80:                                               ; preds = %76, %75
  %81 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %75 ], [ %79, %76 ]
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i64 %53, i32 %56, i32 %59, i32 %62, i32 %64, i32 %67, i32 %69, i8* %81)
  br label %83

83:                                               ; preds = %80
  %84 = load i32*, i32** %6, align 8
  store i32* %84, i32** %5, align 8
  br label %23

85:                                               ; preds = %14, %21, %33, %41, %23
  ret void
}

declare dso_local i64 @kread(i32*, i64, i8*, i32) #1

declare dso_local i32* @LIST_NEXT(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @bdaddrpr(i32*, i8*, i32) #1

declare dso_local i8* @state2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
