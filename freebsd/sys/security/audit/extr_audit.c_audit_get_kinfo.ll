; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_get_kinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_get_kinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auditinfo_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@audit_kinfo = common dso_local global %struct.auditinfo_addr zeroinitializer, align 8
@AU_IPv4 = common dso_local global i64 0, align 8
@AU_IPv6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"audit_set_kinfo: invalid address type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_get_kinfo(%struct.auditinfo_addr* %0) #0 {
  %2 = alloca %struct.auditinfo_addr*, align 8
  store %struct.auditinfo_addr* %0, %struct.auditinfo_addr** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.auditinfo_addr, %struct.auditinfo_addr* @audit_kinfo, i32 0, i32 0, i32 0), align 8
  %4 = load i64, i64* @AU_IPv4, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.auditinfo_addr, %struct.auditinfo_addr* @audit_kinfo, i32 0, i32 0, i32 0), align 8
  %8 = load i64, i64* @AU_IPv6, align 8
  %9 = icmp eq i64 %7, %8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ true, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @KINFO_RLOCK()
  %15 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %2, align 8
  %16 = bitcast %struct.auditinfo_addr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.auditinfo_addr* @audit_kinfo to i8*), i64 8, i1 false)
  %17 = call i32 (...) @KINFO_RUNLOCK()
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @KINFO_RLOCK(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @KINFO_RUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
