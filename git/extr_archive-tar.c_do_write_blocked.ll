; ModuleID = '/home/carl/AnghaBench/git/extr_archive-tar.c_do_write_blocked.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-tar.c_do_write_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@offset = common dso_local global i64 0, align 8
@BLOCKSIZE = common dso_local global i64 0, align 8
@block = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @do_write_blocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_write_blocked(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i64, i64* @offset, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load i64, i64* @BLOCKSIZE, align 8
  %12 = load i64, i64* @offset, align 8
  %13 = sub i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %17, %10
  %20 = load i64, i64* @block, align 8
  %21 = load i64, i64* @offset, align 8
  %22 = add i64 %20, %21
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @memcpy(i64 %22, i8* %23, i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @offset, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* @offset, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 %32
  store i8* %34, i8** %5, align 8
  %35 = call i32 (...) @write_if_needed()
  br label %36

36:                                               ; preds = %19, %2
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @BLOCKSIZE, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* @BLOCKSIZE, align 8
  %44 = call i32 @write_or_die(i32 1, i8* %42, i64 %43)
  %45 = load i64, i64* @BLOCKSIZE, align 8
  %46 = load i64, i64* %4, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* @BLOCKSIZE, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %5, align 8
  br label %37

51:                                               ; preds = %37
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i64, i64* @block, align 8
  %56 = load i64, i64* @offset, align 8
  %57 = add i64 %55, %56
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @memcpy(i64 %57, i8* %58, i64 %59)
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @offset, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* @offset, align 8
  br label %64

64:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @write_if_needed(...) #1

declare dso_local i32 @write_or_die(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
