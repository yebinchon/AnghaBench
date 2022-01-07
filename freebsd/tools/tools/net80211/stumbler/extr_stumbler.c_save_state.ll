; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_save_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_info = type { i32, i32, %struct.node_info*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tm = type { i32 }

@nodes = common dso_local global %struct.node_info* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"stumbler.log\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fopen()\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"localtime()\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s %s %s %2d %s 0x%.2x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_state() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.node_info*, align 8
  %3 = alloca %struct.tm*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = load %struct.node_info*, %struct.node_info** @nodes, align 8
  store %struct.node_info* %5, %struct.node_info** %2, align 8
  %6 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @exit(i32 1) #3
  unreachable

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %26, %12
  %14 = load %struct.node_info*, %struct.node_info** %2, align 8
  %15 = icmp ne %struct.node_info* %14, null
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = load %struct.node_info*, %struct.node_info** %2, align 8
  %18 = getelementptr inbounds %struct.node_info, %struct.node_info* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call %struct.tm* @localtime(i32* %19)
  store %struct.tm* %20, %struct.tm** %3, align 8
  %21 = load %struct.tm*, %struct.tm** %3, align 8
  %22 = icmp ne %struct.tm* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %16
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %27, align 16
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %29 = load %struct.tm*, %struct.tm** %3, align 8
  %30 = call i32 @strftime(i8* %28, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %29)
  %31 = load i32*, i32** %1, align 8
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %33 = load %struct.node_info*, %struct.node_info** %2, align 8
  %34 = getelementptr inbounds %struct.node_info, %struct.node_info* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @mac2str(i32 %35)
  %37 = load %struct.node_info*, %struct.node_info** %2, align 8
  %38 = getelementptr inbounds %struct.node_info, %struct.node_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @wep2str(i32 %39)
  %41 = load %struct.node_info*, %struct.node_info** %2, align 8
  %42 = getelementptr inbounds %struct.node_info, %struct.node_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.node_info*, %struct.node_info** %2, align 8
  %45 = call i8* @ssid2str(%struct.node_info* %44)
  %46 = load %struct.node_info*, %struct.node_info** %2, align 8
  %47 = getelementptr inbounds %struct.node_info, %struct.node_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fprintf(i32* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %32, i8* %36, i8* %40, i32 %43, i8* %45, i32 %48)
  %50 = load %struct.node_info*, %struct.node_info** %2, align 8
  %51 = getelementptr inbounds %struct.node_info, %struct.node_info* %50, i32 0, i32 2
  %52 = load %struct.node_info*, %struct.node_info** %51, align 8
  store %struct.node_info* %52, %struct.node_info** %2, align 8
  br label %13

53:                                               ; preds = %13
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @fclose(i32* %54)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i8* @mac2str(i32) #1

declare dso_local i8* @wep2str(i32) #1

declare dso_local i8* @ssid2str(%struct.node_info*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
