; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_b_io_dismiss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_b_io_dismiss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32 }

@IO_NOREUSE = common dso_local global i32 0, align 4
@IO_VMIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"buf %p non-VMIO noreuse\00", align 1
@IO_DIRECT = common dso_local global i32 0, align 4
@B_DIRECT = common dso_local global i32 0, align 4
@IO_EXT = common dso_local global i32 0, align 4
@BX_ALTDATA = common dso_local global i32 0, align 4
@B_RELBUF = common dso_local global i32 0, align 4
@B_NOREUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i32, i32)* @b_io_dismiss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b_io_dismiss(%struct.buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @IO_NOREUSE, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IO_VMIO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i1 [ true, %3 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = load %struct.buf*, %struct.buf** %4, align 8
  %20 = bitcast %struct.buf* %19 to i8*
  %21 = call i32 @KASSERT(i32 %18, i8* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IO_DIRECT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load i32, i32* @B_DIRECT, align 4
  %28 = load %struct.buf*, %struct.buf** %4, align 8
  %29 = getelementptr inbounds %struct.buf, %struct.buf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %16
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @IO_EXT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @BX_ALTDATA, align 4
  %39 = load %struct.buf*, %struct.buf** %4, align 8
  %40 = getelementptr inbounds %struct.buf, %struct.buf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @IO_VMIO, align 4
  %46 = load i32, i32* @IO_DIRECT, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %43
  %51 = load %struct.buf*, %struct.buf** %4, align 8
  %52 = getelementptr inbounds %struct.buf, %struct.buf* %51, i32 0, i32 1
  %53 = call i64 @LIST_EMPTY(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = load i32, i32* @B_RELBUF, align 4
  %57 = load %struct.buf*, %struct.buf** %4, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @IO_NOREUSE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load i32, i32* @B_NOREUSE, align 4
  %67 = load %struct.buf*, %struct.buf** %4, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %55
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.buf*, %struct.buf** %4, align 8
  %76 = call i32 @brelse(%struct.buf* %75)
  br label %77

77:                                               ; preds = %74, %71
  br label %85

78:                                               ; preds = %50, %43
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.buf*, %struct.buf** %4, align 8
  %83 = call i32 @bqrelse(%struct.buf* %82)
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %77
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @bqrelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
