; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_buf_vlist_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_buf_vlist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }
%struct.bufobj = type { i32, %struct.bufv, %struct.bufv }
%struct.bufv = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BX_VNDIRTY = common dso_local global i32 0, align 4
@BO_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"dead bo %p\00", align 1
@BX_VNCLEAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"buf_vlist_add: Buf %p has existing xflags %d\00", align 1
@buflists = common dso_local global i32 0, align 4
@b_bobufs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"buf_vlist_add:  Preallocated nodes insufficient.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.bufobj*, i32)* @buf_vlist_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_vlist_add(%struct.buf* %0, %struct.bufobj* %1, i32 %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.bufobj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufv*, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %4, align 8
  store %struct.bufobj* %1, %struct.bufobj** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %11 = call i32 @ASSERT_BO_WLOCKED(%struct.bufobj* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BX_VNDIRTY, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %18 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BO_DEAD, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %16, %3
  %24 = phi i1 [ true, %3 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %27 = bitcast %struct.bufobj* %26 to i8*
  %28 = call i32 @KASSERT(i32 %25, i8* %27)
  %29 = load %struct.buf*, %struct.buf** %4, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BX_VNDIRTY, align 4
  %33 = load i32, i32* @BX_VNCLEAN, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load %struct.buf*, %struct.buf** %4, align 8
  %39 = load %struct.buf*, %struct.buf** %4, align 8
  %40 = getelementptr inbounds %struct.buf, %struct.buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @KASSERT(i32 %37, i8* %43)
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.buf*, %struct.buf** %4, align 8
  %47 = getelementptr inbounds %struct.buf, %struct.buf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @BX_VNDIRTY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %23
  %55 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %56 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %55, i32 0, i32 2
  store %struct.bufv* %56, %struct.bufv** %7, align 8
  br label %60

57:                                               ; preds = %23
  %58 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %59 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %58, i32 0, i32 1
  store %struct.bufv* %59, %struct.bufv** %7, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.bufv*, %struct.bufv** %7, align 8
  %62 = getelementptr inbounds %struct.bufv, %struct.bufv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %60
  %66 = load %struct.buf*, %struct.buf** %4, align 8
  %67 = getelementptr inbounds %struct.buf, %struct.buf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bufv*, %struct.bufv** %7, align 8
  %70 = getelementptr inbounds %struct.bufv, %struct.bufv* %69, i32 0, i32 2
  %71 = load i32, i32* @buflists, align 4
  %72 = call %struct.TYPE_2__* @TAILQ_LAST(i32* %70, i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %68, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %65, %60
  %77 = load %struct.bufv*, %struct.bufv** %7, align 8
  %78 = getelementptr inbounds %struct.bufv, %struct.bufv* %77, i32 0, i32 2
  %79 = load %struct.buf*, %struct.buf** %4, align 8
  %80 = load i32, i32* @b_bobufs, align 4
  %81 = call i32 @TAILQ_INSERT_TAIL(i32* %78, %struct.buf* %79, i32 %80)
  br label %104

82:                                               ; preds = %65
  %83 = load %struct.bufv*, %struct.bufv** %7, align 8
  %84 = getelementptr inbounds %struct.bufv, %struct.bufv* %83, i32 0, i32 1
  %85 = load %struct.buf*, %struct.buf** %4, align 8
  %86 = getelementptr inbounds %struct.buf, %struct.buf* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.buf* @BUF_PCTRIE_LOOKUP_LE(i32* %84, i32 %87)
  store %struct.buf* %88, %struct.buf** %8, align 8
  %89 = icmp eq %struct.buf* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load %struct.bufv*, %struct.bufv** %7, align 8
  %92 = getelementptr inbounds %struct.bufv, %struct.bufv* %91, i32 0, i32 2
  %93 = load %struct.buf*, %struct.buf** %4, align 8
  %94 = load i32, i32* @b_bobufs, align 4
  %95 = call i32 @TAILQ_INSERT_HEAD(i32* %92, %struct.buf* %93, i32 %94)
  br label %103

96:                                               ; preds = %82
  %97 = load %struct.bufv*, %struct.bufv** %7, align 8
  %98 = getelementptr inbounds %struct.bufv, %struct.bufv* %97, i32 0, i32 2
  %99 = load %struct.buf*, %struct.buf** %8, align 8
  %100 = load %struct.buf*, %struct.buf** %4, align 8
  %101 = load i32, i32* @b_bobufs, align 4
  %102 = call i32 @TAILQ_INSERT_AFTER(i32* %98, %struct.buf* %99, %struct.buf* %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %90
  br label %104

104:                                              ; preds = %103, %76
  %105 = load %struct.bufv*, %struct.bufv** %7, align 8
  %106 = getelementptr inbounds %struct.bufv, %struct.bufv* %105, i32 0, i32 1
  %107 = load %struct.buf*, %struct.buf** %4, align 8
  %108 = call i32 @BUF_PCTRIE_INSERT(i32* %106, %struct.buf* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %104
  %114 = load %struct.bufv*, %struct.bufv** %7, align 8
  %115 = getelementptr inbounds %struct.bufv, %struct.bufv* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %115, align 8
  ret void
}

declare dso_local i32 @ASSERT_BO_WLOCKED(%struct.bufobj*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.buf*, i32) #1

declare dso_local %struct.buf* @BUF_PCTRIE_LOOKUP_LE(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.buf*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.buf*, %struct.buf*, i32) #1

declare dso_local i32 @BUF_PCTRIE_INSERT(i32*, %struct.buf*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
