; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_buf_vlist_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_buf_vlist_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bufv, %struct.bufv }
%struct.bufv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"No b_bufobj %p\00", align 1
@BX_VNDIRTY = common dso_local global i32 0, align 4
@BX_VNCLEAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"buf_vlist_remove: Buf %p is on two lists\00", align 1
@b_bobufs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @buf_vlist_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_vlist_remove(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca %struct.bufv*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %4 = load %struct.buf*, %struct.buf** %2, align 8
  %5 = getelementptr inbounds %struct.buf, %struct.buf* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  %8 = zext i1 %7 to i32
  %9 = load %struct.buf*, %struct.buf** %2, align 8
  %10 = bitcast %struct.buf* %9 to i8*
  %11 = call i32 @KASSERT(i32 %8, i8* %10)
  %12 = load %struct.buf*, %struct.buf** %2, align 8
  %13 = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @ASSERT_BO_WLOCKED(%struct.TYPE_2__* %14)
  %16 = load %struct.buf*, %struct.buf** %2, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BX_VNDIRTY, align 4
  %20 = load i32, i32* @BX_VNCLEAN, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @BX_VNDIRTY, align 4
  %24 = load i32, i32* @BX_VNCLEAN, align 4
  %25 = or i32 %23, %24
  %26 = icmp ne i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.buf*, %struct.buf** %2, align 8
  %29 = bitcast %struct.buf* %28 to i8*
  %30 = call i32 @KASSERT(i32 %27, i8* %29)
  %31 = load %struct.buf*, %struct.buf** %2, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BX_VNDIRTY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.buf*, %struct.buf** %2, align 8
  %39 = getelementptr inbounds %struct.buf, %struct.buf* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store %struct.bufv* %41, %struct.bufv** %3, align 8
  br label %47

42:                                               ; preds = %1
  %43 = load %struct.buf*, %struct.buf** %2, align 8
  %44 = getelementptr inbounds %struct.buf, %struct.buf* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.bufv* %46, %struct.bufv** %3, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.bufv*, %struct.bufv** %3, align 8
  %49 = getelementptr inbounds %struct.bufv, %struct.bufv* %48, i32 0, i32 2
  %50 = load %struct.buf*, %struct.buf** %2, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @BUF_PCTRIE_REMOVE(i32* %49, i32 %52)
  %54 = load %struct.bufv*, %struct.bufv** %3, align 8
  %55 = getelementptr inbounds %struct.bufv, %struct.bufv* %54, i32 0, i32 1
  %56 = load %struct.buf*, %struct.buf** %2, align 8
  %57 = load i32, i32* @b_bobufs, align 4
  %58 = call i32 @TAILQ_REMOVE(i32* %55, %struct.buf* %56, i32 %57)
  %59 = load %struct.bufv*, %struct.bufv** %3, align 8
  %60 = getelementptr inbounds %struct.bufv, %struct.bufv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @BX_VNDIRTY, align 4
  %64 = load i32, i32* @BX_VNCLEAN, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.buf*, %struct.buf** %2, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ASSERT_BO_WLOCKED(%struct.TYPE_2__*) #1

declare dso_local i32 @BUF_PCTRIE_REMOVE(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
