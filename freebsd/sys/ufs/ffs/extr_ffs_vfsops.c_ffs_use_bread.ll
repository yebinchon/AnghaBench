; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_use_bread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_use_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }
%struct.vnode = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"ffs_use_bread: non-NULL *bufp %p\0A\00", align 1
@M_UFSMNT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@B_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i32)* @ffs_use_bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_use_bread(i8* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buf*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8**, i8*** %8, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = load i8**, i8*** %8, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @KASSERT(i32 %15, i8* %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @M_UFSMNT, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = call i8* @malloc(i32 %19, i32 %20, i32 %21)
  %23 = load i8**, i8*** %8, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.vnode*
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @btodb(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @NOCRED, align 4
  %30 = call i32 @bread(%struct.vnode* %25, i32 %27, i32 %28, i32 %29, %struct.buf** %10)
  store i32 %30, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %51

34:                                               ; preds = %4
  %35 = load %struct.buf*, %struct.buf** %10, align 8
  %36 = getelementptr inbounds %struct.buf, %struct.buf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8**, i8*** %8, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @bcopy(i32 %37, i8* %39, i32 %40)
  %42 = load i32, i32* @B_INVAL, align 4
  %43 = load i32, i32* @B_NOCACHE, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.buf*, %struct.buf** %10, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.buf*, %struct.buf** %10, align 8
  %50 = call i32 @brelse(%struct.buf* %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %34, %32
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @bread(%struct.vnode*, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @btodb(i32) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
