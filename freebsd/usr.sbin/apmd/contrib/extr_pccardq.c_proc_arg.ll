; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/contrib/extr_pccardq.c_proc_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/contrib/extr_pccardq.c_proc_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prog = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@tmp_dir = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ans:\00", align 1
@slot_map = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid slot number.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_arg(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* %5, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @strrchr(i8* %11, i8 signext 47)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  br label %22

18:                                               ; preds = %2
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i8* [ %17, %15 ], [ %21, %18 ]
  store i8* %23, i8** @prog, align 8
  %24 = call i64 @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i64 @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @tmp_dir, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  store i64 %31, i64* @tmp_dir, align 8
  br label %32

32:                                               ; preds = %67, %30
  %33 = load i32, i32* %3, align 4
  %34 = load i8**, i8*** %4, align 8
  %35 = call i32 @getopt(i32 %33, i8** %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %6, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %68

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %65 [
    i32 97, label %39
    i32 110, label %40
    i32 115, label %41
  ]

39:                                               ; preds = %37
  store i32 -1, i32* @slot_map, align 4
  br label %67

40:                                               ; preds = %37
  store i32 0, i32* @slot_map, align 4
  br label %67

41:                                               ; preds = %37
  %42 = load i32, i32* @optarg, align 4
  %43 = call i32 @atoi(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* @CHAR_BIT, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = icmp uge i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46, %41
  %54 = call i32 @warnc(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 (...) @usage()
  br label %69

56:                                               ; preds = %46
  %57 = load i32, i32* @slot_map, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* @slot_map, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* @slot_map, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* @slot_map, align 4
  br label %67

65:                                               ; preds = %37
  %66 = call i32 (...) @usage()
  br label %69

67:                                               ; preds = %60, %40, %39
  br label %32

68:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %65, %53
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @warnc(i32, i8*) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
