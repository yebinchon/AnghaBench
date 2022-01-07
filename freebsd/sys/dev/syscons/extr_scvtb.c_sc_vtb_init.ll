; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvtb.c_sc_vtb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvtb.c_sc_vtb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@VTB_ALLOCED = common dso_local global i64 0, align 8
@VTB_VALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_vtb_init(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %106 [
    i32 129, label %34
    i32 128, label %34
    i32 130, label %96
  ]

34:                                               ; preds = %6, %6
  %35 = load i8*, i8** %11, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %85

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @M_DEVBUF, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @M_WAITOK, align 4
  br label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @M_NOWAIT, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @malloc(i32 %48, i32 %49, i32 %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %56
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = call i64 @sc_vtb_pointer(%struct.TYPE_4__* %69, i32 0)
  %71 = inttoptr i64 %70 to i8*
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32 @bzero(i8* %71, i32 %77)
  %79 = load i64, i64* @VTB_ALLOCED, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = or i64 %82, %79
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %68, %56
  br label %90

85:                                               ; preds = %37, %34
  %86 = load i8*, i8** %11, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %84
  %91 = load i64, i64* @VTB_VALID, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = or i64 %94, %91
  store i64 %95, i64* %93, align 8
  br label %107

96:                                               ; preds = %6
  %97 = load i8*, i8** %11, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* @VTB_VALID, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = or i64 %104, %101
  store i64 %105, i64* %103, align 8
  br label %107

106:                                              ; preds = %6
  br label %107

107:                                              ; preds = %106, %96, %90
  ret void
}

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @sc_vtb_pointer(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
