; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_consume_uio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_consume_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i64 }
%struct.uio = type { i64, i64, i64, i32, %struct.iovec*, %struct.TYPE_4__* }
%struct.iovec = type { i32, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"sglist_consume_uio: USERSPACE but no thread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_consume_uio(%struct.sglist* %0, %struct.uio* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sglist*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.sglist*, %struct.sglist** %5, align 8
  %14 = getelementptr inbounds %struct.sglist, %struct.sglist* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %118

19:                                               ; preds = %3
  %20 = load %struct.uio*, %struct.uio** %6, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UIO_USERSPACE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.uio*, %struct.uio** %6, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.uio*, %struct.uio** %6, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 5
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @vmspace_pmap(i32 %38)
  store i32* %39, i32** %10, align 8
  br label %41

40:                                               ; preds = %19
  store i32* null, i32** %10, align 8
  br label %41

41:                                               ; preds = %40, %25
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %116, %61, %41
  %43 = load i64, i64* %7, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.uio*, %struct.uio** %6, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ]
  br i1 %51, label %52, label %117

52:                                               ; preds = %50
  %53 = load %struct.uio*, %struct.uio** %6, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %53, i32 0, i32 4
  %55 = load %struct.iovec*, %struct.iovec** %54, align 8
  store %struct.iovec* %55, %struct.iovec** %8, align 8
  %56 = load %struct.iovec*, %struct.iovec** %8, align 8
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load %struct.uio*, %struct.uio** %6, align 8
  %63 = getelementptr inbounds %struct.uio, %struct.uio* %62, i32 0, i32 4
  %64 = load %struct.iovec*, %struct.iovec** %63, align 8
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %64, i32 1
  store %struct.iovec* %65, %struct.iovec** %63, align 8
  %66 = load %struct.uio*, %struct.uio** %6, align 8
  %67 = getelementptr inbounds %struct.uio, %struct.uio* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  br label %42

70:                                               ; preds = %52
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %7, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i64, i64* %7, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.sglist*, %struct.sglist** %5, align 8
  %80 = load %struct.iovec*, %struct.iovec** %8, align 8
  %81 = getelementptr inbounds %struct.iovec, %struct.iovec* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @_sglist_append_buf(%struct.sglist* %79, i8* %82, i32 %83, i32* %84, i64* %9)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.iovec*, %struct.iovec** %8, align 8
  %87 = getelementptr inbounds %struct.iovec, %struct.iovec* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load %struct.iovec*, %struct.iovec** %8, align 8
  %92 = getelementptr inbounds %struct.iovec, %struct.iovec* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.iovec*, %struct.iovec** %8, align 8
  %95 = getelementptr inbounds %struct.iovec, %struct.iovec* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = sub i64 %97, %93
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.uio*, %struct.uio** %6, align 8
  %102 = getelementptr inbounds %struct.uio, %struct.uio* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.uio*, %struct.uio** %6, align 8
  %107 = getelementptr inbounds %struct.uio, %struct.uio* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %7, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %7, align 8
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %78
  br label %117

116:                                              ; preds = %78
  br label %42

117:                                              ; preds = %115, %50
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %17
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @vmspace_pmap(i32) #1

declare dso_local i32 @_sglist_append_buf(%struct.sglist*, i8*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
