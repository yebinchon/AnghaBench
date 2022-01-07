; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_dirent_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_dirent_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.thread = type { i32 }
%struct.dirent = type { i64, i64, i32 }
%struct.vattr = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"vp %p is not locked\00", align 1
@VDIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"vp %p is not a directory\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@DT_WHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i8*, %struct.thread*)* @dirent_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirent_exists(%struct.vnode* %0, i8* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.dirent*, align 8
  %17 = alloca %struct.vattr, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = call i32 @VOP_ISLOCKED(%struct.vnode* %18)
  %20 = load %struct.vnode*, %struct.vnode** %5, align 8
  %21 = bitcast %struct.vnode* %20 to i8*
  %22 = call i32 @KASSERT(i32 %19, i8* %21)
  %23 = load %struct.vnode*, %struct.vnode** %5, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VDIR, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.vnode*, %struct.vnode** %5, align 8
  %30 = bitcast %struct.vnode* %29 to i8*
  %31 = call i32 @KASSERT(i32 %28, i8* %30)
  store i32 0, i32* %14, align 4
  %32 = load %struct.vnode*, %struct.vnode** %5, align 8
  %33 = load %struct.thread*, %struct.thread** %7, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @VOP_GETATTR(%struct.vnode* %32, %struct.vattr* %17, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %4, align 4
  br label %100

41:                                               ; preds = %3
  %42 = load i32, i32* @DEV_BSIZE, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds %struct.vattr, %struct.vattr* %17, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.vattr, %struct.vattr* %17, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @M_TEMP, align 4
  %53 = load i32, i32* @M_WAITOK, align 4
  %54 = call i64 @malloc(i32 %51, i32 %52, i32 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %8, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %92, %50
  %57 = load %struct.vnode*, %struct.vnode** %5, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.thread*, %struct.thread** %7, align 8
  %61 = call i32 @get_next_dirent(%struct.vnode* %57, %struct.dirent** %16, i8* %58, i32 %59, i64* %15, i8** %9, i32* %13, i32* %11, %struct.thread* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %95

65:                                               ; preds = %56
  %66 = load %struct.dirent*, %struct.dirent** %16, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DT_WHT, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load %struct.dirent*, %struct.dirent** %16, align 8
  %73 = getelementptr inbounds %struct.dirent, %struct.dirent* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.dirent*, %struct.dirent** %16, align 8
  %78 = getelementptr inbounds %struct.dirent, %struct.dirent* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @strcmp(i32 %79, i8* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 1, i32* %14, align 4
  br label %95

84:                                               ; preds = %76, %71, %65
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi i1 [ true, %85 ], [ %91, %88 ]
  br i1 %93, label %56, label %94

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %83, %64
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* @M_TEMP, align 4
  %98 = call i32 @free(i8* %96, i32 %97)
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %39
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @get_next_dirent(%struct.vnode*, %struct.dirent**, i8*, i32, i64*, i8**, i32*, i32*, %struct.thread*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
