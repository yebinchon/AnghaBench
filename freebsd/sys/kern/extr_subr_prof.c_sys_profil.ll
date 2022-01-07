; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_prof.c_sys_profil.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_prof.c_sys_profil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uprof }
%struct.uprof = type { i32, i32, i32, i32 }
%struct.profil_args = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_profil(%struct.thread* %0, %struct.profil_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.profil_args*, align 8
  %6 = alloca %struct.uprof*, align 8
  %7 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.profil_args* %1, %struct.profil_args** %5, align 8
  %8 = load %struct.profil_args*, %struct.profil_args** %5, align 8
  %9 = getelementptr inbounds %struct.profil_args, %struct.profil_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 65536
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %7, align 8
  %18 = load %struct.profil_args*, %struct.profil_args** %5, align 8
  %19 = getelementptr inbounds %struct.profil_args, %struct.profil_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.proc*, %struct.proc** %7, align 8
  %24 = call i32 @PROC_LOCK(%struct.proc* %23)
  %25 = load %struct.proc*, %struct.proc** %7, align 8
  %26 = call i32 @stopprofclock(%struct.proc* %25)
  %27 = load %struct.proc*, %struct.proc** %7, align 8
  %28 = call i32 @PROC_UNLOCK(%struct.proc* %27)
  store i32 0, i32* %3, align 4
  br label %66

29:                                               ; preds = %14
  %30 = load %struct.proc*, %struct.proc** %7, align 8
  %31 = call i32 @PROC_LOCK(%struct.proc* %30)
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load %struct.proc*, %struct.proc** %33, align 8
  %35 = getelementptr inbounds %struct.proc, %struct.proc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.uprof* %37, %struct.uprof** %6, align 8
  %38 = load %struct.proc*, %struct.proc** %7, align 8
  %39 = call i32 @PROC_PROFLOCK(%struct.proc* %38)
  %40 = load %struct.profil_args*, %struct.profil_args** %5, align 8
  %41 = getelementptr inbounds %struct.profil_args, %struct.profil_args* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.uprof*, %struct.uprof** %6, align 8
  %44 = getelementptr inbounds %struct.uprof, %struct.uprof* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.profil_args*, %struct.profil_args** %5, align 8
  %46 = getelementptr inbounds %struct.profil_args, %struct.profil_args* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.uprof*, %struct.uprof** %6, align 8
  %49 = getelementptr inbounds %struct.uprof, %struct.uprof* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.profil_args*, %struct.profil_args** %5, align 8
  %51 = getelementptr inbounds %struct.profil_args, %struct.profil_args* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.uprof*, %struct.uprof** %6, align 8
  %54 = getelementptr inbounds %struct.uprof, %struct.uprof* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.profil_args*, %struct.profil_args** %5, align 8
  %56 = getelementptr inbounds %struct.profil_args, %struct.profil_args* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.uprof*, %struct.uprof** %6, align 8
  %59 = getelementptr inbounds %struct.uprof, %struct.uprof* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.proc*, %struct.proc** %7, align 8
  %61 = call i32 @PROC_PROFUNLOCK(%struct.proc* %60)
  %62 = load %struct.proc*, %struct.proc** %7, align 8
  %63 = call i32 @startprofclock(%struct.proc* %62)
  %64 = load %struct.proc*, %struct.proc** %7, align 8
  %65 = call i32 @PROC_UNLOCK(%struct.proc* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %29, %22, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @stopprofclock(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @PROC_PROFLOCK(%struct.proc*) #1

declare dso_local i32 @PROC_PROFUNLOCK(%struct.proc*) #1

declare dso_local i32 @startprofclock(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
