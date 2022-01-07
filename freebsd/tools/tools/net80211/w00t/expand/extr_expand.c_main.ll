; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/expand/extr_expand.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/expand/extr_expand.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"wlan0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tap0\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\00\00\DE\FA\CE\0D\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\01\00^\00\00\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"hb:t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"Can't parse BSSID\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"open_rx()\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"open_tx()\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"open_tap()\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"set_iface_mac()\00", align 1
@S_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.params, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %10 = call i32 @memset(%struct.params* %6, i32 0, i32 32)
  %11 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %14 = call i32 (...) @getpid()
  %15 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 7
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcpy(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  br label %19

19:                                               ; preds = %44, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %39 [
    i32 116, label %26
    i32 98, label %28
    i32 104, label %38
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** %8, align 8
  br label %44

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i32 @str2mac(i32 %30, i8* %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %28
  br label %44

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %24, %38
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @usage(i8* %42)
  br label %44

44:                                               ; preds = %39, %37, %26
  br label %19

45:                                               ; preds = %19
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @open_rx(i8* %46)
  %48 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = icmp eq i32 %47, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @open_tx(i8* %53)
  %55 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = icmp eq i32 %54, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @open_tap(i8* %60)
  %62 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = icmp eq i32 %61, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @set_iface_mac(i8* %67, i32 %69)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i32, i32* @S_START, align 4
  %76 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %77
  %78 = call i32 @own(%struct.params* %6)
  br label %77
}

declare dso_local i32 @memset(%struct.params*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @str2mac(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @open_rx(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @open_tx(i8*) #1

declare dso_local i32 @open_tap(i8*) #1

declare dso_local i32 @set_iface_mac(i8*, i32) #1

declare dso_local i32 @own(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
