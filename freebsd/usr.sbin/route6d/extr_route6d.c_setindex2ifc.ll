; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_setindex2ifc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_setindex2ifc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifc = type { i32 }

@index2ifc = common dso_local global %struct.ifc** null, align 8
@nindex2ifc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifc*)* @setindex2ifc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setindex2ifc(i32 %0, %struct.ifc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifc**, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ifc* %1, %struct.ifc** %4, align 8
  %8 = load %struct.ifc**, %struct.ifc*** @index2ifc, align 8
  %9 = icmp ne %struct.ifc** %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  store i32 5, i32* @nindex2ifc, align 4
  %11 = load i32, i32* @nindex2ifc, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = call i64 @malloc(i32 %14)
  %16 = inttoptr i64 %15 to %struct.ifc**
  store %struct.ifc** %16, %struct.ifc*** @index2ifc, align 8
  %17 = load %struct.ifc**, %struct.ifc*** @index2ifc, align 8
  %18 = icmp eq %struct.ifc** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = call i32 @fatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %10
  %22 = load %struct.ifc**, %struct.ifc*** @index2ifc, align 8
  %23 = load i32, i32* @nindex2ifc, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(%struct.ifc** %22, i32 0, i32 %26)
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @nindex2ifc, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @nindex2ifc, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %36, %28
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %6, align 4
  br label %31

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load %struct.ifc**, %struct.ifc*** @index2ifc, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 8, %46
  %48 = trunc i64 %47 to i32
  %49 = call i64 @realloc(%struct.ifc** %44, i32 %48)
  %50 = inttoptr i64 %49 to %struct.ifc**
  store %struct.ifc** %50, %struct.ifc*** %7, align 8
  %51 = load %struct.ifc**, %struct.ifc*** %7, align 8
  %52 = icmp eq %struct.ifc** %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = call i32 @fatal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %43
  %56 = load %struct.ifc**, %struct.ifc*** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ifc*, %struct.ifc** %56, i64 %58
  %60 = load i32, i32* @nindex2ifc, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = mul i64 8, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memset(%struct.ifc** %59, i32 0, i32 %65)
  %67 = load %struct.ifc**, %struct.ifc*** %7, align 8
  store %struct.ifc** %67, %struct.ifc*** @index2ifc, align 8
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* @nindex2ifc, align 4
  br label %69

69:                                               ; preds = %55, %39
  %70 = load %struct.ifc*, %struct.ifc** %4, align 8
  %71 = load %struct.ifc**, %struct.ifc*** @index2ifc, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ifc*, %struct.ifc** %71, i64 %73
  store %struct.ifc* %70, %struct.ifc** %74, align 8
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @memset(%struct.ifc**, i32, i32) #1

declare dso_local i64 @realloc(%struct.ifc**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
