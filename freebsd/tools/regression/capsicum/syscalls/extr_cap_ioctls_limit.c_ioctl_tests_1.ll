; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_ioctl_tests_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/capsicum/syscalls/extr_cap_ioctls_limit.c_ioctl_tests_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIOCLEX = common dso_local global i64 0, align 8
@CAP_IOCTL = common dso_local global i32 0, align 4
@FIONCLEX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOTCAPABLE = common dso_local global i64 0, align 8
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ioctl_tests_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioctl_tests_1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i64], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @FIOCLEX, align 8
  %6 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %5, i64* %6, align 16
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %9 = call i32 @cap_ioctls_limit(i32 %7, i64* %8, i32 1)
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @CHECK(i32 %11)
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 0, i64* %14, align 16
  %15 = load i32, i32* %2, align 4
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %18 = call i32 @nitems(i64* %17)
  %19 = call i32 @cap_ioctls_get(i32 %15, i64* %16, i32 %18)
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @CHECK(i32 %21)
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %24 = load i64, i64* %23, align 16
  %25 = load i64, i64* @FIOCLEX, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @CHECK(i32 %27)
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @CHECK(i32 %32)
  %34 = call i32 @CAP_ALL(i32* %4)
  %35 = load i32, i32* @CAP_IOCTL, align 4
  %36 = call i32 @cap_rights_clear(i32* %4, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @cap_rights_limit(i32 %37, i32* %4)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @CHECK(i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %45 = call i32 @nitems(i64* %44)
  %46 = call i32 @cap_ioctls_get(i32 %42, i64* %43, i32 %45)
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @CHECK(i32 %48)
  %50 = load i64, i64* @FIOCLEX, align 8
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %50, i64* %51, align 16
  %52 = load i64, i64* @FIONCLEX, align 8
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 %52, i64* %53, align 8
  store i64 0, i64* @errno, align 8
  %54 = load i32, i32* %2, align 4
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %57 = call i32 @nitems(i64* %56)
  %58 = call i32 @cap_ioctls_limit(i32 %54, i64* %55, i32 %57)
  %59 = icmp eq i32 %58, -1
  %60 = zext i1 %59 to i32
  %61 = call i32 @CHECK(i32 %60)
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @ENOTCAPABLE, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @CHECK(i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %70 = call i32 @nitems(i64* %69)
  %71 = call i32 @cap_ioctls_get(i32 %67, i64* %68, i32 %70)
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @CHECK(i32 %73)
  %75 = load i64, i64* @FIOCLEX, align 8
  %76 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 %75, i64* %76, align 16
  store i64 0, i64* @errno, align 8
  %77 = load i32, i32* %2, align 4
  %78 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %79 = call i32 @cap_ioctls_limit(i32 %77, i64* %78, i32 1)
  %80 = icmp eq i32 %79, -1
  %81 = zext i1 %80 to i32
  %82 = call i32 @CHECK(i32 %81)
  %83 = load i64, i64* @errno, align 8
  %84 = load i64, i64* @ENOTCAPABLE, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @CHECK(i32 %86)
  %88 = load i32, i32* %2, align 4
  %89 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %90 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %91 = call i32 @nitems(i64* %90)
  %92 = call i32 @cap_ioctls_get(i32 %88, i64* %89, i32 %91)
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @CHECK(i32 %94)
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @F_GETFD, align 4
  %98 = call i64 (i32, i32, ...) @fcntl(i32 %96, i32 %97)
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @CHECK(i32 %100)
  store i64 0, i64* @errno, align 8
  %102 = load i32, i32* %2, align 4
  %103 = load i64, i64* @FIOCLEX, align 8
  %104 = call i32 @ioctl(i32 %102, i64 %103)
  %105 = icmp eq i32 %104, -1
  %106 = zext i1 %105 to i32
  %107 = call i32 @CHECK(i32 %106)
  %108 = load i64, i64* @errno, align 8
  %109 = load i64, i64* @ENOTCAPABLE, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @CHECK(i32 %111)
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* @F_GETFD, align 4
  %115 = call i64 (i32, i32, ...) @fcntl(i32 %113, i32 %114)
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @CHECK(i32 %117)
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* @F_SETFD, align 4
  %121 = load i64, i64* @FD_CLOEXEC, align 8
  %122 = call i64 (i32, i32, ...) @fcntl(i32 %119, i32 %120, i64 %121)
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @CHECK(i32 %124)
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* @F_GETFD, align 4
  %128 = call i64 (i32, i32, ...) @fcntl(i32 %126, i32 %127)
  %129 = load i64, i64* @FD_CLOEXEC, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @CHECK(i32 %131)
  store i64 0, i64* @errno, align 8
  %133 = load i32, i32* %2, align 4
  %134 = load i64, i64* @FIONCLEX, align 8
  %135 = call i32 @ioctl(i32 %133, i64 %134)
  %136 = icmp eq i32 %135, -1
  %137 = zext i1 %136 to i32
  %138 = call i32 @CHECK(i32 %137)
  %139 = load i64, i64* @errno, align 8
  %140 = load i64, i64* @ENOTCAPABLE, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @CHECK(i32 %142)
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* @F_GETFD, align 4
  %146 = call i64 (i32, i32, ...) @fcntl(i32 %144, i32 %145)
  %147 = load i64, i64* @FD_CLOEXEC, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @CHECK(i32 %149)
  %151 = load i32, i32* %2, align 4
  %152 = load i32, i32* @F_SETFD, align 4
  %153 = call i64 (i32, i32, ...) @fcntl(i32 %151, i32 %152, i32 0)
  %154 = icmp eq i64 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @CHECK(i32 %155)
  %157 = load i32, i32* %2, align 4
  %158 = load i32, i32* @F_GETFD, align 4
  %159 = call i64 (i32, i32, ...) @fcntl(i32 %157, i32 %158)
  %160 = icmp eq i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @CHECK(i32 %161)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @cap_ioctls_limit(i32, i64*, i32) #1

declare dso_local i32 @cap_ioctls_get(i32, i64*, i32) #1

declare dso_local i32 @nitems(i64*) #1

declare dso_local i32 @CAP_ALL(i32*) #1

declare dso_local i32 @cap_rights_clear(i32*, i32) #1

declare dso_local i64 @cap_rights_limit(i32, i32*) #1

declare dso_local i64 @fcntl(i32, i32, ...) #1

declare dso_local i32 @ioctl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
