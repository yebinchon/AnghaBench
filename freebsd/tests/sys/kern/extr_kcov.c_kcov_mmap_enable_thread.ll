; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_kcov.c_kcov_mmap_enable_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_kcov.c_kcov_mmap_enable_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KIOSETBUFSIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KCOV_ENTRY_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@KIOENABLE = common dso_local global i32 0, align 4
@KCOV_MODE_TRACE_PC = common dso_local global i32 0, align 4
@sem1 = common dso_local global i32 0, align 4
@sem2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @kcov_mmap_enable_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kcov_mmap_enable_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @open_kcov()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @KIOSETBUFSIZE, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = load i32, i32* @KCOV_ENTRY_SIZE, align 4
  %12 = sdiv i32 %10, %11
  %13 = call i64 @ioctl(i32 %8, i32 %9, i32 %12)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ATF_REQUIRE(i32 %15)
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* @PROT_READ, align 4
  %19 = load i32, i32* @PROT_WRITE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MAP_SHARED, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @mmap(i32* null, i32 %17, i32 %20, i32 %21, i32 %22, i32 0)
  %24 = load i64, i64* @MAP_FAILED, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ATF_CHECK(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @KIOENABLE, align 4
  %30 = load i32, i32* @KCOV_MODE_TRACE_PC, align 4
  %31 = call i64 @ioctl(i32 %28, i32 %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ATF_CHECK(i32 %33)
  %35 = call i32 @sem_post(i32* @sem1)
  %36 = call i32 @sem_wait(i32* @sem2)
  ret i8* null
}

declare dso_local i32 @open_kcov(...) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @ATF_CHECK(i32) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i32 @sem_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
