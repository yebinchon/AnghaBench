; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"wlan0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tap0\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\00\00\DE\FA\CE\0D\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"prga.log\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"hd:p:b:t:r:s:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Can't parse src IP\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Can't parse rtr MAC\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Can't parse BSSID\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Can't parse IP\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"open_rx()\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"open_tx()\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"open_tap()\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"set_iface_mac()\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"connect_buddy()\00", align 1
@S_START = common dso_local global i32 0, align 4

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
  %11 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %14 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  %15 = call i32 (...) @getpid()
  %16 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 12
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %74, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %75

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %69 [
    i32 115, label %24
    i32 114, label %33
    i32 116, label %43
    i32 98, label %45
    i32 100, label %55
    i32 112, label %64
    i32 104, label %68
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @optarg, align 8
  %26 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 11
  %27 = call i32 @inet_aton(i8* %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %24
  br label %74

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 @str2mac(i32 %35, i8* %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %33
  br label %74

43:                                               ; preds = %22
  %44 = load i8*, i8** @optarg, align 8
  store i8* %44, i8** %8, align 8
  br label %74

45:                                               ; preds = %22
  %46 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @str2mac(i32 %47, i8* %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %53 = call i32 @exit(i32 1) #3
  unreachable

54:                                               ; preds = %45
  br label %74

55:                                               ; preds = %22
  %56 = load i8*, i8** @optarg, align 8
  %57 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 8
  %58 = call i32 @inet_aton(i8* %56, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %55
  br label %74

64:                                               ; preds = %22
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i32 @atoi(i8* %65)
  %67 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 7
  store i32 %66, i32* %67, align 8
  br label %74

68:                                               ; preds = %22
  br label %69

69:                                               ; preds = %22, %68
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @usage(i8* %72)
  br label %74

74:                                               ; preds = %69, %64, %63, %54, %43, %42, %32
  br label %17

75:                                               ; preds = %17
  %76 = call i32 @load_prga(%struct.params* %6)
  %77 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 60
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @open_rx(i8* %82)
  %84 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = icmp eq i32 %83, -1
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %75
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @open_tx(i8* %89)
  %91 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 3
  store i32 %90, i32* %91, align 8
  %92 = icmp eq i32 %90, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %88
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @open_tap(i8* %96)
  %98 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 4
  store i32 %97, i32* %98, align 4
  %99 = icmp eq i32 %97, -1
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %95
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @set_iface_mac(i8* %103, i32 %105)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %102
  %111 = call i32 @connect_buddy(%struct.params* %6)
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i32, i32* @S_START, align 4
  %117 = getelementptr inbounds %struct.params, %struct.params* %6, i32 0, i32 5
  store i32 %116, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %118
  %119 = call i32 @own(%struct.params* %6)
  br label %118
}

declare dso_local i32 @memset(%struct.params*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @inet_aton(i8*, i32*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @str2mac(i32, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @load_prga(%struct.params*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @open_rx(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @open_tx(i8*) #1

declare dso_local i32 @open_tap(i8*) #1

declare dso_local i32 @set_iface_mac(i8*, i32) #1

declare dso_local i32 @connect_buddy(%struct.params*) #1

declare dso_local i32 @own(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
