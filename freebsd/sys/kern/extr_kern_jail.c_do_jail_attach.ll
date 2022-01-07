; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_do_jail_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_do_jail_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, %struct.proc* }
%struct.TYPE_2__ = type { %struct.prison* }
%struct.proc = type { i32 }
%struct.prison = type { i32, i32, i32, i32, i32 }
%struct.ucred = type { %struct.prison* }

@PR_METHOD_ATTACH = common dso_local global i32 0, align 4
@PD_DEREF = common dso_local global i32 0, align 4
@PD_DEUREF = common dso_local global i32 0, align 4
@PD_LIST_SLOCKED = common dso_local global i32 0, align 4
@allprison_lock = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.prison*)* @do_jail_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_jail_attach(%struct.thread* %0, %struct.prison* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.prison*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.prison* %1, %struct.prison** %5, align 8
  %10 = load %struct.prison*, %struct.prison** %5, align 8
  %11 = getelementptr inbounds %struct.prison, %struct.prison* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.prison*, %struct.prison** %5, align 8
  %15 = getelementptr inbounds %struct.prison, %struct.prison* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.prison*, %struct.prison** %5, align 8
  %19 = getelementptr inbounds %struct.prison, %struct.prison* %18, i32 0, i32 2
  %20 = call i32 @mtx_unlock(i32* %19)
  %21 = load %struct.prison*, %struct.prison** %5, align 8
  %22 = load i32, i32* @PR_METHOD_ATTACH, align 4
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = call i32 @osd_jail_call(%struct.prison* %21, i32 %22, %struct.thread* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.prison*, %struct.prison** %5, align 8
  %29 = load i32, i32* @PD_DEREF, align 4
  %30 = load i32, i32* @PD_DEUREF, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PD_LIST_SLOCKED, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @prison_deref(%struct.prison* %28, i32 %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %122

36:                                               ; preds = %2
  %37 = call i32 @sx_sunlock(i32* @allprison_lock)
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 1
  %40 = load %struct.proc*, %struct.proc** %39, align 8
  store %struct.proc* %40, %struct.proc** %6, align 8
  %41 = load %struct.proc*, %struct.proc** %6, align 8
  %42 = load %struct.prison*, %struct.prison** %5, align 8
  %43 = getelementptr inbounds %struct.prison, %struct.prison* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cpuset_setproc_update_set(%struct.proc* %41, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %107

49:                                               ; preds = %36
  %50 = load %struct.prison*, %struct.prison** %5, align 8
  %51 = getelementptr inbounds %struct.prison, %struct.prison* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LK_EXCLUSIVE, align 4
  %54 = load i32, i32* @LK_RETRY, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @vn_lock(i32 %52, i32 %55)
  %57 = load %struct.prison*, %struct.prison** %5, align 8
  %58 = getelementptr inbounds %struct.prison, %struct.prison* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = call i32 @change_dir(i32 %59, %struct.thread* %60)
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %102

64:                                               ; preds = %49
  %65 = load %struct.prison*, %struct.prison** %5, align 8
  %66 = getelementptr inbounds %struct.prison, %struct.prison* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @VOP_UNLOCK(i32 %67, i32 0)
  %69 = load %struct.thread*, %struct.thread** %4, align 8
  %70 = load %struct.prison*, %struct.prison** %5, align 8
  %71 = getelementptr inbounds %struct.prison, %struct.prison* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pwd_chroot(%struct.thread* %69, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %107

76:                                               ; preds = %64
  %77 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %77, %struct.ucred** %7, align 8
  %78 = load %struct.proc*, %struct.proc** %6, align 8
  %79 = call i32 @PROC_LOCK(%struct.proc* %78)
  %80 = load %struct.proc*, %struct.proc** %6, align 8
  %81 = load %struct.ucred*, %struct.ucred** %7, align 8
  %82 = call %struct.ucred* @crcopysafe(%struct.proc* %80, %struct.ucred* %81)
  store %struct.ucred* %82, %struct.ucred** %8, align 8
  %83 = load %struct.prison*, %struct.prison** %5, align 8
  %84 = load %struct.ucred*, %struct.ucred** %7, align 8
  %85 = getelementptr inbounds %struct.ucred, %struct.ucred* %84, i32 0, i32 0
  store %struct.prison* %83, %struct.prison** %85, align 8
  %86 = load %struct.proc*, %struct.proc** %6, align 8
  %87 = load %struct.ucred*, %struct.ucred** %7, align 8
  %88 = call i32 @proc_set_cred(%struct.proc* %86, %struct.ucred* %87)
  %89 = load %struct.proc*, %struct.proc** %6, align 8
  %90 = call i32 @setsugid(%struct.proc* %89)
  %91 = load %struct.proc*, %struct.proc** %6, align 8
  %92 = call i32 @PROC_UNLOCK(%struct.proc* %91)
  %93 = load %struct.ucred*, %struct.ucred** %8, align 8
  %94 = getelementptr inbounds %struct.ucred, %struct.ucred* %93, i32 0, i32 0
  %95 = load %struct.prison*, %struct.prison** %94, align 8
  %96 = load i32, i32* @PD_DEREF, align 4
  %97 = load i32, i32* @PD_DEUREF, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @prison_deref(%struct.prison* %95, i32 %98)
  %100 = load %struct.ucred*, %struct.ucred** %8, align 8
  %101 = call i32 @crfree(%struct.ucred* %100)
  store i32 0, i32* %3, align 4
  br label %122

102:                                              ; preds = %63
  %103 = load %struct.prison*, %struct.prison** %5, align 8
  %104 = getelementptr inbounds %struct.prison, %struct.prison* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @VOP_UNLOCK(i32 %105, i32 0)
  br label %107

107:                                              ; preds = %102, %75, %48
  %108 = load %struct.thread*, %struct.thread** %4, align 8
  %109 = getelementptr inbounds %struct.thread, %struct.thread* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load %struct.prison*, %struct.prison** %111, align 8
  %113 = load i32, i32* @PR_METHOD_ATTACH, align 4
  %114 = load %struct.thread*, %struct.thread** %4, align 8
  %115 = call i32 @osd_jail_call(%struct.prison* %112, i32 %113, %struct.thread* %114)
  %116 = load %struct.prison*, %struct.prison** %5, align 8
  %117 = load i32, i32* @PD_DEREF, align 4
  %118 = load i32, i32* @PD_DEUREF, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @prison_deref(%struct.prison* %116, i32 %119)
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %107, %76, %27
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @osd_jail_call(%struct.prison*, i32, %struct.thread*) #1

declare dso_local i32 @prison_deref(%struct.prison*, i32) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @cpuset_setproc_update_set(%struct.proc*, i32) #1

declare dso_local i32 @vn_lock(i32, i32) #1

declare dso_local i32 @change_dir(i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @pwd_chroot(%struct.thread*, i32) #1

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.ucred* @crcopysafe(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @proc_set_cred(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @setsugid(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
