; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_lookup_imap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_bus_subr.c_ofw_bus_lookup_imap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_bus_iinfo = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"ofw_bus_lookup_imap: register size too small: %d < %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"ofw_bus_lookup_imap: cannot get reg property\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_bus_lookup_imap(i32 %0, %struct.ofw_bus_iinfo* %1, i8* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ofw_bus_iinfo*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store %struct.ofw_bus_iinfo* %1, %struct.ofw_bus_iinfo** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %16, align 4
  %26 = add nsw i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %20, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %21, align 8
  %30 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %12, align 8
  %31 = getelementptr inbounds %struct.ofw_bus_iinfo, %struct.ofw_bus_iinfo* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  store i32 1, i32* %23, align 4
  br label %82

35:                                               ; preds = %9
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %12, align 8
  %38 = getelementptr inbounds %struct.ofw_bus_iinfo, %struct.ofw_bus_iinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %12, align 8
  %44 = getelementptr inbounds %struct.ofw_bus_iinfo, %struct.ofw_bus_iinfo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @KASSERT(i32 %41, i8* %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %62

51:                                               ; preds = %35
  %52 = load i32, i32* %11, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @OF_getencprop(i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %53, i32 %54)
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %51
  br label %62

62:                                               ; preds = %61, %35
  %63 = load i8*, i8** %15, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %12, align 8
  %67 = getelementptr inbounds %struct.ofw_bus_iinfo, %struct.ofw_bus_iinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %12, align 8
  %70 = getelementptr inbounds %struct.ofw_bus_iinfo, %struct.ofw_bus_iinfo* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %12, align 8
  %73 = getelementptr inbounds %struct.ofw_bus_iinfo, %struct.ofw_bus_iinfo* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %12, align 8
  %76 = getelementptr inbounds %struct.ofw_bus_iinfo, %struct.ofw_bus_iinfo* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %17, align 8
  %79 = load i32, i32* %18, align 4
  %80 = load i32*, i32** %19, align 8
  %81 = call i32 @ofw_bus_search_intrmap(i8* %63, i32 %64, i8* %65, i32 %68, i32 %71, i64 %74, i32 %77, i32* %29, i8* %78, i32 %79, i32* %80)
  store i32 %81, i32* %10, align 4
  store i32 1, i32* %23, align 4
  br label %82

82:                                               ; preds = %62, %34
  %83 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @OF_getencprop(i32, i8*, i8*, i32) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @ofw_bus_search_intrmap(i8*, i32, i8*, i32, i32, i64, i32, i32*, i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
