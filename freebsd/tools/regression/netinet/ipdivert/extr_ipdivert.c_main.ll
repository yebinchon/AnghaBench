; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipdivert/extr_ipdivert.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/ipdivert/extr_ipdivert.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"create_close\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"create_bind_close\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"create2_bind2_close2\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"create2_bind2_conflict_close2\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @ipdivert_create(i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ipdivert_close(i8* %11, i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @ok(i8* %14)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @ipdivert_create(i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ipdivert_bind(i8* %18, i32 %19, i32 1000, i32 0)
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ipdivert_close(i8* %21, i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @ok(i8* %24)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @ipdivert_create(i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @ipdivert_create(i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ipdivert_bind(i8* %30, i32 %31, i32 1000, i32 0)
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ipdivert_bind(i8* %33, i32 %34, i32 1001, i32 0)
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ipdivert_close(i8* %36, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ipdivert_close(i8* %39, i32 %40)
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @ok(i8* %42)
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @ipdivert_create(i8* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @ipdivert_create(i8* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @ipdivert_bind(i8* %48, i32 %49, i32 1000, i32 0)
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @EADDRINUSE, align 4
  %54 = call i32 @ipdivert_bind(i8* %51, i32 %52, i32 1000, i32 %53)
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ipdivert_close(i8* %55, i32 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ipdivert_close(i8* %58, i32 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @ok(i8* %61)
  ret i32 0
}

declare dso_local i32 @ipdivert_create(i8*) #1

declare dso_local i32 @ipdivert_close(i8*, i32) #1

declare dso_local i32 @ok(i8*) #1

declare dso_local i32 @ipdivert_bind(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
