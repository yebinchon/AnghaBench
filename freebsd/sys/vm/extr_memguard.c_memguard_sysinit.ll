; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_memguard_sysinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_memguard_sysinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid_list = type { i32 }

@_vm_memguard = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mapstart\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@memguard_base = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"MemGuard KVA base\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"maplimit\00", align 1
@memguard_mapsize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"MemGuard KVA size\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mapused\00", align 1
@CTLTYPE_ULONG = common dso_local global i32 0, align 4
@memguard_sysctl_mapused = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"LU\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"MemGuard KVA used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @memguard_sysinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memguard_sysinit() #0 {
  %1 = alloca %struct.sysctl_oid_list*, align 8
  %2 = load i32, i32* @_vm_memguard, align 4
  %3 = call %struct.sysctl_oid_list* @SYSCTL_STATIC_CHILDREN(i32 %2)
  store %struct.sysctl_oid_list* %3, %struct.sysctl_oid_list** %1, align 8
  %4 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %1, align 8
  %5 = load i32, i32* @OID_AUTO, align 4
  %6 = load i32, i32* @CTLFLAG_RD, align 4
  %7 = call i32 @SYSCTL_ADD_UAUTO(i32* null, %struct.sysctl_oid_list* %4, i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %6, i32* @memguard_base, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %1, align 8
  %9 = load i32, i32* @OID_AUTO, align 4
  %10 = load i32, i32* @CTLFLAG_RD, align 4
  %11 = call i32 @SYSCTL_ADD_UAUTO(i32* null, %struct.sysctl_oid_list* %8, i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32* @memguard_mapsize, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %12 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %1, align 8
  %13 = load i32, i32* @OID_AUTO, align 4
  %14 = load i32, i32* @CTLFLAG_RD, align 4
  %15 = load i32, i32* @CTLTYPE_ULONG, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @memguard_sysctl_mapused, align 4
  %18 = call i32 @SYSCTL_ADD_PROC(i32* null, %struct.sysctl_oid_list* %12, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %16, i32* null, i32 0, i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_oid_list* @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_UAUTO(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
