; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_channel.c_channel_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_channel.c_channel_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_9__*)*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"channel read error: %m\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(fd#%d) EOF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @channel_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_read(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = call %struct.TYPE_9__* @packet_alloc(%struct.TYPE_10__* %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = call i32 @channel_close(%struct.TYPE_10__* %17)
  br label %62

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @read(i32 %20, i32 %23, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = call i32 @log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = call i32 @packet_free(%struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = call i32 @channel_close(%struct.TYPE_10__* %34)
  br label %62

36:                                               ; preds = %19
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @log_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = call i32 @packet_free(%struct.TYPE_9__* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = call i32 @channel_close(%struct.TYPE_10__* %44)
  br label %62

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = call i32 %52(%struct.TYPE_9__* %53)
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = call i32 @channel_dispatch(%struct.TYPE_9__* %57)
  br label %59

59:                                               ; preds = %56, %46
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = call i32 @packet_free(%struct.TYPE_9__* %60)
  br label %62

62:                                               ; preds = %59, %39, %30, %16
  ret void
}

declare dso_local %struct.TYPE_9__* @packet_alloc(%struct.TYPE_10__*) #1

declare dso_local i32 @channel_close(%struct.TYPE_10__*) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @packet_free(%struct.TYPE_9__*) #1

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i32 @channel_dispatch(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
