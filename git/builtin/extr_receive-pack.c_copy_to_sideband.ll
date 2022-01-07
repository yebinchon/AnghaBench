; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_copy_to_sideband.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_copy_to_sideband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@keepalive_in_sec = common dso_local global i32 0, align 4
@KEEPALIVE_NEVER = common dso_local global i64 0, align 8
@use_keepalive = common dso_local global i64 0, align 8
@KEEPALIVE_ALWAYS = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@copy_to_sideband.buf = internal constant [6 x i8] c"0005\01\00", align 1
@KEEPALIVE_AFTER_NUL = common dso_local global i64 0, align 8
@use_sideband = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @copy_to_sideband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_to_sideband(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pollfd, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @keepalive_in_sec, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @KEEPALIVE_NEVER, align 8
  store i64 %16, i64* @use_keepalive, align 8
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i64, i64* @use_keepalive, align 8
  %19 = load i64, i64* @KEEPALIVE_ALWAYS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22, %40, %45, %69, %94
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @POLLIN, align 4
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @keepalive_in_sec, align 4
  %32 = mul nsw i32 1000, %31
  %33 = call i32 @poll(%struct.pollfd* %10, i32 1, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EINTR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %23

41:                                               ; preds = %36
  br label %99

42:                                               ; preds = %26
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @write_or_die(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @copy_to_sideband.buf, i64 0, i64 0), i32 5)
  br label %23

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %23
  %50 = load i32, i32* %4, align 4
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %52 = call i32 @xread(i32 %50, i8* %51, i32 128)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %99

56:                                               ; preds = %49
  %57 = load i64, i64* @use_keepalive, align 8
  %58 = load i64, i64* @KEEPALIVE_AFTER_NUL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %94

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %65 = load i32, i32* %9, align 4
  %66 = call i8* @memchr(i8* %64, i8 signext 0, i32 %65)
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %93

69:                                               ; preds = %63
  store i32 1, i32* %8, align 4
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @use_sideband, align 4
  %78 = call i32 @send_sideband(i32 1, i32 2, i8* %70, i32 %76, i32 %77)
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = add nsw i64 %87, 1
  %89 = sub nsw i64 %82, %88
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @use_sideband, align 4
  %92 = call i32 @send_sideband(i32 1, i32 2, i8* %80, i32 %90, i32 %91)
  br label %23

93:                                               ; preds = %63
  br label %94

94:                                               ; preds = %93, %60, %56
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @use_sideband, align 4
  %98 = call i32 @send_sideband(i32 1, i32 2, i8* %95, i32 %96, i32 %97)
  br label %23

99:                                               ; preds = %55, %41
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @close(i32 %100)
  ret i32 0
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @write_or_die(i32, i8*, i32) #1

declare dso_local i32 @xread(i32, i8*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @send_sideband(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
