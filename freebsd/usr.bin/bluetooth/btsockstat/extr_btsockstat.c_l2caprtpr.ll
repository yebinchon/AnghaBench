; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_l2caprtpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_l2caprtpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Known %sL2CAP routes\0A\00", align 1
@nl = common dso_local global %struct.TYPE_5__* null, align 8
@N_L2CAP_RAW_RT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"raw \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%-8.8s %-8.8s %-17.17s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"RTentry\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Hook\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"BD_ADDR\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"%-8lx %-8lx %-17.17s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @l2caprtpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2caprtpr(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %8, align 4
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %61

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = bitcast i32** %5 to i8*
  %16 = call i64 @kread(i32* %13, i64 %14, i8* %15, i32 8)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %61

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %59, %19
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %61

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = ptrtoint i32* %25 to i64
  %27 = bitcast %struct.TYPE_4__* %7 to i8*
  %28 = call i64 @kread(i32* %24, i64 %26, i8* %27, i32 16)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %61

31:                                               ; preds = %23
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @LIST_NEXT(%struct.TYPE_4__* %7, i32* %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  %37 = load i32, i32* @stdout, align 4
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nl, align 8
  %40 = load i64, i64* @N_L2CAP_RAW_RT, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %38, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %50

50:                                               ; preds = %36, %31
  %51 = load i32, i32* @stdout, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = ptrtoint i32* %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %57 = call i32 @bdaddrpr(i32* %56, i32* null, i32 0)
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %53, i64 %55, i32 %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32*, i32** %6, align 8
  store i32* %60, i32** %5, align 8
  br label %20

61:                                               ; preds = %11, %18, %30, %20
  ret void
}

declare dso_local i64 @kread(i32*, i64, i8*, i32) #1

declare dso_local i32* @LIST_NEXT(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @bdaddrpr(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
