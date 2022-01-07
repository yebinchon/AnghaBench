; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_cmd.c_mfi_raid_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_cmd.c_mfi_raid_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mfi_raid_level.buf = internal global [16 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"RAID-0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RAID-10\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"RAID-1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"RAID-1E\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"RAID-3\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"RAID-50\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"RAID-5\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"RAID-5E\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"RAID-5EE\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"RAID-60\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"RAID-6\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"JBOD\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"CONCAT\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"LVL 0x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mfi_raid_level(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %29 [
    i32 135, label %7
    i32 134, label %8
    i32 133, label %13
    i32 132, label %14
    i32 131, label %15
    i32 130, label %20
    i32 129, label %21
    i32 128, label %22
    i32 136, label %27
    i32 137, label %28
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %32

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %32

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %32

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %32

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %32

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %32

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %32

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %32

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %32

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %32

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %32

28:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mfi_raid_level.buf, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %30)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mfi_raid_level.buf, i64 0, i64 0), i8** %3, align 8
  br label %32

32:                                               ; preds = %29, %28, %27, %26, %25, %21, %20, %19, %18, %14, %13, %12, %11, %7
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
