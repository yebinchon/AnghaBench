; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"wlan0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tap0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"prga.log\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\00\00\DE\FA\CE\0D\00", align 1
@S_START = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"hb:t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"Can't parse BSSID\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"open_rx()\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"open_tx()\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"open_tap()\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"set_iface_mac()\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Obtaining PRGA\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.params, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %10 = call i32 @memset(%struct.params* %6, i32 0, i32 56)
  %11 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @memcpy(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %15 = load i8*, i8** @S_START, align 8
  %16 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 6
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 1
  store i32 1500, i32* %17, align 8
  %18 = call i32 (...) @getpid()
  %19 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 9
  store i32 %18, i32* %19, align 8
  br label %20

20:                                               ; preds = %45, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %23, i32* %9, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %40 [
    i32 98, label %27
    i32 116, label %37
    i32 104, label %39
  ]

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i32 @str2mac(i32 %29, i8* %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %27
  br label %45

37:                                               ; preds = %25
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** %8, align 8
  br label %45

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %25, %39
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @usage(i8* %43)
  br label %45

45:                                               ; preds = %40, %37, %36
  br label %20

46:                                               ; preds = %20
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @open_rx(i8* %47)
  %49 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = icmp eq i32 %48, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @open_tx(i8* %54)
  %56 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 3
  store i32 %55, i32* %56, align 8
  %57 = icmp eq i32 %55, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @open_tap(i8* %61)
  %63 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 4
  store i32 %62, i32* %63, align 4
  %64 = icmp eq i32 %62, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @set_iface_mac(i8* %68, i32 %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %67
  %76 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %77 = call i32 @load_prga(%struct.params* %6)
  br label %78

78:                                               ; preds = %82, %75
  %79 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @get_prga(%struct.params* %6)
  br label %78

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %91, %84
  %86 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 @get_more_prga(%struct.params* %6)
  br label %85

93:                                               ; preds = %85
  %94 = load i8*, i8** @S_START, align 8
  %95 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 6
  store i8* %94, i8** %95, align 8
  br label %96

96:                                               ; preds = %93, %96
  %97 = call i32 @transmit(%struct.params* %6)
  br label %96
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

declare dso_local i32 @load_prga(%struct.params*) #1

declare dso_local i32 @get_prga(%struct.params*) #1

declare dso_local i32 @get_more_prga(%struct.params*) #1

declare dso_local i32 @transmit(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
