; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_read_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_read_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_mem_range = type { i8*, i64, i8* }

@.str = private unnamed_addr constant [17 x i8] c"read_mem: malloc\00", align 1
@errno = common dso_local global i32 0, align 4
@CHELSIO_T4_GET_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, void (i8**, i8*)*)* @read_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mem(i8* %0, i8* %1, void (i8**, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (i8**, i8*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.t4_mem_range, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store void (i8**, i8*)* %2, void (i8**, i8*)** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds %struct.t4_mem_range, %struct.t4_mem_range* %9, i32 0, i32 2
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds %struct.t4_mem_range, %struct.t4_mem_range* %9, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.t4_mem_range, %struct.t4_mem_range* %9, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @malloc(i8* %15)
  %17 = getelementptr inbounds %struct.t4_mem_range, %struct.t4_mem_range* %9, i32 0, i32 1
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.t4_mem_range, %struct.t4_mem_range* %9, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %3
  %25 = load i32, i32* @CHELSIO_T4_GET_MEM, align 4
  %26 = call i32 @doit(i32 %25, %struct.t4_mem_range* %9)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %41

30:                                               ; preds = %24
  %31 = load void (i8**, i8*)*, void (i8**, i8*)** %7, align 8
  %32 = icmp ne void (i8**, i8*)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load void (i8**, i8*)*, void (i8**, i8*)** %7, align 8
  %35 = getelementptr inbounds %struct.t4_mem_range, %struct.t4_mem_range* %9, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8**
  %38 = getelementptr inbounds %struct.t4_mem_range, %struct.t4_mem_range* %9, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  call void %34(i8** %37, i8* %39)
  br label %40

40:                                               ; preds = %33, %30
  br label %41

41:                                               ; preds = %40, %29
  %42 = getelementptr inbounds %struct.t4_mem_range, %struct.t4_mem_range* %9, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8**
  %45 = call i32 @free(i8** %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %41, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @malloc(i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @doit(i32, %struct.t4_mem_range*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
