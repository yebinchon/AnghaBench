; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_print_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_print_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_list.first = internal global i32 1, align 4
@print_list.in_tot = internal global i32 0, align 4
@print_list.out_tot = internal global i32 0, align 4
@vflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"method  crc     date  time  \00", align 1
@qflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"  compressed uncompressed  ratio uncompressed_name\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"read of uncompressed size\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"                            \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%5s %08x %11s \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"defla\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @print_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_list(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @print_list.first, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i64, i64* @vflag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i64, i64* @qflag, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %27, %4
  store i32 0, i32* @print_list.first, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @print_list.in_tot, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @print_list.out_tot, align 4
  store i32 %33, i32* %6, align 4
  br label %63

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SEEK_END, align 4
  %37 = call i32 @lseek(i32 %35, i32 -8, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %43 = call i32 @read(i32 %41, i8* %42, i32 8)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @maybe_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %61

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 8
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @maybe_warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %60

54:                                               ; preds = %48
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 4
  %56 = call i32 @le32dec(i8* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %10, align 4
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %59 = call i32 @le32dec(i8* %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %54, %52
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %34
  br label %63

63:                                               ; preds = %62, %31
  %64 = load i64, i64* @vflag, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %84

71:                                               ; preds = %66, %63
  %72 = load i64, i64* @vflag, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = call i8* @ctime(i32* %8)
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  store i8* %77, i8** %14, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 12
  store i8 0, i8* %79, align 1
  %80 = load i32, i32* %9, align 4
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %74, %71
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @print_list.in_tot, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* @print_list.in_tot, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @print_list.out_tot, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* @print_list.out_tot, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @print_list_out(i32 %91, i32 %92, i8* %93)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @maybe_warn(i8*) #1

declare dso_local i32 @maybe_warnx(i8*) #1

declare dso_local i32 @le32dec(i8*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @print_list_out(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
