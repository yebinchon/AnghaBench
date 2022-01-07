; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_sods.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_sods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.sod = type { i32, i32, i64, i64, i64 }

@dyn = common dso_local global i32* null, align 8
@sdt = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"  Shared object dependencies:\0A\00", align 1
@text_addr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"    -l%-16s version %d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"  Shared object additional paths:\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"    (none)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_sods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_sods() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.sod*, align 8
  %4 = alloca i8*, align 8
  %5 = load i32*, i32** @dyn, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %63

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdt, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %1, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %44, %8
  %14 = load i64, i64* %1, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load i64, i64* @text_addr, align 8
  %18 = load i64, i64* %1, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @align_struct(i64 %19)
  %21 = inttoptr i64 %20 to %struct.sod*
  store %struct.sod* %21, %struct.sod** %3, align 8
  %22 = load i64, i64* @text_addr, align 8
  %23 = load %struct.sod*, %struct.sod** %3, align 8
  %24 = getelementptr inbounds %struct.sod, %struct.sod* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %4, align 8
  %28 = load %struct.sod*, %struct.sod** %3, align 8
  %29 = getelementptr inbounds %struct.sod, %struct.sod* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %16
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.sod*, %struct.sod** %3, align 8
  %35 = getelementptr inbounds %struct.sod, %struct.sod* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sod*, %struct.sod** %3, align 8
  %38 = getelementptr inbounds %struct.sod, %struct.sod* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %36, i32 %39)
  br label %44

41:                                               ; preds = %16
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %32
  %45 = load %struct.sod*, %struct.sod** %3, align 8
  %46 = getelementptr inbounds %struct.sod, %struct.sod* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %1, align 8
  br label %13

48:                                               ; preds = %13
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdt, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %2, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i64, i64* %2, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i64, i64* @text_addr, align 8
  %57 = load i64, i64* %2, align 8
  %58 = add nsw i64 %56, %57
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %63

61:                                               ; preds = %48
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %7, %61, %55
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @align_struct(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
