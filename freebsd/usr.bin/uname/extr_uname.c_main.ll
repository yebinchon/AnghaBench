; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/uname/extr_uname.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/uname/extr_uname.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"abiKmnoprsUv\00", align 1
@MFLAG = common dso_local global i32 0, align 4
@NFLAG = common dso_local global i32 0, align 4
@RFLAG = common dso_local global i32 0, align 4
@SFLAG = common dso_local global i32 0, align 4
@VFLAG = common dso_local global i32 0, align 4
@BFLAG = common dso_local global i32 0, align 4
@IFLAG = common dso_local global i32 0, align 4
@KFLAG = common dso_local global i32 0, align 4
@PFLAG = common dso_local global i32 0, align 4
@UFLAG = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (...) @setup_get()
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %71, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %72

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %69 [
    i32 97, label %16
    i32 98, label %28
    i32 105, label %32
    i32 75, label %36
    i32 109, label %40
    i32 110, label %44
    i32 112, label %48
    i32 114, label %52
    i32 115, label %56
    i32 111, label %56
    i32 85, label %60
    i32 118, label %64
    i32 63, label %68
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @MFLAG, align 4
  %18 = load i32, i32* @NFLAG, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @RFLAG, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SFLAG, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VFLAG, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %71

28:                                               ; preds = %14
  %29 = load i32, i32* @BFLAG, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %71

32:                                               ; preds = %14
  %33 = load i32, i32* @IFLAG, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %71

36:                                               ; preds = %14
  %37 = load i32, i32* @KFLAG, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %71

40:                                               ; preds = %14
  %41 = load i32, i32* @MFLAG, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %71

44:                                               ; preds = %14
  %45 = load i32, i32* @NFLAG, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %71

48:                                               ; preds = %14
  %49 = load i32, i32* @PFLAG, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %71

52:                                               ; preds = %14
  %53 = load i32, i32* @RFLAG, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %71

56:                                               ; preds = %14, %14
  %57 = load i32, i32* @SFLAG, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %71

60:                                               ; preds = %14
  %61 = load i32, i32* @UFLAG, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %71

64:                                               ; preds = %14
  %65 = load i32, i32* @VFLAG, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %71

68:                                               ; preds = %14
  br label %69

69:                                               ; preds = %14, %68
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %69, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %16
  br label %9

72:                                               ; preds = %9
  %73 = load i64, i64* @optind, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  %78 = load i64, i64* @optind, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 %78
  store i8** %80, i8*** %5, align 8
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = call i32 (...) @usage()
  br label %85

85:                                               ; preds = %83, %72
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @SFLAG, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @print_uname(i32 %93)
  %95 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setup_get(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @print_uname(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
