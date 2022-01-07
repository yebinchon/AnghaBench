; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_acl_posix1e_mode_to_perm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_acl_posix1e.c_acl_posix1e_mode_to_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IXUSR = common dso_local global i32 0, align 4
@ACL_EXECUTE = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@ACL_READ = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@ACL_WRITE = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"acl_posix1e_mode_to_perm: invalid tag (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_posix1e_mode_to_perm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %95 [
    i32 128, label %8
    i32 130, label %37
    i32 129, label %66
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @S_IXUSR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* @ACL_EXECUTE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @S_IRUSR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @ACL_READ, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @S_IWUSR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @ACL_WRITE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %98

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @S_IXGRP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @ACL_EXECUTE, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @S_IRGRP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @ACL_READ, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @S_IWGRP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @ACL_WRITE, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %98

66:                                               ; preds = %2
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @S_IXOTH, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @ACL_EXECUTE, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @S_IROTH, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @ACL_READ, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @S_IWOTH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @ACL_WRITE, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %98

95:                                               ; preds = %2
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %93, %64, %35
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
