; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test_relative.c_test_relative.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test_relative.c_test_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PASSED = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@CAP_SEEK = common dso_local global i32 0, align 4
@CAP_LOOKUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"/etc/\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@cap_getrights = common dso_local global i32 0, align 4
@CAP_ALL = common dso_local global i32 0, align 4
@CAP_MASK_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"/etc/passwd\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"../etc/passwd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_relative() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @PASSED, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @CAP_READ, align 4
  %12 = load i32, i32* @CAP_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CAP_SEEK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CAP_LOOKUP, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = call i32 @REQUIRE(i32 %19)
  %21 = load i32, i32* @cap_getrights, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32 (i32, i8*, i32)*
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* %23, i32 %24, i32* %9)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CAP_ALL, align 4
  %28 = call i32 @CHECK_RIGHTS(i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @CAP_READ, align 4
  %32 = call i32 @MAKE_CAPABILITY(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CAP_READ, align 4
  %36 = load i32, i32* @CAP_LOOKUP, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @MAKE_CAPABILITY(i32 %33, i32 %34, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @MAKE_CAPABILITY(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @CAP_MASK_VALID, align 4
  %46 = call i32 @MAKE_CAPABILITY(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @O_RDONLY, align 4
  %49 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @AT_FDCWD, align 4
  %51 = load i32, i32* @O_RDONLY, align 4
  %52 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @O_RDONLY, align 4
  %55 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @O_RDONLY, align 4
  %58 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @O_RDONLY, align 4
  %61 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @O_RDONLY, align 4
  %64 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @O_RDONLY, align 4
  %67 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @O_RDONLY, align 4
  %70 = call i32 @CHECK_NOTCAPABLE(i32 (i32, i8*, i32)* @openat, i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @O_RDONLY, align 4
  %73 = call i32 @CHECK_NOTCAPABLE(i32 (i32, i8*, i32)* @openat, i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @O_RDONLY, align 4
  %76 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @cap_getrights, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i32 (i32, i8*, i32)*
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* %79, i32 %80, i32* %9)
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @O_RDONLY, align 4
  %84 = call i32 @openat(i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  store i32 %84, i32* %2, align 4
  %85 = call i32 @REQUIRE(i32 %84)
  %86 = load i32, i32* @cap_getrights, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i32 (i32, i8*, i32)*
  %89 = load i32, i32* %2, align 4
  %90 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* %88, i32 %89, i32* %9)
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @CHECK_RIGHTS(i32 %91, i32 %92)
  %94 = call i32 (...) @cap_enter()
  %95 = call i32 @REQUIRE(i32 %94)
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @O_RDONLY, align 4
  %98 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @O_RDONLY, align 4
  %101 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @O_RDONLY, align 4
  %104 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @O_RDONLY, align 4
  %107 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* @openat, i32 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @O_RDONLY, align 4
  %110 = call i32 @CHECK_NOTCAPABLE(i32 (i32, i8*, i32)* @openat, i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @AT_FDCWD, align 4
  %112 = load i32, i32* @O_RDONLY, align 4
  %113 = call i32 @CHECK_CAPMODE(i32 (i32, i8*, i32)* @openat, i32 %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @O_RDONLY, align 4
  %116 = call i32 @CHECK_NOTCAPABLE(i32 (i32, i8*, i32)* @openat, i32 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @O_RDONLY, align 4
  %119 = call i32 @CHECK_NOTCAPABLE(i32 (i32, i8*, i32)* @openat, i32 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @O_RDONLY, align 4
  %122 = call i32 @CHECK_NOTCAPABLE(i32 (i32, i8*, i32)* @openat, i32 %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @O_RDONLY, align 4
  %125 = call i32 @CHECK_NOTCAPABLE(i32 (i32, i8*, i32)* @openat, i32 %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @O_RDONLY, align 4
  %128 = call i32 @openat(i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  store i32 %128, i32* %2, align 4
  %129 = call i32 @REQUIRE(i32 %128)
  %130 = load i32, i32* @cap_getrights, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i32 (i32, i8*, i32)*
  %133 = load i32, i32* %2, align 4
  %134 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* %132, i32 %133, i32* %9)
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @O_RDONLY, align 4
  %137 = call i32 @openat(i32 %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  store i32 %137, i32* %2, align 4
  %138 = call i32 @REQUIRE(i32 %137)
  %139 = load i32, i32* @cap_getrights, align 4
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i32 (i32, i8*, i32)*
  %142 = load i32, i32* %2, align 4
  %143 = call i32 (i32 (i32, i8*, i32)*, i32, ...) @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)* %141, i32 %142, i32* %9)
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @CHECK_RIGHTS(i32 %144, i32 %145)
  %147 = load i32, i32* %1, align 4
  ret i32 %147
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i8*, i32)*, i32, ...) #1

declare dso_local i32 @CHECK_RIGHTS(i32, i32) #1

declare dso_local i32 @MAKE_CAPABILITY(i32, i32, i32) #1

declare dso_local i32 @openat(i32, i8*, i32) #1

declare dso_local i32 @CHECK_NOTCAPABLE(i32 (i32, i8*, i32)*, i32, i8*, i32) #1

declare dso_local i32 @cap_enter(...) #1

declare dso_local i32 @CHECK_CAPMODE(i32 (i32, i8*, i32)*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
