; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/switch_tls/extr_switch_tls.c_getxpcblist.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/switch_tls/extr_switch_tls.c_getxpcblist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xinpgen = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"sysctlbyname %s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s is empty\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xinpgen* (i8*)* @getxpcblist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xinpgen* @getxpcblist(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xinpgen*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @sysctlbyname(i8* %6, %struct.xinpgen* null, i64* %4, i32* null, i32 0)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i64, i64* %4, align 8
  %21 = call %struct.xinpgen* @malloc(i64 %20)
  store %struct.xinpgen* %21, %struct.xinpgen** %3, align 8
  %22 = load %struct.xinpgen*, %struct.xinpgen** %3, align 8
  %23 = icmp eq %struct.xinpgen* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i8*, i8** %2, align 8
  %28 = load %struct.xinpgen*, %struct.xinpgen** %3, align 8
  %29 = call i32 @sysctlbyname(i8* %27, %struct.xinpgen* %28, i64* %4, i32* null, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.xinpgen*, %struct.xinpgen** %3, align 8
  ret %struct.xinpgen* %36
}

declare dso_local i32 @sysctlbyname(i8*, %struct.xinpgen*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local %struct.xinpgen* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
