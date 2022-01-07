; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_mac_veriexec_metadata_print_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_mac_veriexec_metadata_print_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.veriexec_devhead*, i8* }
%struct.veriexec_devhead = type { i32 }
%struct.sbuf = type { i32 }

@veriexec_file_dev_head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"regular files\00", align 1
@veriexec_dev_head = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"executable files\00", align 1
@__const.mac_veriexec_metadata_print_db.fpdbs = private unnamed_addr constant [2 x %struct.anon] [%struct.anon { %struct.veriexec_devhead* bitcast (i32* @veriexec_file_dev_head to %struct.veriexec_devhead*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0) }, %struct.anon { %struct.veriexec_devhead* bitcast (i32* @veriexec_dev_head to %struct.veriexec_devhead*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0) }], align 16
@ve_mutex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s fingerprint db:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_veriexec_metadata_print_db(%struct.sbuf* %0) #0 {
  %2 = alloca %struct.sbuf*, align 8
  %3 = alloca [2 x %struct.anon], align 16
  %4 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %2, align 8
  %5 = bitcast [2 x %struct.anon]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([2 x %struct.anon]* @__const.mac_veriexec_metadata_print_db.fpdbs to i8*), i64 32, i1 false)
  %6 = call i32 @mtx_lock(i32* @ve_mutex)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 2
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load %struct.veriexec_devhead*, %struct.veriexec_devhead** %23, align 16
  %25 = call i32 @mac_veriexec_print_db_head(%struct.sbuf* %19, %struct.veriexec_devhead* %24)
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %7

29:                                               ; preds = %7
  %30 = call i32 @mtx_unlock(i32* @ve_mutex)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*) #2

declare dso_local i32 @mac_veriexec_print_db_head(%struct.sbuf*, %struct.veriexec_devhead*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
