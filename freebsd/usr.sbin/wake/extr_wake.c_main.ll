; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/wake/extr_wake.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/wake/extr_wake.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IF_NAMESIZE = common dso_local global i32 0, align 4
@_PATH_BPF = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot open bpf interface\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to determine ethernet interface\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot bind to interface `%s'\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Cannot send Wake on LAN frame over `%s' to `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @IF_NAMESIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32, i32* @_PATH_BPF, align 4
  %21 = load i32, i32* @O_RDWR, align 4
  %22 = call i32 @open(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  store i32 2, i32* %7, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @bind_if_to_bpf(i8* %29, i32 %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = trunc i64 %12 to i32
  %35 = call i64 @find_ether(i8* %14, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @bind_if_to_bpf(i8* %14, i32 %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  br label %54

48:                                               ; preds = %26
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = trunc i64 %12 to i32
  %53 = call i32 @strlcpy(i8* %14, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %54
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %82, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @wake(i32 %66, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  store i32 1, i32* %8, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %14, i8* %79)
  br label %81

81:                                               ; preds = %74, %65
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %61

85:                                               ; preds = %61
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @exit(i32 %86) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @open(i32, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @bind_if_to_bpf(i8*, i32) #2

declare dso_local i64 @find_ether(i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @wake(i32, i8*) #2

declare dso_local i32 @warn(i8*, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
