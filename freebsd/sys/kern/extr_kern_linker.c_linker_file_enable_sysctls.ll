; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_file_enable_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_file_enable_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sysctl_oid = type { i32 }

@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"linker_file_enable_sysctls: enable SYSCTLs for %s\0A\00", align 1
@kld_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"sysctl_set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @linker_file_enable_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linker_file_enable_sysctls(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.sysctl_oid**, align 8
  %4 = alloca %struct.sysctl_oid**, align 8
  %5 = alloca %struct.sysctl_oid**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load i32, i32* @FILE, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @KLD_DPF(i32 %6, i8* %11)
  %13 = load i32, i32* @SA_XLOCKED, align 4
  %14 = call i32 @sx_assert(i32* @kld_sx, i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = call i64 @linker_file_lookup_set(%struct.TYPE_4__* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.sysctl_oid*** %3, %struct.sysctl_oid*** %4, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %37

19:                                               ; preds = %1
  %20 = call i32 @sx_xunlock(i32* @kld_sx)
  %21 = call i32 (...) @sysctl_wlock()
  %22 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %3, align 8
  store %struct.sysctl_oid** %22, %struct.sysctl_oid*** %5, align 8
  br label %23

23:                                               ; preds = %31, %19
  %24 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %5, align 8
  %25 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %4, align 8
  %26 = icmp ult %struct.sysctl_oid** %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %5, align 8
  %29 = load %struct.sysctl_oid*, %struct.sysctl_oid** %28, align 8
  %30 = call i32 @sysctl_enable_oid(%struct.sysctl_oid* %29)
  br label %31

31:                                               ; preds = %27
  %32 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %5, align 8
  %33 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %32, i32 1
  store %struct.sysctl_oid** %33, %struct.sysctl_oid*** %5, align 8
  br label %23

34:                                               ; preds = %23
  %35 = call i32 (...) @sysctl_wunlock()
  %36 = call i32 @sx_xlock(i32* @kld_sx)
  br label %37

37:                                               ; preds = %34, %18
  ret void
}

declare dso_local i32 @KLD_DPF(i32, i8*) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @linker_file_lookup_set(%struct.TYPE_4__*, i8*, %struct.sysctl_oid***, %struct.sysctl_oid***, i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @sysctl_wlock(...) #1

declare dso_local i32 @sysctl_enable_oid(%struct.sysctl_oid*) #1

declare dso_local i32 @sysctl_wunlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
