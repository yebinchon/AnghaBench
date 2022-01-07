; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRINT = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sb:h\00", align 1
@SAVE = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid base address.\0D\0A\00", align 1
@base_addr = common dso_local global i64 0, align 8
@PCI_ROM_RESERVED_MASK = common dso_local global i64 0, align 8
@_PATH_DEVPCI = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %6, align 4
  %13 = load i32, i32* @PRINT, align 4
  store i32 %13, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @basename(i8* %16)
  store i32 %17, i32* @progname, align 4
  br label %18

18:                                               ; preds = %32, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %30 [
    i32 115, label %25
    i32 98, label %27
    i32 104, label %29
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @SAVE, align 4
  store i32 %26, i32* %9, align 4
  br label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** %10, align 8
  br label %32

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %23, %29
  %31 = call i32 (...) @usage()
  br label %32

32:                                               ; preds = %30, %27, %25
  br label %18

33:                                               ; preds = %18
  %34 = load i64, i64* @optind, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load i64, i64* @optind, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 %39
  store i8** %41, i8*** %5, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %33
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @strtoumax(i8* %45, i8** %11, i32 16)
  store i64 %46, i64* %12, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 (...) @usage()
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i64, i64* %12, align 8
  store i64 %56, i64* @base_addr, align 8
  %57 = load i64, i64* @PCI_ROM_RESERVED_MASK, align 8
  %58 = xor i64 %57, -1
  %59 = load i64, i64* @base_addr, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* @base_addr, align 8
  br label %61

61:                                               ; preds = %55, %33
  %62 = load i32, i32* %4, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i32, i32* @_PATH_DEVPCI, align 4
  %68 = load i32, i32* @O_RDWR, align 4
  %69 = call i32 @open(i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %78

73:                                               ; preds = %66
  %74 = call i32 (...) @banner()
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @pci_enum_devs(i32 %75, i32 %76)
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %73, %71
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @close(i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @EXIT_FAILURE, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @exit(i32 %92) #3
  unreachable
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strtoumax(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @banner(...) #1

declare dso_local i32 @pci_enum_devs(i32, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
