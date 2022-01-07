; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_vn_fullpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_vn_fullpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { %struct.vnode* }
%struct.vnode = type { i32 }

@disablefullpath = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_fullpath(%struct.thread* %0, %struct.vnode* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.filedesc*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i32, i32* @disablefullpath, align 4
  %15 = call i64 @__predict_false(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ENODEV, align 4
  store i32 %18, i32* %5, align 4
  br label %66

19:                                               ; preds = %4
  %20 = load %struct.vnode*, %struct.vnode** %7, align 8
  %21 = icmp eq %struct.vnode* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @__predict_false(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %66

27:                                               ; preds = %19
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = load i32, i32* @M_TEMP, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = call i8* @malloc(i32 %28, i32 %29, i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load %struct.thread*, %struct.thread** %6, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.filedesc*, %struct.filedesc** %35, align 8
  store %struct.filedesc* %36, %struct.filedesc** %11, align 8
  %37 = load %struct.filedesc*, %struct.filedesc** %11, align 8
  %38 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %37)
  %39 = load %struct.filedesc*, %struct.filedesc** %11, align 8
  %40 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %39, i32 0, i32 0
  %41 = load %struct.vnode*, %struct.vnode** %40, align 8
  store %struct.vnode* %41, %struct.vnode** %12, align 8
  %42 = load %struct.vnode*, %struct.vnode** %12, align 8
  %43 = call i32 @vrefact(%struct.vnode* %42)
  %44 = load %struct.filedesc*, %struct.filedesc** %11, align 8
  %45 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %44)
  %46 = load %struct.thread*, %struct.thread** %6, align 8
  %47 = load %struct.vnode*, %struct.vnode** %7, align 8
  %48 = load %struct.vnode*, %struct.vnode** %12, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = load i32, i32* @MAXPATHLEN, align 4
  %52 = call i32 @vn_fullpath1(%struct.thread* %46, %struct.vnode* %47, %struct.vnode* %48, i8* %49, i8** %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.vnode*, %struct.vnode** %12, align 8
  %54 = call i32 @vrele(%struct.vnode* %53)
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %27
  %58 = load i8*, i8** %10, align 8
  %59 = load i8**, i8*** %9, align 8
  store i8* %58, i8** %59, align 8
  br label %64

60:                                               ; preds = %27
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* @M_TEMP, align 4
  %63 = call i32 @free(i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %25, %17
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @FILEDESC_SLOCK(%struct.filedesc*) #1

declare dso_local i32 @vrefact(%struct.vnode*) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @vn_fullpath1(%struct.thread*, %struct.vnode*, %struct.vnode*, i8*, i8**, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
