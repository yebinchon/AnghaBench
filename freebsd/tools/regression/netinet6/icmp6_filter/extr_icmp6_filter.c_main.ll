; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/icmp6_filter/extr_icmp6_filter.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/icmp6_filter/extr_icmp6_filter.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmp6_filter = type { i32 }

@ic6f_passall = common dso_local global %struct.icmp6_filter zeroinitializer, align 4
@ic6f_blockall = common dso_local global %struct.icmp6_filter zeroinitializer, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"socket(PF_INET6, SOCK_RAW, 0)\00", align 1
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@ICMP6_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"1: getsockopt(ICMP6_FILTER)\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"1: getsockopt(ICMP6_FILTER) - default not passall\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"2: setsockopt(ICMP6_FILTER, PASSALL)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"3: getsockopt(ICMP6_FILTER)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"3: getsockopt(ICMP6_FILTER) - not passall\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"4: setsockopt(ICMP6_FILTER, BLOCKALL)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"5: getsockopt(ICMP6_FILTER)\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"5: getsockopt(ICMP6_FILTER) - not blockall\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"6: setsockopt(ICMP6_FILTER, PASSALL)\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"7: getsockopt(ICMP6_FILTER)\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"7: getsockopt(ICMP6_FILTER) - not passall\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.icmp6_filter, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 @ICMP6_FILTER_SETPASSALL(%struct.icmp6_filter* @ic6f_passall)
  %10 = call i32 @ICMP6_FILTER_SETBLOCKALL(%struct.icmp6_filter* @ic6f_blockall)
  %11 = load i32, i32* @PF_INET6, align 4
  %12 = load i32, i32* @SOCK_RAW, align 4
  %13 = call i32 @socket(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @err(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  store i32 4, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %21 = load i32, i32* @ICMP6_FILTER, align 4
  %22 = call i64 @getsockopt(i32 %19, i32 %20, i32 %21, %struct.icmp6_filter* %6, i32* %7)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @err(i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = call i64 @memcmp(%struct.icmp6_filter* %6, %struct.icmp6_filter* @ic6f_passall, i32 4)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  store i32 4, i32* %7, align 4
  %32 = call i32 @ICMP6_FILTER_SETPASSALL(%struct.icmp6_filter* %6)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %35 = load i32, i32* @ICMP6_FILTER, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @setsockopt(i32 %33, i32 %34, i32 %35, %struct.icmp6_filter* %6, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %31
  store i32 4, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %44 = load i32, i32* @ICMP6_FILTER, align 4
  %45 = call i64 @getsockopt(i32 %42, i32 %43, i32 %44, %struct.icmp6_filter* %6, i32* %7)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @err(i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %41
  %50 = call i64 @memcmp(%struct.icmp6_filter* %6, %struct.icmp6_filter* @ic6f_passall, i32 4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  store i32 4, i32* %7, align 4
  %55 = call i32 @ICMP6_FILTER_SETBLOCKALL(%struct.icmp6_filter* %6)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %58 = load i32, i32* @ICMP6_FILTER, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @setsockopt(i32 %56, i32 %57, i32 %58, %struct.icmp6_filter* %6, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = call i32 @err(i32 -1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %54
  store i32 4, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %67 = load i32, i32* @ICMP6_FILTER, align 4
  %68 = call i64 @getsockopt(i32 %65, i32 %66, i32 %67, %struct.icmp6_filter* %6, i32* %7)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @err(i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %64
  %73 = call i64 @memcmp(%struct.icmp6_filter* %6, %struct.icmp6_filter* @ic6f_blockall, i32 4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %72
  store i32 4, i32* %7, align 4
  %78 = call i32 @ICMP6_FILTER_SETPASSALL(%struct.icmp6_filter* %6)
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %81 = load i32, i32* @ICMP6_FILTER, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @setsockopt(i32 %79, i32 %80, i32 %81, %struct.icmp6_filter* %6, i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %77
  store i32 4, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %90 = load i32, i32* @ICMP6_FILTER, align 4
  %91 = call i64 @getsockopt(i32 %88, i32 %89, i32 %90, %struct.icmp6_filter* %6, i32* %7)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = call i32 @err(i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %87
  %96 = call i64 @memcmp(%struct.icmp6_filter* %6, %struct.icmp6_filter* @ic6f_passall, i32 4)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @close(i32 %101)
  ret i32 0
}

declare dso_local i32 @ICMP6_FILTER_SETPASSALL(%struct.icmp6_filter*) #1

declare dso_local i32 @ICMP6_FILTER_SETBLOCKALL(%struct.icmp6_filter*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @getsockopt(i32, i32, i32, %struct.icmp6_filter*, i32*) #1

declare dso_local i64 @memcmp(%struct.icmp6_filter*, %struct.icmp6_filter*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.icmp6_filter*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
