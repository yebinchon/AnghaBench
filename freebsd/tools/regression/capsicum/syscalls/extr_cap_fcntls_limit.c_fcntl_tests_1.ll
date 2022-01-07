; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_fcntls_limit.c_fcntl_tests_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_fcntls_limit.c_fcntl_tests_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_FCNTL_GETFL = common dso_local global i64 0, align 8
@CAP_FCNTL = common dso_local global i32 0, align 4
@CAP_FCNTL_ALL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@CAP_FCNTL_SETFL = common dso_local global i64 0, align 8
@ENOTCAPABLE = common dso_local global i64 0, align 8
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fcntl_tests_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcntl_tests_1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i64, i64* @CAP_FCNTL_GETFL, align 8
  %7 = call i32 @cap_fcntls_limit(i32 %5, i64 %6)
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @CHECK(i32 %9)
  store i64 0, i64* %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @cap_fcntls_get(i32 %11, i64* %3)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @CHECK(i32 %14)
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @CAP_FCNTL_GETFL, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @CHECK(i32 %19)
  %21 = call i32 @CAP_ALL(i32* %4)
  %22 = load i32, i32* @CAP_FCNTL, align 4
  %23 = call i32 @cap_rights_clear(i32* %4, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @cap_rights_limit(i32 %24, i32* %4)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @CHECK(i32 %27)
  %29 = load i64, i64* @CAP_FCNTL_ALL, align 8
  store i64 %29, i64* %3, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @cap_fcntls_get(i32 %30, i64* %3)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @CHECK(i32 %33)
  %35 = load i64, i64* %3, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @CHECK(i32 %37)
  store i64 0, i64* @errno, align 8
  %39 = load i32, i32* %2, align 4
  %40 = load i64, i64* @CAP_FCNTL_GETFL, align 8
  %41 = load i64, i64* @CAP_FCNTL_SETFL, align 8
  %42 = or i64 %40, %41
  %43 = call i32 @cap_fcntls_limit(i32 %39, i64 %42)
  %44 = icmp eq i32 %43, -1
  %45 = zext i1 %44 to i32
  %46 = call i32 @CHECK(i32 %45)
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @ENOTCAPABLE, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @CHECK(i32 %50)
  %52 = load i64, i64* @CAP_FCNTL_ALL, align 8
  store i64 %52, i64* %3, align 8
  %53 = load i32, i32* %2, align 4
  %54 = call i64 @cap_fcntls_get(i32 %53, i64* %3)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @CHECK(i32 %56)
  %58 = load i64, i64* %3, align 8
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @CHECK(i32 %60)
  store i64 0, i64* @errno, align 8
  %62 = load i32, i32* %2, align 4
  %63 = load i64, i64* @CAP_FCNTL_GETFL, align 8
  %64 = call i32 @cap_fcntls_limit(i32 %62, i64 %63)
  %65 = icmp eq i32 %64, -1
  %66 = zext i1 %65 to i32
  %67 = call i32 @CHECK(i32 %66)
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @ENOTCAPABLE, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @CHECK(i32 %71)
  %73 = load i64, i64* @CAP_FCNTL_ALL, align 8
  store i64 %73, i64* %3, align 8
  %74 = load i32, i32* %2, align 4
  %75 = call i64 @cap_fcntls_get(i32 %74, i64* %3)
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @CHECK(i32 %77)
  %79 = load i64, i64* %3, align 8
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @CHECK(i32 %81)
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @F_GETFD, align 4
  %85 = call i32 (i32, i32, ...) @fcntl(i32 %83, i32 %84)
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @CHECK(i32 %87)
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @F_SETFD, align 4
  %91 = load i32, i32* @FD_CLOEXEC, align 4
  %92 = call i32 (i32, i32, ...) @fcntl(i32 %89, i32 %90, i32 %91)
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @CHECK(i32 %94)
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @F_GETFD, align 4
  %98 = call i32 (i32, i32, ...) @fcntl(i32 %96, i32 %97)
  %99 = load i32, i32* @FD_CLOEXEC, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @CHECK(i32 %101)
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @F_SETFD, align 4
  %105 = call i32 (i32, i32, ...) @fcntl(i32 %103, i32 %104, i32 0)
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @CHECK(i32 %107)
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @F_GETFD, align 4
  %111 = call i32 (i32, i32, ...) @fcntl(i32 %109, i32 %110)
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @CHECK(i32 %113)
  store i64 0, i64* @errno, align 8
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @F_GETFL, align 4
  %117 = call i32 (i32, i32, ...) @fcntl(i32 %115, i32 %116)
  %118 = icmp eq i32 %117, -1
  %119 = zext i1 %118 to i32
  %120 = call i32 @CHECK(i32 %119)
  %121 = load i64, i64* @errno, align 8
  %122 = load i64, i64* @ENOTCAPABLE, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @CHECK(i32 %124)
  store i64 0, i64* @errno, align 8
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* @F_SETFL, align 4
  %128 = load i32, i32* @O_NONBLOCK, align 4
  %129 = call i32 (i32, i32, ...) @fcntl(i32 %126, i32 %127, i32 %128)
  %130 = icmp eq i32 %129, -1
  %131 = zext i1 %130 to i32
  %132 = call i32 @CHECK(i32 %131)
  %133 = load i64, i64* @errno, align 8
  %134 = load i64, i64* @ENOTCAPABLE, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @CHECK(i32 %136)
  store i64 0, i64* @errno, align 8
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* @F_SETFL, align 4
  %140 = call i32 (i32, i32, ...) @fcntl(i32 %138, i32 %139, i32 0)
  %141 = icmp eq i32 %140, -1
  %142 = zext i1 %141 to i32
  %143 = call i32 @CHECK(i32 %142)
  %144 = load i64, i64* @errno, align 8
  %145 = load i64, i64* @ENOTCAPABLE, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @CHECK(i32 %147)
  store i64 0, i64* @errno, align 8
  %149 = load i32, i32* %2, align 4
  %150 = load i32, i32* @F_GETFL, align 4
  %151 = call i32 (i32, i32, ...) @fcntl(i32 %149, i32 %150)
  %152 = icmp eq i32 %151, -1
  %153 = zext i1 %152 to i32
  %154 = call i32 @CHECK(i32 %153)
  %155 = load i64, i64* @errno, align 8
  %156 = load i64, i64* @ENOTCAPABLE, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @CHECK(i32 %158)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @cap_fcntls_limit(i32, i64) #1

declare dso_local i64 @cap_fcntls_get(i32, i64*) #1

declare dso_local i32 @CAP_ALL(i32*) #1

declare dso_local i32 @cap_rights_clear(i32*, i32) #1

declare dso_local i64 @cap_rights_limit(i32, i32*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
