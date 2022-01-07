; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_diskstorage_tbl.c_init_disk_storage_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_diskstorage_tbl.c_init_disk_storage_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@md_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i8* null, align 8
@MDCTL_NAME = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"open %s failed - will not include md(4) info: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_disk_storage_tbl() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = bitcast [32 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 32, i1 false)
  %3 = call i32 (...) @mdmaybeload()
  store i32 -1, i32* @md_fd, align 4
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %5 = load i8*, i8** @_PATH_DEV, align 8
  %6 = load i32, i32* @MDCTL_NAME, align 4
  %7 = call i32 @snprintf(i8* %4, i32 31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %6)
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = call i32 @open(i8* %8, i32 %9)
  store i32 %10, i32* @md_fd, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i32, i32* @LOG_ERR, align 4
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %15 = call i32 @syslog(i32 %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %12, %0
  %17 = call i32 @refresh_disk_storage_tbl(i32 1)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mdmaybeload(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @syslog(i32, i8*, i8*) #2

declare dso_local i32 @refresh_disk_storage_tbl(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
