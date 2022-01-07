; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_auth_type_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_auth_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sppp_auth_type_name.buf = internal global [12 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"challenge\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"nak\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"auth/0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @sppp_auth_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sppp_auth_type_name(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %20 [
    i32 129, label %7
    i32 128, label %14
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %13 [
    i32 136, label %9
    i32 134, label %10
    i32 133, label %11
    i32 135, label %12
  ]

9:                                                ; preds = %7
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %23

10:                                               ; preds = %7
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %23

11:                                               ; preds = %7
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %23

12:                                               ; preds = %7
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %23

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %2, %13
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %19 [
    i32 130, label %16
    i32 132, label %17
    i32 131, label %18
  ]

16:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %23

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %23

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %23

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @snprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @sppp_auth_type_name.buf, i64 0, i64 0), i32 12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %21)
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @sppp_auth_type_name.buf, i64 0, i64 0), i8** %3, align 8
  br label %23

23:                                               ; preds = %20, %18, %17, %16, %12, %11, %10, %9
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
