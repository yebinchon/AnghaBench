; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_file_register_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_file_register_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sysctl_oid = type { i32 }

@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"linker_file_register_sysctls: registering SYSCTLs for %s\0A\00", align 1
@kld_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"sysctl_set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @linker_file_register_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linker_file_register_sysctls(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysctl_oid**, align 8
  %6 = alloca %struct.sysctl_oid**, align 8
  %7 = alloca %struct.sysctl_oid**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @FILE, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @KLD_DPF(i32 %8, i8* %13)
  %15 = load i32, i32* @SA_XLOCKED, align 4
  %16 = call i32 @sx_assert(i32* @kld_sx, i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = call i64 @linker_file_lookup_set(%struct.TYPE_4__* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.sysctl_oid*** %5, %struct.sysctl_oid*** %6, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %47

21:                                               ; preds = %2
  %22 = call i32 @sx_xunlock(i32* @kld_sx)
  %23 = call i32 (...) @sysctl_wlock()
  %24 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %5, align 8
  store %struct.sysctl_oid** %24, %struct.sysctl_oid*** %7, align 8
  br label %25

25:                                               ; preds = %41, %21
  %26 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %7, align 8
  %27 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %6, align 8
  %28 = icmp ult %struct.sysctl_oid** %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %7, align 8
  %34 = load %struct.sysctl_oid*, %struct.sysctl_oid** %33, align 8
  %35 = call i32 @sysctl_register_oid(%struct.sysctl_oid* %34)
  br label %40

36:                                               ; preds = %29
  %37 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %7, align 8
  %38 = load %struct.sysctl_oid*, %struct.sysctl_oid** %37, align 8
  %39 = call i32 @sysctl_register_disabled_oid(%struct.sysctl_oid* %38)
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %7, align 8
  %43 = getelementptr inbounds %struct.sysctl_oid*, %struct.sysctl_oid** %42, i32 1
  store %struct.sysctl_oid** %43, %struct.sysctl_oid*** %7, align 8
  br label %25

44:                                               ; preds = %25
  %45 = call i32 (...) @sysctl_wunlock()
  %46 = call i32 @sx_xlock(i32* @kld_sx)
  br label %47

47:                                               ; preds = %44, %20
  ret void
}

declare dso_local i32 @KLD_DPF(i32, i8*) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @linker_file_lookup_set(%struct.TYPE_4__*, i8*, %struct.sysctl_oid***, %struct.sysctl_oid***, i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @sysctl_wlock(...) #1

declare dso_local i32 @sysctl_register_oid(%struct.sysctl_oid*) #1

declare dso_local i32 @sysctl_register_disabled_oid(%struct.sysctl_oid*) #1

declare dso_local i32 @sysctl_wunlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
