; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_uio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i64 }
%struct.uio = type { i64, i64, i32, %struct.TYPE_4__*, %struct.iovec* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iovec = type { i32, i32 }
%struct.sgsave = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"sglist_append_uio: USERSPACE but no thread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_append_uio(%struct.sglist* %0, %struct.uio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sglist*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca %struct.sgsave, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  %13 = load %struct.sglist*, %struct.sglist** %4, align 8
  %14 = getelementptr inbounds %struct.sglist, %struct.sglist* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %102

19:                                               ; preds = %2
  %20 = load %struct.uio*, %struct.uio** %5, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.uio*, %struct.uio** %5, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 4
  %25 = load %struct.iovec*, %struct.iovec** %24, align 8
  store %struct.iovec* %25, %struct.iovec** %6, align 8
  %26 = load %struct.uio*, %struct.uio** %5, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UIO_USERSPACE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %19
  %32 = load %struct.uio*, %struct.uio** %5, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.uio*, %struct.uio** %5, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @vmspace_pmap(i32 %44)
  store i32* %45, i32** %10, align 8
  br label %47

46:                                               ; preds = %19
  store i32* null, i32** %10, align 8
  br label %47

47:                                               ; preds = %46, %31
  store i32 0, i32* %11, align 4
  %48 = load %struct.sglist*, %struct.sglist** %4, align 8
  %49 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @SGLIST_SAVE(%struct.sglist* %48, i32 %50)
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %98, %47
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.uio*, %struct.uio** %5, align 8
  %55 = getelementptr inbounds %struct.uio, %struct.uio* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi i1 [ false, %52 ], [ %60, %58 ]
  br i1 %62, label %63, label %101

63:                                               ; preds = %61
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.iovec*, %struct.iovec** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.iovec, %struct.iovec* %65, i64 %67
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @MIN(i64 %64, i32 %70)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %63
  %75 = load %struct.sglist*, %struct.sglist** %4, align 8
  %76 = load %struct.iovec*, %struct.iovec** %6, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.iovec, %struct.iovec* %76, i64 %78
  %80 = getelementptr inbounds %struct.iovec, %struct.iovec* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @_sglist_append_buf(%struct.sglist* %75, i32 %81, i64 %82, i32* %83, i32* null)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %74
  %88 = load %struct.sglist*, %struct.sglist** %4, align 8
  %89 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %7, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SGLIST_RESTORE(%struct.sglist* %88, i32 %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  br label %102

93:                                               ; preds = %74
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %8, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %8, align 8
  br label %97

97:                                               ; preds = %93, %63
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %52

101:                                              ; preds = %61
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %87, %17
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @vmspace_pmap(i32) #1

declare dso_local i32 @SGLIST_SAVE(%struct.sglist*, i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @_sglist_append_buf(%struct.sglist*, i32, i64, i32*, i32*) #1

declare dso_local i32 @SGLIST_RESTORE(%struct.sglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
