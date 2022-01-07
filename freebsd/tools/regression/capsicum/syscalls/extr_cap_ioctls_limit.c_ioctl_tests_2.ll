; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_ioctl_tests_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_ioctl_tests_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_IOCTL = common dso_local global i32 0, align 4
@FIOCLEX = common dso_local global i64 0, align 8
@FIONCLEX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOTCAPABLE = common dso_local global i64 0, align 8
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ioctl_tests_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioctl_tests_2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i64], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @CAP_ALL(i32* %4)
  %6 = load i32, i32* @CAP_IOCTL, align 4
  %7 = call i32 @cap_rights_clear(i32* %4, i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @cap_rights_limit(i32 %8, i32* %4)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @CHECK(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %16 = call i32 @nitems(i64* %15)
  %17 = call i64 @cap_ioctls_get(i32 %13, i64* %14, i32 %16)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @CHECK(i32 %19)
  %21 = load i64, i64* @FIOCLEX, align 8
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %21, i64* %22, align 16
  %23 = load i64, i64* @FIONCLEX, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 %23, i64* %24, align 8
  store i64 0, i64* @errno, align 8
  %25 = load i32, i32* %2, align 4
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %28 = call i32 @nitems(i64* %27)
  %29 = call i32 @cap_ioctls_limit(i32 %25, i64* %26, i32 %28)
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @CHECK(i32 %31)
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ENOTCAPABLE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @CHECK(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %41 = call i32 @nitems(i64* %40)
  %42 = call i64 @cap_ioctls_get(i32 %38, i64* %39, i32 %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @CHECK(i32 %44)
  %46 = load i64, i64* @FIOCLEX, align 8
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %46, i64* %47, align 16
  store i64 0, i64* @errno, align 8
  %48 = load i32, i32* %2, align 4
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %50 = call i32 @cap_ioctls_limit(i32 %48, i64* %49, i32 1)
  %51 = icmp eq i32 %50, -1
  %52 = zext i1 %51 to i32
  %53 = call i32 @CHECK(i32 %52)
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @ENOTCAPABLE, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @CHECK(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %62 = call i32 @nitems(i64* %61)
  %63 = call i64 @cap_ioctls_get(i32 %59, i64* %60, i32 %62)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @CHECK(i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @F_GETFD, align 4
  %69 = call i64 (i32, i32, ...) @fcntl(i32 %67, i32 %68)
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @CHECK(i32 %71)
  store i64 0, i64* @errno, align 8
  %73 = load i32, i32* %2, align 4
  %74 = load i64, i64* @FIOCLEX, align 8
  %75 = call i32 @ioctl(i32 %73, i64 %74)
  %76 = icmp eq i32 %75, -1
  %77 = zext i1 %76 to i32
  %78 = call i32 @CHECK(i32 %77)
  %79 = load i64, i64* @errno, align 8
  %80 = load i64, i64* @ENOTCAPABLE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @CHECK(i32 %82)
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @F_GETFD, align 4
  %86 = call i64 (i32, i32, ...) @fcntl(i32 %84, i32 %85)
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @CHECK(i32 %88)
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @F_SETFD, align 4
  %92 = load i64, i64* @FD_CLOEXEC, align 8
  %93 = call i64 (i32, i32, ...) @fcntl(i32 %90, i32 %91, i64 %92)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @CHECK(i32 %95)
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @F_GETFD, align 4
  %99 = call i64 (i32, i32, ...) @fcntl(i32 %97, i32 %98)
  %100 = load i64, i64* @FD_CLOEXEC, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @CHECK(i32 %102)
  store i64 0, i64* @errno, align 8
  %104 = load i32, i32* %2, align 4
  %105 = load i64, i64* @FIONCLEX, align 8
  %106 = call i32 @ioctl(i32 %104, i64 %105)
  %107 = icmp eq i32 %106, -1
  %108 = zext i1 %107 to i32
  %109 = call i32 @CHECK(i32 %108)
  %110 = load i64, i64* @errno, align 8
  %111 = load i64, i64* @ENOTCAPABLE, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @CHECK(i32 %113)
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @F_GETFD, align 4
  %117 = call i64 (i32, i32, ...) @fcntl(i32 %115, i32 %116)
  %118 = load i64, i64* @FD_CLOEXEC, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @CHECK(i32 %120)
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* @F_SETFD, align 4
  %124 = call i64 (i32, i32, ...) @fcntl(i32 %122, i32 %123, i32 0)
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @CHECK(i32 %126)
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* @F_GETFD, align 4
  %130 = call i64 (i32, i32, ...) @fcntl(i32 %128, i32 %129)
  %131 = icmp eq i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @CHECK(i32 %132)
  ret void
}

declare dso_local i32 @CAP_ALL(i32*) #1

declare dso_local i32 @cap_rights_clear(i32*, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @cap_rights_limit(i32, i32*) #1

declare dso_local i64 @cap_ioctls_get(i32, i64*, i32) #1

declare dso_local i32 @nitems(i64*) #1

declare dso_local i32 @cap_ioctls_limit(i32, i64*, i32) #1

declare dso_local i64 @fcntl(i32, i32, ...) #1

declare dso_local i32 @ioctl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
