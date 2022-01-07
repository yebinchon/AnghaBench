; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_rfcommpr_s.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_rfcommpr_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.socket = type { i64 }

@rfcommpr_s.states = internal constant [6 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"CLOSED\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"LISTEN\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"CONNECTING\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CONNECTED\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"DISCONNECTING\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [69 x i8] c"Active RFCOMM sessions\0A%-8.8s %-8.8s %-4.4s %-5.5s %-5.5s %-4.4s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"L2PCB\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"PCB\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"MTU\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Out-Q\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"DLCs\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"%-8lx %-8lx %-4x %-5d %-5d %-4s %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @rfcommpr_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcommpr_s(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.socket, align 8
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
  br label %72

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = bitcast i32** %5 to i8*
  %17 = call i64 @kread(i32* %14, i64 %15, i8* %16, i32 8)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %72

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %70, %20
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %72

24:                                               ; preds = %21
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = bitcast %struct.TYPE_5__* %7 to i8*
  %29 = call i64 @kread(i32* %25, i64 %27, i8* %28, i32 32)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %72

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = bitcast %struct.socket* %8 to i8*
  %37 = call i64 @kread(i32* %33, i64 %35, i8* %36, i32 8)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %72

40:                                               ; preds = %32
  %41 = load i32*, i32** %6, align 8
  %42 = call i32* @LIST_NEXT(%struct.TYPE_5__* %7, i32* %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* @stdout, align 4
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = ptrtoint i32* %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %62 = call i64 @LIST_EMPTY(i32* %61)
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @state2str(i32 %67)
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i64 %51, i64 %53, i32 %55, i32 %57, i32 %60, i8* %65, i32 %68)
  br label %70

70:                                               ; preds = %48
  %71 = load i32*, i32** %6, align 8
  store i32* %71, i32** %5, align 8
  br label %21

72:                                               ; preds = %12, %19, %31, %39, %21
  ret void
}

declare dso_local i64 @kread(i32*, i64, i8*, i32) #1

declare dso_local i32* @LIST_NEXT(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @state2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
