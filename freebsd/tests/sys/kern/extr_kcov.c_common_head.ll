; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_kcov.c_common_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_kcov.c_common_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KIOSETBUFSIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KCOV_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to set the kcov buffer size\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to mmap the kcov buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @common_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @common_head(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 (...) @open_kcov()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @KIOSETBUFSIZE, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = load i32, i32* @KCOV_ENTRY_SIZE, align 4
  %10 = sdiv i32 %8, %9
  %11 = call i64 @ioctl(i32 %6, i32 %7, i32 %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ATF_REQUIRE_MSG(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load i32, i32* @PROT_READ, align 4
  %17 = load i32, i32* @PROT_WRITE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MAP_SHARED, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @mmap(i32* null, i32 %15, i32 %18, i32 %19, i32 %20, i32 0)
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** @MAP_FAILED, align 8
  %24 = icmp ne i8* %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ATF_REQUIRE_MSG(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  %28 = load i32*, i32** %2, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

declare dso_local i32 @open_kcov(...) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
