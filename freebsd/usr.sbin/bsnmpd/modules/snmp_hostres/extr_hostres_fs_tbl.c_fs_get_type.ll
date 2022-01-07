; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_fs_tbl.c_fs_get_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_fs_tbl.c_fs_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.asn_oid*, i32 }
%struct.asn_oid = type { i32 }
%struct.statfs = type { i32 }

@N_FS_TYPE_MAP = common dso_local global i64 0, align 8
@fs_type_map = common dso_local global %struct.TYPE_2__* null, align 8
@OIDX_hrFSUnknown_c = common dso_local global %struct.asn_oid zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.asn_oid* @fs_get_type(%struct.statfs* %0) #0 {
  %2 = alloca %struct.asn_oid*, align 8
  %3 = alloca %struct.statfs*, align 8
  %4 = alloca i64, align 8
  store %struct.statfs* %0, %struct.statfs** %3, align 8
  %5 = load %struct.statfs*, %struct.statfs** %3, align 8
  %6 = icmp ne %struct.statfs* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @N_FS_TYPE_MAP, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs_type_map, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.statfs*, %struct.statfs** %3, align 8
  %20 = getelementptr inbounds %struct.statfs, %struct.statfs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcmp(i32 %18, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs_type_map, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.asn_oid*, %struct.asn_oid** %28, align 8
  store %struct.asn_oid* %29, %struct.asn_oid** %2, align 8
  br label %35

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %9

34:                                               ; preds = %9
  store %struct.asn_oid* @OIDX_hrFSUnknown_c, %struct.asn_oid** %2, align 8
  br label %35

35:                                               ; preds = %34, %24
  %36 = load %struct.asn_oid*, %struct.asn_oid** %2, align 8
  ret %struct.asn_oid* %36
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
