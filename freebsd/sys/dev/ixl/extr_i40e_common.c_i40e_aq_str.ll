; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"I40E_AQ_RC_EPERM\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"I40E_AQ_RC_ENOENT\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"I40E_AQ_RC_ESRCH\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"I40E_AQ_RC_EINTR\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"I40E_AQ_RC_EIO\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"I40E_AQ_RC_ENXIO\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"I40E_AQ_RC_E2BIG\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"I40E_AQ_RC_EAGAIN\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"I40E_AQ_RC_ENOMEM\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"I40E_AQ_RC_EACCES\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"I40E_AQ_RC_EFAULT\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"I40E_AQ_RC_EBUSY\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"I40E_AQ_RC_EEXIST\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"I40E_AQ_RC_EINVAL\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"I40E_AQ_RC_ENOTTY\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"I40E_AQ_RC_ENOSPC\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"I40E_AQ_RC_ENOSYS\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"I40E_AQ_RC_ERANGE\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"I40E_AQ_RC_EFLUSHED\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"I40E_AQ_RC_BAD_ADDR\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"I40E_AQ_RC_EMODE\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"I40E_AQ_RC_EFBIG\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @i40e_aq_str(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %30 [
    i32 128, label %7
    i32 131, label %8
    i32 137, label %9
    i32 129, label %10
    i32 141, label %11
    i32 139, label %12
    i32 132, label %13
    i32 149, label %14
    i32 147, label %15
    i32 136, label %16
    i32 148, label %17
    i32 144, label %18
    i32 146, label %19
    i32 145, label %20
    i32 140, label %21
    i32 133, label %22
    i32 135, label %23
    i32 134, label %24
    i32 130, label %25
    i32 142, label %26
    i32 150, label %27
    i32 138, label %28
    i32 143, label %29
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %39

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %39

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %39

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %39

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %39

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %39

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %39

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %39

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %39

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %39

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %39

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %39

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %39

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %39

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %39

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %39

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %39

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %39

25:                                               ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %39

26:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %39

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %39

28:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %39

29:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %32 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @snprintf(i8* %33, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 %34)
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %37 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
