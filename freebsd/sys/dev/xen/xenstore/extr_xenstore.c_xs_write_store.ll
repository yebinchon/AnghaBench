; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_write_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_write_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@xs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@xen_store = common dso_local global %struct.TYPE_5__* null, align 8
@XENSTORE_RING_SIZE = common dso_local global i64 0, align 8
@PCATCH = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"xbwrite\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @xs_write_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_write_store(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* @SX_XLOCKED, align 4
  %14 = call i32 @sx_assert(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 2), i32 %13)
  br label %15

15:                                               ; preds = %70, %45, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %91

18:                                               ; preds = %15
  %19 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 1))
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i64, i64* @XENSTORE_RING_SIZE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %18
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %33 = load i32, i32* @PCATCH, align 4
  %34 = load i32, i32* @PDROP, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @msleep(%struct.TYPE_5__* %32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 1), i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @EWOULDBLOCK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %92

45:                                               ; preds = %39, %31
  br label %15

46:                                               ; preds = %18
  %47 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 1))
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @xs_check_indexes(i64 %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @EIO, align 4
  store i32 %57, i32* %3, align 4
  br label %92

58:                                               ; preds = %46
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @xs_get_output_chunk(i64 %59, i64 %60, i32 %63, i32* %11)
  store i8* %64, i8** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %58
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @memcpy(i8* %71, i8* %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = call i32 (...) @wmb()
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 0), align 4
  %90 = call i32 @xen_intr_signal(i32 %89)
  br label %15

91:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %52, %43
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(%struct.TYPE_5__*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xs_check_indexes(i64, i64) #1

declare dso_local i8* @xs_get_output_chunk(i64, i64, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @xen_intr_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
