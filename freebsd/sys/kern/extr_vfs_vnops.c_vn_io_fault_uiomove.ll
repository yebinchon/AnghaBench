; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_io_fault_uiomove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_io_fault_uiomove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32 }
%struct.uio = type { i64, i32, i32, i64, i32, %struct.iovec*, i32 }
%struct.iovec = type { i8*, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@TDP_UIOHELD = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"uio_iovcnt %d\00", align 1
@UIO_SYSSPACE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"consumed pages %d %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_io_fault_uiomove(i8* %0, i32 %1, %struct.uio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.uio, align 8
  %9 = alloca [1 x %struct.iovec], align 16
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uio* %2, %struct.uio** %7, align 8
  %14 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %14, %struct.thread** %10, align 8
  %15 = load %struct.thread*, %struct.thread** %10, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TDP_UIOHELD, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.uio*, %struct.uio** %7, align 8
  %23 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UIO_USERSPACE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21, %3
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.uio*, %struct.uio** %7, align 8
  %31 = call i32 @uiomove(i8* %28, i32 %29, %struct.uio* %30)
  store i32 %31, i32* %4, align 4
  br label %176

32:                                               ; preds = %21
  %33 = load %struct.uio*, %struct.uio** %7, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = load %struct.uio*, %struct.uio** %7, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @KASSERT(i32 %37, i8* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %9, i64 0, i64 0
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 16
  %47 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %9, i64 0, i64 0
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %8, i32 0, i32 5
  store %struct.iovec* %47, %struct.iovec** %48, align 8
  %49 = getelementptr inbounds %struct.uio, %struct.uio* %8, i32 0, i32 1
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.uio*, %struct.uio** %7, align 8
  %52 = getelementptr inbounds %struct.uio, %struct.uio* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %32
  %56 = load %struct.uio*, %struct.uio** %7, align 8
  %57 = getelementptr inbounds %struct.uio, %struct.uio* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %32
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %9, i64 0, i64 0
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = getelementptr inbounds %struct.uio, %struct.uio* %8, i32 0, i32 2
  store i32 %60, i32* %63, align 4
  %64 = getelementptr inbounds %struct.uio, %struct.uio* %8, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* @UIO_SYSSPACE, align 8
  %66 = getelementptr inbounds %struct.uio, %struct.uio* %8, i32 0, i32 0
  store i64 %65, i64* %66, align 8
  %67 = load %struct.uio*, %struct.uio** %7, align 8
  %68 = getelementptr inbounds %struct.uio, %struct.uio* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %74 [
    i32 128, label %70
    i32 129, label %72
  ]

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.uio, %struct.uio* %8, i32 0, i32 4
  store i32 129, i32* %71, align 8
  br label %74

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.uio, %struct.uio* %8, i32 0, i32 4
  store i32 128, i32* %73, align 8
  br label %74

74:                                               ; preds = %59, %72, %70
  %75 = load %struct.uio*, %struct.uio** %7, align 8
  %76 = getelementptr inbounds %struct.uio, %struct.uio* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.uio, %struct.uio* %8, i32 0, i32 6
  store i32 %77, i32* %78, align 8
  %79 = load %struct.thread*, %struct.thread** %10, align 8
  %80 = getelementptr inbounds %struct.thread, %struct.thread* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.uio*, %struct.uio** %7, align 8
  %83 = getelementptr inbounds %struct.uio, %struct.uio* %82, i32 0, i32 5
  %84 = load %struct.iovec*, %struct.iovec** %83, align 8
  %85 = getelementptr inbounds %struct.iovec, %struct.iovec* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32, i32* @PAGE_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @uiomove_fromphys(i32 %81, i32 %89, i32 %90, %struct.uio* %8)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %6, align 4
  %93 = getelementptr inbounds %struct.uio, %struct.uio* %8, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %92, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %11, align 8
  %97 = load %struct.uio*, %struct.uio** %7, align 8
  %98 = getelementptr inbounds %struct.uio, %struct.uio* %97, i32 0, i32 5
  %99 = load %struct.iovec*, %struct.iovec** %98, align 8
  %100 = getelementptr inbounds %struct.iovec, %struct.iovec* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %103, %104
  %106 = load i32, i32* @PAGE_SHIFT, align 4
  %107 = zext i32 %106 to i64
  %108 = lshr i64 %105, %107
  %109 = load %struct.uio*, %struct.uio** %7, align 8
  %110 = getelementptr inbounds %struct.uio, %struct.uio* %109, i32 0, i32 5
  %111 = load %struct.iovec*, %struct.iovec** %110, align 8
  %112 = getelementptr inbounds %struct.iovec, %struct.iovec* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %113 to i32
  %115 = load i32, i32* @PAGE_SHIFT, align 4
  %116 = ashr i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = sub i64 %108, %117
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.thread*, %struct.thread** %10, align 8
  %122 = getelementptr inbounds %struct.thread, %struct.thread* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load %struct.thread*, %struct.thread** %10, align 8
  %126 = getelementptr inbounds %struct.thread, %struct.thread* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp sge i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load %struct.thread*, %struct.thread** %10, align 8
  %132 = getelementptr inbounds %struct.thread, %struct.thread* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 @KASSERT(i32 %130, i8* %136)
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.thread*, %struct.thread** %10, align 8
  %140 = getelementptr inbounds %struct.thread, %struct.thread* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load %struct.uio*, %struct.uio** %7, align 8
  %144 = getelementptr inbounds %struct.uio, %struct.uio* %143, i32 0, i32 5
  %145 = load %struct.iovec*, %struct.iovec** %144, align 8
  %146 = getelementptr inbounds %struct.iovec, %struct.iovec* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = load %struct.uio*, %struct.uio** %7, align 8
  %151 = getelementptr inbounds %struct.uio, %struct.uio* %150, i32 0, i32 5
  %152 = load %struct.iovec*, %struct.iovec** %151, align 8
  %153 = getelementptr inbounds %struct.iovec, %struct.iovec* %152, i32 0, i32 0
  store i8* %149, i8** %153, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load %struct.uio*, %struct.uio** %7, align 8
  %156 = getelementptr inbounds %struct.uio, %struct.uio* %155, i32 0, i32 5
  %157 = load %struct.iovec*, %struct.iovec** %156, align 8
  %158 = getelementptr inbounds %struct.iovec, %struct.iovec* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = sub i64 %160, %154
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %158, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load %struct.uio*, %struct.uio** %7, align 8
  %165 = getelementptr inbounds %struct.uio, %struct.uio* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = sub i64 %167, %163
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 4
  %170 = load i64, i64* %11, align 8
  %171 = load %struct.uio*, %struct.uio** %7, align 8
  %172 = getelementptr inbounds %struct.uio, %struct.uio* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %74, %27
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @uiomove_fromphys(i32, i32, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
