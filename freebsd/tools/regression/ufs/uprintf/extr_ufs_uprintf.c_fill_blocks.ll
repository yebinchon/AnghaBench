; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/ufs/uprintf/extr_ufs_uprintf.c_fill_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/ufs/uprintf/extr_ufs_uprintf.c_fill_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCKSIZE = common dso_local global i32 0, align 4
@BLOCKS_FILENAME = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fill_blocks: open(%s)\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"fill_blocks: write(%d) returned %zd\00", align 1
@ENOSPC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"fill_blocks: write\00", align 1
@NUMTRIES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"fill_blocks: write after ENOSPC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fill_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_blocks() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @BLOCKSIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @BLOCKS_FILENAME, align 4
  %11 = load i32, i32* @O_CREAT, align 4
  %12 = load i32, i32* @O_TRUNC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i32 %10, i32 %15, i32 384)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* @BLOCKS_FILENAME, align 4
  %21 = call i32 @err(i32 -1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %0
  %23 = load i32, i32* @BLOCKSIZE, align 4
  %24 = call i32 @bzero(i8* %9, i32 %23)
  store i64 0, i64* @errno, align 8
  br label %25

25:                                               ; preds = %47, %22
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @BLOCKSIZE, align 4
  %29 = call i64 @write(i32 %27, i8* %9, i32 %28)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %48

33:                                               ; preds = %26
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* @BLOCKSIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* @BLOCKSIZE, align 4
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %39, i64 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i32, i32* @BLOCKS_FILENAME, align 4
  %45 = call i32 @unlink(i32 %44)
  %46 = call i32 @exit(i32 -1) #4
  unreachable

47:                                               ; preds = %33
  br label %25

48:                                               ; preds = %32
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @ENOSPC, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i32, i32* @BLOCKS_FILENAME, align 4
  %57 = call i32 @unlink(i32 %56)
  %58 = call i32 @exit(i32 -1) #4
  unreachable

59:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %82, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @NUMTRIES, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @BLOCKSIZE, align 4
  %67 = call i64 @write(i32 %65, i8* %9, i32 %66)
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %3, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @ENOSPC, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load i32, i32* @BLOCKS_FILENAME, align 4
  %79 = call i32 @unlink(i32 %78)
  %80 = call i32 @exit(i32 -1) #4
  unreachable

81:                                               ; preds = %70, %64
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %60

85:                                               ; preds = %60
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @close(i32 %86)
  %88 = load i32, i32* @BLOCKS_FILENAME, align 4
  %89 = call i32 @unlink(i32 %88)
  %90 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %90)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @err(i32, i8*, i32) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i64 @write(i32, i8*, i32) #2

declare dso_local i32 @warnx(i8*, i32, i64) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unlink(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @warn(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
