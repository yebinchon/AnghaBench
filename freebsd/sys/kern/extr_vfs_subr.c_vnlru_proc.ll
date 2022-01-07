; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vnlru_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vnlru_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mount = type { i32 }

@shutdown_pre_sync = common dso_local global i32 0, align 4
@kproc_shutdown = common dso_local global i32 0, align 4
@vnlruproc = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_FIRST = common dso_local global i32 0, align 4
@vnode_free_list_mtx = common dso_local global i32 0, align 4
@numvnodes = common dso_local global i64 0, align 8
@desiredvnodes = common dso_local global i64 0, align 8
@vstir = common dso_local global i64 0, align 8
@vlowat = common dso_local global i32 0, align 4
@vnlruproc_sig = common dso_local global i64 0, align 8
@PVFS = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vlruwt\00", align 1
@hz = common dso_local global i32 0, align 4
@freevnodes = common dso_local global i64 0, align 8
@vm_cnt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vsmalltrigger = common dso_local global i32 0, align 4
@mountlist_mtx = common dso_local global i32 0, align 4
@mountlist = common dso_local global i32 0, align 4
@MBF_NOWAIT = common dso_local global i32 0, align 4
@MBF_MNTLSTLOCK = common dso_local global i32 0, align 4
@mnt_list = common dso_local global i32 0, align 4
@UMA_RECLAIM_DRAIN = common dso_local global i32 0, align 4
@vnlru_nowhere = common dso_local global i32 0, align 4
@PPAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"vlrup\00", align 1
@PRI_USER = common dso_local global i32 0, align 4
@vhiwat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vnlru_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnlru_proc() #0 {
  %1 = alloca %struct.mount*, align 8
  %2 = alloca %struct.mount*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @shutdown_pre_sync, align 4
  %11 = load i32, i32* @kproc_shutdown, align 4
  %12 = load i32, i32* @vnlruproc, align 4
  %13 = load i32, i32* @SHUTDOWN_PRI_FIRST, align 4
  %14 = call i32 @EVENTHANDLER_REGISTER(i32 %10, i32 %11, i32 %12, i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %151, %139, %135, %42, %0
  %16 = load i32, i32* @vnlruproc, align 4
  %17 = call i32 @kproc_suspend_check(i32 %16)
  %18 = call i32 @mtx_lock(i32* @vnode_free_list_mtx)
  %19 = load i64, i64* @numvnodes, align 8
  %20 = load i64, i64* @desiredvnodes, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i64, i64* @numvnodes, align 8
  %24 = load i64, i64* @desiredvnodes, align 8
  %25 = sub i64 %23, %24
  %26 = call i32 @vnlru_free_locked(i64 %25, i32* null)
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i64, i64* @vstir, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  store i64 0, i64* @vstir, align 8
  br label %34

34:                                               ; preds = %33, %30, %27
  %35 = call i32 (...) @vspace()
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @vlowat, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  store i64 0, i64* @vnlruproc_sig, align 8
  %43 = call i32 @wakeup(i64* @vnlruproc_sig)
  %44 = load i32, i32* @vnlruproc, align 4
  %45 = load i32, i32* @PVFS, align 4
  %46 = load i32, i32* @PDROP, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @hz, align 4
  %49 = call i32 @msleep(i32 %44, i32* @vnode_free_list_mtx, i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %15

50:                                               ; preds = %39, %34
  %51 = call i32 @mtx_unlock(i32* @vnode_free_list_mtx)
  store i32 0, i32* %4, align 4
  %52 = load i64, i64* @numvnodes, align 8
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* @numvnodes, align 8
  %54 = load i64, i64* @desiredvnodes, align 8
  %55 = icmp ule i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i64, i64* @numvnodes, align 8
  %58 = load i64, i64* @freevnodes, align 8
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  br label %64

61:                                               ; preds = %50
  %62 = load i64, i64* @numvnodes, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %7, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 0), align 4
  %70 = mul nsw i32 %69, 2
  %71 = load i32, i32* %7, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @vsmalltrigger, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %68
  %78 = load i32, i32* %5, align 4
  %79 = icmp sge i32 %78, 3
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %82 = call %struct.mount* @TAILQ_FIRST(i32* @mountlist)
  store %struct.mount* %82, %struct.mount** %1, align 8
  br label %83

83:                                               ; preds = %112, %77
  %84 = load %struct.mount*, %struct.mount** %1, align 8
  %85 = icmp ne %struct.mount* %84, null
  br i1 %85, label %86, label %114

86:                                               ; preds = %83
  %87 = load %struct.mount*, %struct.mount** %1, align 8
  %88 = load i32, i32* @MBF_NOWAIT, align 4
  %89 = load i32, i32* @MBF_MNTLSTLOCK, align 4
  %90 = or i32 %88, %89
  %91 = call i64 @vfs_busy(%struct.mount* %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.mount*, %struct.mount** %1, align 8
  %95 = load i32, i32* @mnt_list, align 4
  %96 = call %struct.mount* @TAILQ_NEXT(%struct.mount* %94, i32 %95)
  store %struct.mount* %96, %struct.mount** %2, align 8
  br label %112

97:                                               ; preds = %86
  %98 = load %struct.mount*, %struct.mount** %1, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @vlrureclaim(%struct.mount* %98, i32 %99, i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %4, align 4
  %106 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %107 = load %struct.mount*, %struct.mount** %1, align 8
  %108 = load i32, i32* @mnt_list, align 4
  %109 = call %struct.mount* @TAILQ_NEXT(%struct.mount* %107, i32 %108)
  store %struct.mount* %109, %struct.mount** %2, align 8
  %110 = load %struct.mount*, %struct.mount** %1, align 8
  %111 = call i32 @vfs_unbusy(%struct.mount* %110)
  br label %112

112:                                              ; preds = %97, %93
  %113 = load %struct.mount*, %struct.mount** %2, align 8
  store %struct.mount* %113, %struct.mount** %1, align 8
  br label %83

114:                                              ; preds = %83
  %115 = call i32 @mtx_unlock(i32* @mountlist_mtx)
  %116 = load i64, i64* %3, align 8
  %117 = load i64, i64* @desiredvnodes, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i64, i64* @numvnodes, align 8
  %121 = load i64, i64* @desiredvnodes, align 8
  %122 = icmp ule i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* @UMA_RECLAIM_DRAIN, align 4
  %125 = call i32 @uma_reclaim(i32 %124)
  br label %126

126:                                              ; preds = %123, %119, %114
  %127 = load i32, i32* %4, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %148

129:                                              ; preds = %126
  %130 = load i32, i32* %5, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %5, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %132, %129
  store i32 2, i32* %5, align 4
  br label %15

136:                                              ; preds = %132
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 3, i32* %5, align 4
  br label %15

140:                                              ; preds = %136
  store i32 0, i32* %5, align 4
  %141 = load i32, i32* @vnlru_nowhere, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @vnlru_nowhere, align 4
  %143 = load i32, i32* @vnlruproc, align 4
  %144 = load i32, i32* @PPAUSE, align 4
  %145 = load i32, i32* @hz, align 4
  %146 = mul nsw i32 %145, 3
  %147 = call i32 @tsleep(i32 %143, i32 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  br label %151

148:                                              ; preds = %126
  %149 = load i32, i32* @PRI_USER, align 4
  %150 = call i32 @kern_yield(i32 %149)
  br label %151

151:                                              ; preds = %148, %140
  %152 = call i32 (...) @vspace()
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @vhiwat, align 4
  %155 = icmp slt i32 %153, %154
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %5, align 4
  br label %15
}

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

declare dso_local i32 @kproc_suspend_check(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vnlru_free_locked(i64, i32*) #1

declare dso_local i32 @vspace(...) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @msleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.mount* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @vfs_busy(%struct.mount*, i32) #1

declare dso_local %struct.mount* @TAILQ_NEXT(%struct.mount*, i32) #1

declare dso_local i64 @vlrureclaim(%struct.mount*, i32, i32) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @uma_reclaim(i32) #1

declare dso_local i32 @tsleep(i32, i32, i8*, i32) #1

declare dso_local i32 @kern_yield(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
