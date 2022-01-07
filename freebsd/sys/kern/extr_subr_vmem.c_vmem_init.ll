; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_12__, i32, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i64, i64 }

@BT_TYPE_CURSOR = common dso_local global i32 0, align 4
@bt_seglist = common dso_local global i32 0, align 4
@VMEM_MAXORDER = common dso_local global i32 0, align 4
@VMEM_HASHSIZE_MIN = common dso_local global i32 0, align 4
@vmem_list_lock = common dso_local global i32 0, align 4
@vmem_list = common dso_local global i32 0, align 4
@vm_alllist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @vmem_init(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @MPASS(i32 %19)
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @MPASS(i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %29 = call i32 @bzero(%struct.TYPE_13__* %28, i32 112)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @VMEM_CONDVAR_INIT(%struct.TYPE_13__* %30, i8* %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @VMEM_LOCK_INIT(%struct.TYPE_13__* %33, i8* %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 14
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 13
  %40 = call i32 @LIST_INIT(i32* %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @strlcpy(i32 %43, i8* %44, i32 4)
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @flsl(i32 %50)
  %52 = sub nsw i64 %51, 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 11
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 10
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 9
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 8
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 7
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @qc_init(%struct.TYPE_13__* %63, i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 6
  %68 = call i32 @TAILQ_INIT(i32* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @BT_TYPE_CURSOR, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 5
  %83 = load i32, i32* @bt_seglist, align 4
  %84 = call i32 @TAILQ_INSERT_TAIL(i32* %80, %struct.TYPE_12__* %82, i32 %83)
  store i32 0, i32* %16, align 4
  br label %85

85:                                               ; preds = %97, %7
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @VMEM_MAXORDER, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 @LIST_INIT(i32* %95)
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %85

100:                                              ; preds = %85
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = call i32 @memset(i32* %102, i32 0, i32 4)
  %104 = load i32, i32* @VMEM_HASHSIZE_MIN, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %100
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i64 @vmem_add(%struct.TYPE_13__* %115, i32 %116, i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = call i32 @vmem_destroy1(%struct.TYPE_13__* %122)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %132

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %100
  %126 = call i32 @mtx_lock(i32* @vmem_list_lock)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %128 = load i32, i32* @vm_alllist, align 4
  %129 = call i32 @LIST_INSERT_HEAD(i32* @vmem_list, %struct.TYPE_13__* %127, i32 %128)
  %130 = call i32 @mtx_unlock(i32* @vmem_list_lock)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %131, %struct.TYPE_13__** %8, align 8
  br label %132

132:                                              ; preds = %125, %121
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  ret %struct.TYPE_13__* %133
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @VMEM_CONDVAR_INIT(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @VMEM_LOCK_INIT(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @flsl(i32) #1

declare dso_local i32 @qc_init(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @vmem_add(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @vmem_destroy1(%struct.TYPE_13__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
