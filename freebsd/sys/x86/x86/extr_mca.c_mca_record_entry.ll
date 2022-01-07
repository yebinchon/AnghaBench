; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_record_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_record_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_record = type { i32 }
%struct.mca_internal = type { %struct.mca_record }

@POLLED = common dso_local global i32 0, align 4
@M_MCA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@mca_lock = common dso_local global i32 0, align 4
@mca_freelist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"MCA: Unable to allocate space for an event.\0A\00", align 1
@link = common dso_local global i32 0, align 4
@mca_freecount = common dso_local global i32 0, align 4
@mca_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mca_record*)* @mca_record_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_record_entry(i32 %0, %struct.mca_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mca_record*, align 8
  %5 = alloca %struct.mca_internal*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.mca_record* %1, %struct.mca_record** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @POLLED, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @M_MCA, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = call %struct.mca_internal* @malloc(i32 4, i32 %10, i32 %11)
  store %struct.mca_internal* %12, %struct.mca_internal** %5, align 8
  %13 = call i32 @mtx_lock_spin(i32* @mca_lock)
  br label %29

14:                                               ; preds = %2
  %15 = call i32 @mtx_lock_spin(i32* @mca_lock)
  %16 = call %struct.mca_internal* @STAILQ_FIRST(i32* @mca_freelist)
  store %struct.mca_internal* %16, %struct.mca_internal** %5, align 8
  %17 = load %struct.mca_internal*, %struct.mca_internal** %5, align 8
  %18 = icmp eq %struct.mca_internal* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.mca_record*, %struct.mca_record** %4, align 8
  %22 = call i32 @mca_log(%struct.mca_record* %21)
  %23 = call i32 @mtx_unlock_spin(i32* @mca_lock)
  br label %39

24:                                               ; preds = %14
  %25 = load i32, i32* @link, align 4
  %26 = call i32 @STAILQ_REMOVE_HEAD(i32* @mca_freelist, i32 %25)
  %27 = load i32, i32* @mca_freecount, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @mca_freecount, align 4
  br label %29

29:                                               ; preds = %24, %9
  %30 = load %struct.mca_internal*, %struct.mca_internal** %5, align 8
  %31 = getelementptr inbounds %struct.mca_internal, %struct.mca_internal* %30, i32 0, i32 0
  %32 = load %struct.mca_record*, %struct.mca_record** %4, align 8
  %33 = bitcast %struct.mca_record* %31 to i8*
  %34 = bitcast %struct.mca_record* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.mca_internal*, %struct.mca_internal** %5, align 8
  %36 = load i32, i32* @link, align 4
  %37 = call i32 @STAILQ_INSERT_TAIL(i32* @mca_pending, %struct.mca_internal* %35, i32 %36)
  %38 = call i32 @mtx_unlock_spin(i32* @mca_lock)
  br label %39

39:                                               ; preds = %29, %19
  ret void
}

declare dso_local %struct.mca_internal* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local %struct.mca_internal* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mca_log(%struct.mca_record*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.mca_internal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
