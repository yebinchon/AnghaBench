; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_vn_fullpath_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_vn_fullpath_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }

@disablefullpath = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@rootvnode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_fullpath_global(%struct.thread* %0, %struct.vnode* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* @disablefullpath, align 4
  %13 = call i64 @__predict_false(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @ENODEV, align 4
  store i32 %16, i32* %5, align 4
  br label %48

17:                                               ; preds = %4
  %18 = load %struct.vnode*, %struct.vnode** %7, align 8
  %19 = icmp eq %struct.vnode* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @__predict_false(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %48

25:                                               ; preds = %17
  %26 = load i32, i32* @MAXPATHLEN, align 4
  %27 = load i32, i32* @M_TEMP, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = call i8* @malloc(i32 %26, i32 %27, i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load %struct.thread*, %struct.thread** %6, align 8
  %31 = load %struct.vnode*, %struct.vnode** %7, align 8
  %32 = load i32, i32* @rootvnode, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = load i32, i32* @MAXPATHLEN, align 4
  %36 = call i32 @vn_fullpath1(%struct.thread* %30, %struct.vnode* %31, i32 %32, i8* %33, i8** %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %25
  %40 = load i8*, i8** %10, align 8
  %41 = load i8**, i8*** %9, align 8
  store i8* %40, i8** %41, align 8
  br label %46

42:                                               ; preds = %25
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* @M_TEMP, align 4
  %45 = call i32 @free(i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %23, %15
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @vn_fullpath1(%struct.thread*, %struct.vnode*, i32, i8*, i8**, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
