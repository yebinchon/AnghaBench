; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"wlan0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tap0\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\00\00\DE\FA\CE\0D\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"sorbo\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"hi:s:m:w:c:t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Error parsing WEP key\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"open_tx()\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"open_rx()\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"open_tap()\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"set_iface_mac()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.params, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %10 = call i32 @memset(%struct.params* %8, i32 0, i32 48)
  %11 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %14 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 8
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @strcpy(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 0
  store i32 500000, i32* %17, align 8
  %18 = call i32 (...) @getpid()
  %19 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 10
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 9
  %21 = call i32 @gettimeofday(i32* %20, i32* null)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  %26 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 1
  store i32 3, i32* %26, align 4
  br label %27

27:                                               ; preds = %72, %25
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @getopt(i32 %28, i8** %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %73

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %67 [
    i32 105, label %34
    i32 116, label %36
    i32 99, label %38
    i32 115, label %42
    i32 109, label %50
    i32 119, label %55
    i32 104, label %66
  ]

34:                                               ; preds = %32
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** %6, align 8
  br label %72

36:                                               ; preds = %32
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %7, align 8
  br label %72

38:                                               ; preds = %32
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 @atoi(i8* %39)
  %41 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  br label %72

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 8
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @strncpy(i32* %44, i8* %45, i32 7)
  %47 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 8
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 7
  store i32 0, i32* %49, align 4
  br label %72

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i32 @str2mac(i32 %52, i8* %53)
  br label %72

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 6
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i32 @str2wep(i32 %57, i32* %58, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %55
  br label %72

66:                                               ; preds = %32
  br label %67

67:                                               ; preds = %32, %66
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @usage(i8* %70)
  br label %72

72:                                               ; preds = %67, %65, %50, %42, %38, %36, %34
  br label %27

73:                                               ; preds = %27
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @open_tx(i8* %74)
  %76 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = icmp eq i32 %75, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @open_rx(i8* %81)
  %83 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = icmp eq i32 %82, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @open_tap(i8* %88)
  %90 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 4
  store i32 %89, i32* %90, align 8
  %91 = icmp eq i32 %89, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @set_iface_mac(i8* %95, i32 %97)
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %94
  br label %103

103:                                              ; preds = %102, %103
  %104 = call i32 @next_event(%struct.params* %8)
  br label %103
}

declare dso_local i32 @memset(%struct.params*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

declare dso_local i32 @str2mac(i32, i8*) #1

declare dso_local i32 @str2wep(i32, i32*, i8*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @open_tx(i8*) #1

declare dso_local i32 @open_rx(i8*) #1

declare dso_local i32 @open_tap(i8*) #1

declare dso_local i32 @set_iface_mac(i8*, i32) #1

declare dso_local i32 @next_event(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
