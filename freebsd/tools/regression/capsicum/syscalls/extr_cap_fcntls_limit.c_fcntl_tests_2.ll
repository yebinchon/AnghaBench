; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_fcntls_limit.c_fcntl_tests_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_fcntls_limit.c_fcntl_tests_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_FCNTL = common dso_local global i32 0, align 4
@CAP_FCNTL_ALL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@CAP_FCNTL_GETFL = common dso_local global i32 0, align 4
@CAP_FCNTL_SETFL = common dso_local global i32 0, align 4
@ENOTCAPABLE = common dso_local global i64 0, align 8
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fcntl_tests_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcntl_tests_2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @CAP_ALL(i32* %4)
  %6 = load i32, i32* @CAP_FCNTL, align 4
  %7 = call i32 @cap_rights_clear(i32* %4, i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @cap_rights_limit(i32 %8, i32* %4)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @CHECK(i32 %11)
  %13 = load i64, i64* @CAP_FCNTL_ALL, align 8
  store i64 %13, i64* %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @cap_fcntls_get(i32 %14, i64* %3)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @CHECK(i32 %17)
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @CHECK(i32 %21)
  store i64 0, i64* @errno, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %25 = load i32, i32* @CAP_FCNTL_SETFL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @cap_fcntls_limit(i32 %23, i32 %26)
  %28 = icmp eq i32 %27, -1
  %29 = zext i1 %28 to i32
  %30 = call i32 @CHECK(i32 %29)
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOTCAPABLE, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @CHECK(i32 %34)
  %36 = load i64, i64* @CAP_FCNTL_ALL, align 8
  store i64 %36, i64* %3, align 8
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @cap_fcntls_get(i32 %37, i64* %3)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @CHECK(i32 %40)
  %42 = load i64, i64* %3, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @CHECK(i32 %44)
  store i64 0, i64* @errno, align 8
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @CAP_FCNTL_GETFL, align 4
  %48 = call i32 @cap_fcntls_limit(i32 %46, i32 %47)
  %49 = icmp eq i32 %48, -1
  %50 = zext i1 %49 to i32
  %51 = call i32 @CHECK(i32 %50)
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @ENOTCAPABLE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @CHECK(i32 %55)
  %57 = load i64, i64* @CAP_FCNTL_ALL, align 8
  store i64 %57, i64* %3, align 8
  %58 = load i32, i32* %2, align 4
  %59 = call i64 @cap_fcntls_get(i32 %58, i64* %3)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @CHECK(i32 %61)
  %63 = load i64, i64* %3, align 8
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @CHECK(i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @F_GETFD, align 4
  %69 = call i32 (i32, i32, ...) @fcntl(i32 %67, i32 %68)
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @CHECK(i32 %71)
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @F_SETFD, align 4
  %75 = load i32, i32* @FD_CLOEXEC, align 4
  %76 = call i32 (i32, i32, ...) @fcntl(i32 %73, i32 %74, i32 %75)
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @CHECK(i32 %78)
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @F_GETFD, align 4
  %82 = call i32 (i32, i32, ...) @fcntl(i32 %80, i32 %81)
  %83 = load i32, i32* @FD_CLOEXEC, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @CHECK(i32 %85)
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @F_SETFD, align 4
  %89 = call i32 (i32, i32, ...) @fcntl(i32 %87, i32 %88, i32 0)
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @CHECK(i32 %91)
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @F_GETFD, align 4
  %95 = call i32 (i32, i32, ...) @fcntl(i32 %93, i32 %94)
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @CHECK(i32 %97)
  store i64 0, i64* @errno, align 8
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @F_GETFL, align 4
  %101 = call i32 (i32, i32, ...) @fcntl(i32 %99, i32 %100)
  %102 = icmp eq i32 %101, -1
  %103 = zext i1 %102 to i32
  %104 = call i32 @CHECK(i32 %103)
  %105 = load i64, i64* @errno, align 8
  %106 = load i64, i64* @ENOTCAPABLE, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @CHECK(i32 %108)
  store i64 0, i64* @errno, align 8
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* @F_SETFL, align 4
  %112 = load i32, i32* @O_NONBLOCK, align 4
  %113 = call i32 (i32, i32, ...) @fcntl(i32 %110, i32 %111, i32 %112)
  %114 = icmp eq i32 %113, -1
  %115 = zext i1 %114 to i32
  %116 = call i32 @CHECK(i32 %115)
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @ENOTCAPABLE, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @CHECK(i32 %120)
  store i64 0, i64* @errno, align 8
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* @F_SETFL, align 4
  %124 = call i32 (i32, i32, ...) @fcntl(i32 %122, i32 %123, i32 0)
  %125 = icmp eq i32 %124, -1
  %126 = zext i1 %125 to i32
  %127 = call i32 @CHECK(i32 %126)
  %128 = load i64, i64* @errno, align 8
  %129 = load i64, i64* @ENOTCAPABLE, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @CHECK(i32 %131)
  store i64 0, i64* @errno, align 8
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* @F_GETFL, align 4
  %135 = call i32 (i32, i32, ...) @fcntl(i32 %133, i32 %134)
  %136 = icmp eq i32 %135, -1
  %137 = zext i1 %136 to i32
  %138 = call i32 @CHECK(i32 %137)
  %139 = load i64, i64* @errno, align 8
  %140 = load i64, i64* @ENOTCAPABLE, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @CHECK(i32 %142)
  ret void
}

declare dso_local i32 @CAP_ALL(i32*) #1

declare dso_local i32 @cap_rights_clear(i32*, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @cap_rights_limit(i32, i32*) #1

declare dso_local i64 @cap_fcntls_get(i32, i64*) #1

declare dso_local i32 @cap_fcntls_limit(i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
