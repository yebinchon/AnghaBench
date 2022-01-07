; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_read_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_read_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@xs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@xen_store = common dso_local global %struct.TYPE_5__* null, align 8
@PCATCH = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"xbread\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @xs_read_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_read_store(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %66, %41, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %88

16:                                               ; preds = %13
  %17 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 1))
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %16
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %29 = load i32, i32* @PCATCH, align 4
  %30 = load i32, i32* @PDROP, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @msleep(%struct.TYPE_5__* %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 1), i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @EWOULDBLOCK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %89

41:                                               ; preds = %35, %27
  br label %13

42:                                               ; preds = %16
  %43 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 1))
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @xs_check_indexes(i64 %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* %3, align 4
  br label %89

54:                                               ; preds = %42
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @xs_get_input_chunk(i64 %55, i64 %56, i32 %59, i32* %10)
  store i8* %60, i8** %11, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %64, %54
  %67 = call i32 (...) @rmb()
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @memcpy(i8* %68, i8* %69, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sub i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = call i32 (...) @mb()
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xen_store, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 0), align 4
  %87 = call i32 @xen_intr_signal(i32 %86)
  br label %13

88:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %48, %39
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(%struct.TYPE_5__*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xs_check_indexes(i64, i64) #1

declare dso_local i8* @xs_get_input_chunk(i64, i64, i32, i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @xen_intr_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
