; ModuleID = '/home/carl/AnghaBench/git/compat/extr_win32lazyload.h_get_proc_addr.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_win32lazyload.h_get_proc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_addr = type { i32, i8*, i32, i32 }

@LOAD_LIBRARY_SEARCH_SYSTEM32 = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.proc_addr*)* @get_proc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_proc_addr(%struct.proc_addr* %0) #0 {
  %2 = alloca %struct.proc_addr*, align 8
  %3 = alloca i64, align 8
  store %struct.proc_addr* %0, %struct.proc_addr** %2, align 8
  %4 = load %struct.proc_addr*, %struct.proc_addr** %2, align 8
  %5 = getelementptr inbounds %struct.proc_addr, %struct.proc_addr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = load %struct.proc_addr*, %struct.proc_addr** %2, align 8
  %10 = getelementptr inbounds %struct.proc_addr, %struct.proc_addr* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.proc_addr*, %struct.proc_addr** %2, align 8
  %12 = getelementptr inbounds %struct.proc_addr, %struct.proc_addr* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LOAD_LIBRARY_SEARCH_SYSTEM32, align 4
  %15 = call i64 @LoadLibraryExA(i32 %13, i32* null, i32 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %8
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.proc_addr*, %struct.proc_addr** %2, align 8
  %21 = getelementptr inbounds %struct.proc_addr, %struct.proc_addr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @GetProcAddress(i64 %19, i32 %22)
  %24 = load %struct.proc_addr*, %struct.proc_addr** %2, align 8
  %25 = getelementptr inbounds %struct.proc_addr, %struct.proc_addr* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %18, %8
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.proc_addr*, %struct.proc_addr** %2, align 8
  %29 = getelementptr inbounds %struct.proc_addr, %struct.proc_addr* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOSYS, align 4
  store i32 %33, i32* @errno, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.proc_addr*, %struct.proc_addr** %2, align 8
  %36 = getelementptr inbounds %struct.proc_addr, %struct.proc_addr* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  ret i8* %37
}

declare dso_local i64 @LoadLibraryExA(i32, i32*, i32) #1

declare dso_local i8* @GetProcAddress(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
