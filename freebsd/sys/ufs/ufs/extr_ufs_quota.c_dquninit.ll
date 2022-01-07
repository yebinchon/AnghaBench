; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_dquninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_dquninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32 }

@dqhashtbl = common dso_local global i32 0, align 4
@M_DQUOT = common dso_local global i32 0, align 4
@dqhash = common dso_local global i32 0, align 4
@dqfreelist = common dso_local global i32 0, align 4
@dq_freelist = common dso_local global i32 0, align 4
@dqhlock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dquninit() #0 {
  %1 = alloca %struct.dquot*, align 8
  %2 = load i32, i32* @dqhashtbl, align 4
  %3 = load i32, i32* @M_DQUOT, align 4
  %4 = load i32, i32* @dqhash, align 4
  %5 = call i32 @hashdestroy(i32 %2, i32 %3, i32 %4)
  br label %6

6:                                                ; preds = %9, %0
  %7 = call %struct.dquot* @TAILQ_FIRST(i32* @dqfreelist)
  store %struct.dquot* %7, %struct.dquot** %1, align 8
  %8 = icmp ne %struct.dquot* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %struct.dquot*, %struct.dquot** %1, align 8
  %11 = load i32, i32* @dq_freelist, align 4
  %12 = call i32 @TAILQ_REMOVE(i32* @dqfreelist, %struct.dquot* %10, i32 %11)
  %13 = load %struct.dquot*, %struct.dquot** %1, align 8
  %14 = getelementptr inbounds %struct.dquot, %struct.dquot* %13, i32 0, i32 0
  %15 = call i32 @mtx_destroy(i32* %14)
  %16 = load %struct.dquot*, %struct.dquot** %1, align 8
  %17 = load i32, i32* @M_DQUOT, align 4
  %18 = call i32 @free(%struct.dquot* %16, i32 %17)
  br label %6

19:                                               ; preds = %6
  %20 = call i32 @mtx_destroy(i32* @dqhlock)
  ret void
}

declare dso_local i32 @hashdestroy(i32, i32, i32) #1

declare dso_local %struct.dquot* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.dquot*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.dquot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
