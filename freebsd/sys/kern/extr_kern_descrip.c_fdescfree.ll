; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdescfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fdescfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.filedesc*, i32* }
%struct.filedesc = type { %struct.vnode*, %struct.vnode*, %struct.vnode*, i32 }
%struct.vnode = type { i32 }

@RACCT_NOFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdescfree(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.filedesc*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %3, align 8
  %11 = load %struct.proc*, %struct.proc** %3, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 0
  %13 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  store %struct.filedesc* %13, %struct.filedesc** %4, align 8
  %14 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %15 = icmp ne %struct.filedesc* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @MPASS(i32 %16)
  %18 = load %struct.proc*, %struct.proc** %3, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.thread*, %struct.thread** %2, align 8
  %24 = call i32 @fdclearlocks(%struct.thread* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.proc*, %struct.proc** %3, align 8
  %27 = call i32 @PROC_LOCK(%struct.proc* %26)
  %28 = load %struct.proc*, %struct.proc** %3, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 0
  store %struct.filedesc* null, %struct.filedesc** %29, align 8
  %30 = load %struct.proc*, %struct.proc** %3, align 8
  %31 = call i32 @PROC_UNLOCK(%struct.proc* %30)
  %32 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %33 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %32, i32 0, i32 3
  %34 = call i64 @refcount_release(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %78

37:                                               ; preds = %25
  %38 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %39 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %38)
  %40 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %41 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %40, i32 0, i32 2
  %42 = load %struct.vnode*, %struct.vnode** %41, align 8
  store %struct.vnode* %42, %struct.vnode** %5, align 8
  %43 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %44 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %43, i32 0, i32 2
  store %struct.vnode* null, %struct.vnode** %44, align 8
  %45 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %46 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %45, i32 0, i32 1
  %47 = load %struct.vnode*, %struct.vnode** %46, align 8
  store %struct.vnode* %47, %struct.vnode** %7, align 8
  %48 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %49 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %48, i32 0, i32 1
  store %struct.vnode* null, %struct.vnode** %49, align 8
  %50 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %51 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %50, i32 0, i32 0
  %52 = load %struct.vnode*, %struct.vnode** %51, align 8
  store %struct.vnode* %52, %struct.vnode** %6, align 8
  %53 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %54 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %53, i32 0, i32 0
  store %struct.vnode* null, %struct.vnode** %54, align 8
  %55 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %56 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %55)
  %57 = load %struct.vnode*, %struct.vnode** %5, align 8
  %58 = icmp ne %struct.vnode* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %37
  %60 = load %struct.vnode*, %struct.vnode** %5, align 8
  %61 = call i32 @vrele(%struct.vnode* %60)
  br label %62

62:                                               ; preds = %59, %37
  %63 = load %struct.vnode*, %struct.vnode** %7, align 8
  %64 = icmp ne %struct.vnode* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.vnode*, %struct.vnode** %7, align 8
  %67 = call i32 @vrele(%struct.vnode* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.vnode*, %struct.vnode** %6, align 8
  %70 = icmp ne %struct.vnode* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.vnode*, %struct.vnode** %6, align 8
  %73 = call i32 @vrele(%struct.vnode* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.thread*, %struct.thread** %2, align 8
  %76 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %77 = call i32 @fdescfree_fds(%struct.thread* %75, %struct.filedesc* %76, i32 1)
  br label %78

78:                                               ; preds = %74, %36
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @fdclearlocks(%struct.thread*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @fdescfree_fds(%struct.thread*, %struct.filedesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
