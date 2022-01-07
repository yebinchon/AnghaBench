; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_bgetvp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_bgetvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.bufobj }
%struct.bufobj = type { i32 }
%struct.buf = type { i32, %struct.bufobj*, %struct.vnode*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"bgetvp: not free\00", align 1
@KTR_BUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"bgetvp(%p) vp %p flags %X\00", align 1
@BX_VNDIRTY = common dso_local global i32 0, align 4
@BX_VNCLEAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"bgetvp: bp already attached! %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgetvp(%struct.vnode* %0, %struct.buf* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.bufobj*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.buf* %1, %struct.buf** %4, align 8
  %6 = load %struct.vnode*, %struct.vnode** %3, align 8
  %7 = getelementptr inbounds %struct.vnode, %struct.vnode* %6, i32 0, i32 0
  store %struct.bufobj* %7, %struct.bufobj** %5, align 8
  %8 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %9 = call i32 @ASSERT_BO_WLOCKED(%struct.bufobj* %8)
  %10 = load %struct.buf*, %struct.buf** %4, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 2
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  %13 = icmp eq %struct.vnode* %12, null
  %14 = zext i1 %13 to i32
  %15 = load %struct.buf*, %struct.buf** %4, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 2
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  %18 = call i32 @VNASSERT(i32 %14, %struct.vnode* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @KTR_BUF, align 4
  %20 = load %struct.buf*, %struct.buf** %4, align 8
  %21 = load %struct.vnode*, %struct.vnode** %3, align 8
  %22 = load %struct.buf*, %struct.buf** %4, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @CTR3(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.buf* %20, %struct.vnode* %21, i32 %24)
  %26 = load %struct.buf*, %struct.buf** %4, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BX_VNDIRTY, align 4
  %30 = load i32, i32* @BX_VNCLEAN, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load %struct.vnode*, %struct.vnode** %3, align 8
  %36 = load %struct.buf*, %struct.buf** %4, align 8
  %37 = bitcast %struct.buf* %36 to i8*
  %38 = call i32 @VNASSERT(i32 %34, %struct.vnode* %35, i8* %37)
  %39 = load %struct.vnode*, %struct.vnode** %3, align 8
  %40 = call i32 @vhold(%struct.vnode* %39)
  %41 = load %struct.vnode*, %struct.vnode** %3, align 8
  %42 = load %struct.buf*, %struct.buf** %4, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 2
  store %struct.vnode* %41, %struct.vnode** %43, align 8
  %44 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %45 = load %struct.buf*, %struct.buf** %4, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 1
  store %struct.bufobj* %44, %struct.bufobj** %46, align 8
  %47 = load %struct.buf*, %struct.buf** %4, align 8
  %48 = load %struct.bufobj*, %struct.bufobj** %5, align 8
  %49 = load i32, i32* @BX_VNCLEAN, align 4
  %50 = call i32 @buf_vlist_add(%struct.buf* %47, %struct.bufobj* %48, i32 %49)
  ret void
}

declare dso_local i32 @ASSERT_BO_WLOCKED(%struct.bufobj*) #1

declare dso_local i32 @VNASSERT(i32, %struct.vnode*, i8*) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.buf*, %struct.vnode*, i32) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @buf_vlist_add(%struct.buf*, %struct.bufobj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
