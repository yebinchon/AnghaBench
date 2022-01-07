; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filedesc = type { i32, i32, i32, %struct.filedescent* }
%struct.filedescent = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DFLAG_PASSABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.filedesc* @fdcopy(%struct.filedesc* %0) #0 {
  %2 = alloca %struct.filedesc*, align 8
  %3 = alloca %struct.filedesc*, align 8
  %4 = alloca %struct.filedescent*, align 8
  %5 = alloca %struct.filedescent*, align 8
  %6 = alloca i32, align 4
  store %struct.filedesc* %0, %struct.filedesc** %2, align 8
  %7 = load %struct.filedesc*, %struct.filedesc** %2, align 8
  %8 = icmp ne %struct.filedesc* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @MPASS(i32 %9)
  %11 = load %struct.filedesc*, %struct.filedesc** %2, align 8
  %12 = call %struct.filedesc* @fdinit(%struct.filedesc* %11, i32 1)
  store %struct.filedesc* %12, %struct.filedesc** %3, align 8
  %13 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %14 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %81, %1
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.filedesc*, %struct.filedesc** %2, align 8
  %18 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %15
  %22 = load %struct.filedesc*, %struct.filedesc** %2, align 8
  %23 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %22, i32 0, i32 3
  %24 = load %struct.filedescent*, %struct.filedescent** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %24, i64 %26
  store %struct.filedescent* %27, %struct.filedescent** %5, align 8
  %28 = load %struct.filedescent*, %struct.filedescent** %5, align 8
  %29 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp eq %struct.TYPE_4__* %30, null
  br i1 %31, label %49, label %32

32:                                               ; preds = %21
  %33 = load %struct.filedescent*, %struct.filedescent** %5, align 8
  %34 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DFLAG_PASSABLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %32
  %44 = load %struct.filedescent*, %struct.filedescent** %5, align 8
  %45 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @fhold(%struct.TYPE_4__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %43, %32, %21
  %50 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %51 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %57 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %49
  br label %81

59:                                               ; preds = %43
  %60 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %61 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %60, i32 0, i32 3
  %62 = load %struct.filedescent*, %struct.filedescent** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %62, i64 %64
  store %struct.filedescent* %65, %struct.filedescent** %4, align 8
  %66 = load %struct.filedescent*, %struct.filedescent** %4, align 8
  %67 = load %struct.filedescent*, %struct.filedescent** %5, align 8
  %68 = bitcast %struct.filedescent* %66 to i8*
  %69 = bitcast %struct.filedescent* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = load %struct.filedescent*, %struct.filedescent** %5, align 8
  %71 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %70, i32 0, i32 0
  %72 = load %struct.filedescent*, %struct.filedescent** %4, align 8
  %73 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %72, i32 0, i32 0
  %74 = call i32 @filecaps_copy(i32* %71, i32* %73, i32 1)
  %75 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @fdused_init(%struct.filedesc* %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %80 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %59, %58
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %15

84:                                               ; preds = %15
  %85 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %86 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %92 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.filedesc*, %struct.filedesc** %2, align 8
  %95 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %98 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.filedesc*, %struct.filedesc** %2, align 8
  %100 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %99)
  %101 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  ret %struct.filedesc* %101
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.filedesc* @fdinit(%struct.filedesc*, i32) #1

declare dso_local i32 @fhold(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @filecaps_copy(i32*, i32*, i32) #1

declare dso_local i32 @fdused_init(%struct.filedesc*, i32) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
