; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athratestats/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athratestats/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_addr = type { i32 }
%struct.ath_ratestats = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ATH\00", align 1
@ATH_DEFAULT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"ahi:m:s:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@do_loop = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"usage: %s [-h] [-i ifname] [-a] [-m macaddr] [-s sleep period]\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%s: macaddress wasn't supplied and no -a given\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ether_aton\00", align 1
@STATS_BUF_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@COLOR_YELLOW = common dso_local global i32 0, align 4
@COLOR_RED = common dso_local global i32 0, align 4
@COLOR_CYAN = common dso_local global i32 0, align 4
@COLOR_BLUE = common dso_local global i32 0, align 4
@COLOR_MAGENTA = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ether_addr*, align 8
  %11 = alloca %struct.ath_ratestats, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i8*, i8** @ATH_DEFAULT, align 8
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %20, %2
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %42 [
    i32 97, label %30
    i32 105, label %31
    i32 109, label %33
    i32 115, label %35
  ]

30:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %47

31:                                               ; preds = %28
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** %6, align 8
  br label %47

33:                                               ; preds = %28
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %7, align 8
  br label %47

35:                                               ; preds = %28
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %14)
  store i32 1, i32* @do_loop, align 4
  %38 = load float, float* %14, align 4
  %39 = fpext float %38 to double
  %40 = fmul double %39, 1.000000e+06
  %41 = fptosi double %40 to i32
  store i32 %41, i32* %13, align 4
  br label %47

42:                                               ; preds = %28
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @errx(i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %42, %35, %33, %31, %30
  br label %23

48:                                               ; preds = %23
  %49 = load i8*, i8** %7, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i8*, i8** %7, align 8
  %58 = call %struct.ether_addr* @ether_aton(i8* %57)
  store %struct.ether_addr* %58, %struct.ether_addr** %10, align 8
  %59 = load %struct.ether_addr*, %struct.ether_addr** %10, align 8
  %60 = icmp eq %struct.ether_addr* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  %64 = call i32 @bzero(%struct.ath_ratestats* %11, i32 24)
  %65 = load i32, i32* @STATS_BUF_SIZE, align 4
  %66 = call i32* @malloc(i32 %65)
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %63
  %72 = load i32*, i32** %12, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = getelementptr inbounds %struct.ath_ratestats, %struct.ath_ratestats* %11, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @STATS_BUF_SIZE, align 4
  %77 = getelementptr inbounds %struct.ath_ratestats, %struct.ath_ratestats* %11, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @AF_INET, align 4
  %80 = load i32, i32* @SOCK_DGRAM, align 4
  %81 = call i64 @socket(i32 %79, i32 %80, i32 0)
  %82 = getelementptr inbounds %struct.ath_ratestats, %struct.ath_ratestats* %11, i32 0, i32 0
  store i64 %81, i64* %82, align 8
  %83 = getelementptr inbounds %struct.ath_ratestats, %struct.ath_ratestats* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %71
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @ath_setifname(%struct.ath_ratestats* %11, i8* %89)
  %91 = load i32, i32* @do_loop, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %133

93:                                               ; preds = %88
  %94 = call i32 (...) @initscr()
  %95 = call i32 (...) @start_color()
  %96 = call i32 (...) @use_default_colors()
  %97 = call i32 @pair_content(i32 0, i16* %15, i16* %16)
  %98 = load i32, i32* @COLOR_YELLOW, align 4
  %99 = load i16, i16* %16, align 2
  %100 = call i32 @init_pair(i32 1, i32 %98, i16 signext %99)
  %101 = load i32, i32* @COLOR_RED, align 4
  %102 = load i16, i16* %16, align 2
  %103 = call i32 @init_pair(i32 2, i32 %101, i16 signext %102)
  %104 = load i32, i32* @COLOR_CYAN, align 4
  %105 = load i16, i16* %16, align 2
  %106 = call i32 @init_pair(i32 3, i32 %104, i16 signext %105)
  %107 = load i32, i32* @COLOR_BLUE, align 4
  %108 = load i16, i16* %16, align 2
  %109 = call i32 @init_pair(i32 4, i32 %107, i16 signext %108)
  %110 = load i32, i32* @COLOR_MAGENTA, align 4
  %111 = load i16, i16* %16, align 2
  %112 = call i32 @init_pair(i32 5, i32 %110, i16 signext %111)
  %113 = call i32 (...) @cbreak()
  %114 = call i32 (...) @noecho()
  %115 = call i32 (...) @nonl()
  %116 = load i32, i32* @stdscr, align 4
  %117 = call i32 @nodelay(i32 %116, i32 1)
  %118 = load i32, i32* @stdscr, align 4
  %119 = load i32, i32* @FALSE, align 4
  %120 = call i32 @intrflush(i32 %118, i32 %119)
  %121 = load i32, i32* @stdscr, align 4
  %122 = load i32, i32* @TRUE, align 4
  %123 = call i32 @keypad(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %93, %124
  %125 = call i32 (...) @clear()
  %126 = call i32 @move(i32 0, i32 0)
  %127 = load %struct.ether_addr*, %struct.ether_addr** %10, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = call i32 @fetch_and_print_stats(%struct.ath_ratestats* %11, %struct.ether_addr* %127, i32* %128)
  %130 = call i32 (...) @refresh()
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @usleep(i32 %131)
  br label %124

133:                                              ; preds = %88
  %134 = load %struct.ether_addr*, %struct.ether_addr** %10, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = call i32 @fetch_and_print_stats(%struct.ath_ratestats* %11, %struct.ether_addr* %134, i32* %135)
  br label %137

137:                                              ; preds = %133
  %138 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, float*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local %struct.ether_addr* @ether_aton(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.ath_ratestats*, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @ath_setifname(%struct.ath_ratestats*, i8*) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @start_color(...) #1

declare dso_local i32 @use_default_colors(...) #1

declare dso_local i32 @pair_content(i32, i16*, i16*) #1

declare dso_local i32 @init_pair(i32, i32, i16 signext) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @nonl(...) #1

declare dso_local i32 @nodelay(i32, i32) #1

declare dso_local i32 @intrflush(i32, i32) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @fetch_and_print_stats(%struct.ath_ratestats*, %struct.ether_addr*, i32*) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @usleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
