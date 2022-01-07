; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c__vn_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c__vn_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32 }

@LK_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vn_lock: no locktype\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"vn_lock: zero hold count\00", align 1
@LK_INTERLOCK = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"vn_lock: error %d incompatible with flags %#x\00", align 1
@VI_DOOMED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_vn_lock(%struct.vnode* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @LK_TYPE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.vnode*, %struct.vnode** %5, align 8
  %16 = call i32 @VNASSERT(i32 %14, %struct.vnode* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vnode*, %struct.vnode** %5, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load %struct.vnode*, %struct.vnode** %5, align 8
  %23 = call i32 @VNASSERT(i32 %21, %struct.vnode* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %71, %4
  %25 = load %struct.vnode*, %struct.vnode** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @VOP_LOCK1(%struct.vnode* %25, i32 %26, i8* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @LK_INTERLOCK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @LK_RETRY, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br label %41

41:                                               ; preds = %38, %24
  %42 = phi i1 [ true, %24 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @KASSERT(i32 %43, i8* %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @LK_RETRY, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.vnode*, %struct.vnode** %5, align 8
  %58 = getelementptr inbounds %struct.vnode, %struct.vnode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @VI_DOOMED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.vnode*, %struct.vnode** %5, align 8
  %65 = call i32 @VOP_UNLOCK(%struct.vnode* %64, i32 0)
  %66 = load i32, i32* @ENOENT, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %56, %53
  br label %73

68:                                               ; preds = %41
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %24

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i32 @VNASSERT(i32, %struct.vnode*, i8*) #1

declare dso_local i32 @VOP_LOCK1(%struct.vnode*, i32, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
