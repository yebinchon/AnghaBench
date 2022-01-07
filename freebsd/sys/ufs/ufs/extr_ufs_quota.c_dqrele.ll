; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_dqrele.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_dqrele.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32 }
%struct.vnode = type { i32 }

@NODQUOT = common dso_local global %struct.dquot* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Lost dq %p reference 1\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Lost dq %p reference 2\00", align 1
@DQ_MOD = common dso_local global i32 0, align 4
@dqfreelist = common dso_local global i32 0, align 4
@dq_freelist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dqrele(%struct.vnode* %0, %struct.dquot* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.dquot*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.dquot* %1, %struct.dquot** %4, align 8
  %5 = load %struct.dquot*, %struct.dquot** %4, align 8
  %6 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %7 = icmp eq %struct.dquot* %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %69

9:                                                ; preds = %2
  %10 = call i32 (...) @DQH_LOCK()
  %11 = load %struct.dquot*, %struct.dquot** %4, align 8
  %12 = getelementptr inbounds %struct.dquot, %struct.dquot* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load %struct.dquot*, %struct.dquot** %4, align 8
  %17 = bitcast %struct.dquot* %16 to i8*
  %18 = call i32 @KASSERT(i32 %15, i8* %17)
  %19 = load %struct.dquot*, %struct.dquot** %4, align 8
  %20 = getelementptr inbounds %struct.dquot, %struct.dquot* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %9
  %24 = load %struct.dquot*, %struct.dquot** %4, align 8
  %25 = getelementptr inbounds %struct.dquot, %struct.dquot* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = call i32 (...) @DQH_UNLOCK()
  br label %69

29:                                               ; preds = %9
  %30 = call i32 (...) @DQH_UNLOCK()
  br label %31

31:                                               ; preds = %58, %29
  %32 = load %struct.vnode*, %struct.vnode** %3, align 8
  %33 = load %struct.dquot*, %struct.dquot** %4, align 8
  %34 = call i32 @dqsync(%struct.vnode* %32, %struct.dquot* %33)
  %35 = call i32 (...) @DQH_LOCK()
  %36 = load %struct.dquot*, %struct.dquot** %4, align 8
  %37 = getelementptr inbounds %struct.dquot, %struct.dquot* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load %struct.dquot*, %struct.dquot** %4, align 8
  %42 = bitcast %struct.dquot* %41 to i8*
  %43 = call i32 @KASSERT(i32 %40, i8* %42)
  %44 = load %struct.dquot*, %struct.dquot** %4, align 8
  %45 = getelementptr inbounds %struct.dquot, %struct.dquot* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = call i32 (...) @DQH_UNLOCK()
  br label %69

51:                                               ; preds = %31
  %52 = load %struct.dquot*, %struct.dquot** %4, align 8
  %53 = getelementptr inbounds %struct.dquot, %struct.dquot* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DQ_MOD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.dquot*, %struct.dquot** %4, align 8
  %60 = getelementptr inbounds %struct.dquot, %struct.dquot* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = call i32 (...) @DQH_UNLOCK()
  br label %31

64:                                               ; preds = %51
  %65 = load %struct.dquot*, %struct.dquot** %4, align 8
  %66 = load i32, i32* @dq_freelist, align 4
  %67 = call i32 @TAILQ_INSERT_TAIL(i32* @dqfreelist, %struct.dquot* %65, i32 %66)
  %68 = call i32 (...) @DQH_UNLOCK()
  br label %69

69:                                               ; preds = %64, %49, %23, %8
  ret void
}

declare dso_local i32 @DQH_LOCK(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DQH_UNLOCK(...) #1

declare dso_local i32 @dqsync(%struct.vnode*, %struct.dquot*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.dquot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
