; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_get_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptrace_io_desc = type { i8*, i64, i8*, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@MAXSIZE = common dso_local global i64 0, align 8
@PIOD_READ_D = common dso_local global i32 0, align 4
@PT_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i64, i32)* @get_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_string(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ptrace_io_desc, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  br label %32

20:                                               ; preds = %3
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = urem i64 %22, %23
  %25 = sub i64 %21, %24
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @MAXSIZE, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* @MAXSIZE, align 8
  store i64 %30, i64* %12, align 8
  br label %31

31:                                               ; preds = %29, %20
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i64, i64* %12, align 8
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i8* @malloc(i64 %34)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8* null, i8** %4, align 8
  br label %116

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %115, %39
  %41 = load i32, i32* @PIOD_READ_D, align 4
  %42 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 3
  store i32 %41, i32* %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %43, %44
  %46 = inttoptr i64 %45 to i8*
  %47 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %8, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* @PT_IO, align 4
  %55 = load i32, i32* %5, align 4
  %56 = ptrtoint %struct.ptrace_io_desc* %8 to i32
  %57 = call i64 @ptrace(i32 %54, i32 %55, i32 %56, i32 0)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %40
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @free(i8* %60)
  store i8* null, i8** %4, align 8
  br label %116

62:                                               ; preds = %40
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i64, i64* %12, align 8
  %67 = call i32* @memchr(i8* %65, i8 signext 0, i64 %66)
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i8*, i8** %9, align 8
  store i8* %70, i8** %4, align 8
  br label %116

71:                                               ; preds = %62
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* @MAXSIZE, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = load i64, i64* @MAXSIZE, align 8
  %83 = load i64, i64* %13, align 8
  %84 = sub i64 %82, %83
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* @PAGE_SIZE, align 8
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %88, %81
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %92, %93
  %95 = call i8* @realloc(i8* %91, i64 %94)
  store i8* %95, i8** %10, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i8*, i8** %9, align 8
  %100 = load i64, i64* %13, align 8
  %101 = sub i64 %100, 1
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 0, i8* %102, align 1
  %103 = load i8*, i8** %9, align 8
  store i8* %103, i8** %4, align 8
  br label %116

104:                                              ; preds = %90
  %105 = load i8*, i8** %10, align 8
  store i8* %105, i8** %9, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %13, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %13, align 8
  br label %115

109:                                              ; preds = %78, %71
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %13, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %9, align 8
  store i8* %114, i8** %4, align 8
  br label %116

115:                                              ; preds = %104
  br label %40

116:                                              ; preds = %109, %98, %69, %59, %38
  %117 = load i8*, i8** %4, align 8
  ret i8* %117
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @memchr(i8*, i8 signext, i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
