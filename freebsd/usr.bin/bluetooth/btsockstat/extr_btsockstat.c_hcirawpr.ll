; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_hcirawpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_hcirawpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i8* }
%struct.socket = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Active raw HCI sockets\0A%-8.8s %-8.8s %-6.6s %-6.6s %-6.6s %-16.16s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Socket\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PCB\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Recv-Q\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Send-Q\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Local address\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"%-8lx %-8lx %-6.6x %6d %6d %-16.16s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @hcirawpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hcirawpr(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
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
  br label %85

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = bitcast i32** %5 to i8*
  %17 = call i64 @kread(i32* %14, i64 %15, i8* %16, i32 8)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %85

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %83, %20
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %85

24:                                               ; preds = %21
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = bitcast %struct.TYPE_9__* %7 to i8*
  %29 = call i64 @kread(i32* %25, i64 %27, i8* %28, i32 24)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %85

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = bitcast %struct.socket* %8 to i8*
  %37 = call i64 @kread(i32* %33, i64 %35, i8* %36, i32 8)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %85

40:                                               ; preds = %32
  %41 = load i32*, i32** %6, align 8
  %42 = call i32* @LIST_NEXT(%struct.TYPE_9__* %7, i32* %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 42, i8* %60, align 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %56, %48
  %66 = load i32, i32* @stdout, align 4
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = ptrtoint i32* %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %68, i64 %70, i32 %72, i32 %75, i32 %78, i8* %81)
  br label %83

83:                                               ; preds = %65
  %84 = load i32*, i32** %6, align 8
  store i32* %84, i32** %5, align 8
  br label %21

85:                                               ; preds = %12, %19, %31, %39, %21
  ret void
}

declare dso_local i64 @kread(i32*, i64, i8*, i32) #1

declare dso_local i32* @LIST_NEXT(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
