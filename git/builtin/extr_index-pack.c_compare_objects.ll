; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_compare_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_compare_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compare_data = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"SHA1 COLLISION FOUND WITH %s !\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unable to read %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @compare_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_objects(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.compare_data*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.compare_data*
  store %struct.compare_data* %10, %struct.compare_data** %7, align 8
  %11 = load %struct.compare_data*, %struct.compare_data** %7, align 8
  %12 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.compare_data*, %struct.compare_data** %7, align 8
  %18 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @free(i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @xmalloc(i64 %21)
  %23 = load %struct.compare_data*, %struct.compare_data** %7, align 8
  %24 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.compare_data*, %struct.compare_data** %7, align 8
  %27 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %16, %3
  br label %29

29:                                               ; preds = %81, %28
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %88

32:                                               ; preds = %29
  %33 = load %struct.compare_data*, %struct.compare_data** %7, align 8
  %34 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.compare_data*, %struct.compare_data** %7, align 8
  %37 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @read_istream(i32 %35, i32 %38, i64 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.compare_data*, %struct.compare_data** %7, align 8
  %46 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @oid_to_hex(i32* %49)
  %51 = call i32 @die(i32 %44, i32 %50)
  br label %52

52:                                               ; preds = %43, %32
  %53 = load i64, i64* %8, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.compare_data*, %struct.compare_data** %7, align 8
  %58 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @oid_to_hex(i32* %61)
  %63 = call i32 @die(i32 %56, i32 %62)
  br label %64

64:                                               ; preds = %55, %52
  %65 = load i8*, i8** %4, align 8
  %66 = load %struct.compare_data*, %struct.compare_data** %7, align 8
  %67 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @memcmp(i8* %65, i32 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.compare_data*, %struct.compare_data** %7, align 8
  %75 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i32 @oid_to_hex(i32* %78)
  %80 = call i32 @die(i32 %73, i32 %79)
  br label %81

81:                                               ; preds = %72, %64
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %5, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %4, align 8
  br label %29

88:                                               ; preds = %29
  ret i32 0
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xmalloc(i64) #1

declare dso_local i64 @read_istream(i32, i32, i64) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
