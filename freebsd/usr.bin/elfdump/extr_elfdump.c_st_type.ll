; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_st_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_st_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@st_type.s_type = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"STT_NOTYPE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"STT_OBJECT\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"STT_FUNC\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"STT_SECTION\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"STT_FILE\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"STT_COMMON\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"STT_TLS\00", align 1
@EM_SPARCV9 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"STT_SPARC_REGISTER\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"<unknown: %#x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @st_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @st_type(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %20 [
    i32 131, label %7
    i32 130, label %8
    i32 132, label %9
    i32 129, label %10
    i32 133, label %11
    i32 134, label %12
    i32 128, label %13
    i32 13, label %14
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %23

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %23

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %23

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %23

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %23

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %23

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EM_SPARCV9, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %23

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %2, %19
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @st_type.s_type, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %21)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @st_type.s_type, i64 0, i64 0), i8** %3, align 8
  br label %23

23:                                               ; preds = %20, %18, %13, %12, %11, %10, %9, %8, %7
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
