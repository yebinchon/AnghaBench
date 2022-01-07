; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_nextrange.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_nextrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iplist = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%.*s: Invalid IP range (skipping)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iplist*)* @iplist_nextrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iplist_nextrange(%struct.iplist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iplist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.iplist* %0, %struct.iplist** %3, align 8
  %7 = load %struct.iplist*, %struct.iplist** %3, align 8
  %8 = getelementptr inbounds %struct.iplist, %struct.iplist* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 44)
  store i8* %15, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  br label %24

20:                                               ; preds = %13, %1
  %21 = load %struct.iplist*, %struct.iplist** %3, align 8
  %22 = getelementptr inbounds %struct.iplist, %struct.iplist* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %20, %17
  br label %25

25:                                               ; preds = %84, %24
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.iplist*, %struct.iplist** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @iplist_setrange(%struct.iplist* %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i1 [ false, %25 ], [ %35, %30 ]
  br i1 %37, label %38, label %85

38:                                               ; preds = %36
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 44)
  store i8* %40, i8** %6, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8* %47, i8** %6, align 8
  br label %48

48:                                               ; preds = %42, %38
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %86

53:                                               ; preds = %48
  %54 = load i32, i32* @LogWARN, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @log_Printf(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %60, i8* %61)
  %63 = load i8*, i8** %4, align 8
  store i8* %63, i8** %5, align 8
  br label %64

64:                                               ; preds = %69, %53
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  %67 = load i8, i8* %65, align 1
  %68 = load i8*, i8** %5, align 8
  store i8 %67, i8* %68, align 1
  br label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %64, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %4, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.iplist*, %struct.iplist** %3, align 8
  %82 = getelementptr inbounds %struct.iplist, %struct.iplist* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %4, align 8
  br label %84

84:                                               ; preds = %80, %75
  br label %25

85:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %52
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @iplist_setrange(%struct.iplist*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
