; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_rdwr_inchunks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_rdwr_inchunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@MAXBSIZE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@PRI_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_rdwr_inchunks(i32 %0, %struct.vnode* %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6, %struct.ucred* %7, %struct.ucred* %8, i64* %9, %struct.thread* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ucred*, align 8
  %20 = alloca %struct.ucred*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca %struct.thread*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store %struct.vnode* %1, %struct.vnode** %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store %struct.ucred* %7, %struct.ucred** %19, align 8
  store %struct.ucred* %8, %struct.ucred** %20, align 8
  store i64* %9, i64** %21, align 8
  store %struct.thread* %10, %struct.thread** %22, align 8
  store i32 0, i32* %23, align 4
  br label %26

26:                                               ; preds = %80, %11
  %27 = load i32, i32* @MAXBSIZE, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* @MAXBSIZE, align 4
  %30 = srem i32 %28, %29
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %25, align 4
  %32 = load i32, i32* %25, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %15, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i64, i64* %15, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %25, align 4
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @UIO_READ, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.vnode*, %struct.vnode** %13, align 8
  %45 = getelementptr inbounds %struct.vnode, %struct.vnode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VREG, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (...) @bwillwrite()
  br label %51

51:                                               ; preds = %49, %43, %39
  store i64 0, i64* %24, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.vnode*, %struct.vnode** %13, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* %25, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load %struct.ucred*, %struct.ucred** %19, align 8
  %60 = load %struct.ucred*, %struct.ucred** %20, align 8
  %61 = load %struct.thread*, %struct.thread** %22, align 8
  %62 = call i32 @vn_rdwr(i32 %52, %struct.vnode* %53, i8* %54, i32 %55, i32 %56, i32 %57, i32 %58, %struct.ucred* %59, %struct.ucred* %60, i64* %24, %struct.thread* %61)
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %25, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %15, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %15, align 8
  %67 = load i32, i32* %23, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %83

70:                                               ; preds = %51
  %71 = load i32, i32* %25, align 4
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %16, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %25, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8* %77, i8** %14, align 8
  %78 = load i32, i32* @PRI_USER, align 4
  %79 = call i32 @kern_yield(i32 %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i64, i64* %15, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %26, label %83

83:                                               ; preds = %80, %69
  %84 = load i64*, i64** %21, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* %24, align 8
  %89 = add i64 %87, %88
  %90 = load i64*, i64** %21, align 8
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32, i32* %23, align 4
  ret i32 %92
}

declare dso_local i32 @bwillwrite(...) #1

declare dso_local i32 @vn_rdwr(i32, %struct.vnode*, i8*, i32, i32, i32, i32, %struct.ucred*, %struct.ucred*, i64*, %struct.thread*) #1

declare dso_local i32 @kern_yield(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
