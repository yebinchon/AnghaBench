; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_show.c_get_device_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_show.c_get_device_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"SEP Target    \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ATAPI Target  \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SAS Target    \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"STP Target    \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"SMP Target    \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"SATA Target   \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"SAS Initiator \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"SATA Initiator\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"No Device     \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Unknown Device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_device_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_device_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 16384
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %49

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 8192
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %49

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1024
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %49

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 512
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %49

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 256
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %49

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %49

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 112
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %49

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %49

48:                                               ; preds = %43
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %49

49:                                               ; preds = %48, %47, %42, %37, %32, %27, %22, %17, %12, %7
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
