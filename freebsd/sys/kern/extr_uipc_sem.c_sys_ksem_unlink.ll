; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sys_ksem_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_sys_ksem_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.ksem_unlink_args = type { i32 }

@MAXPATHLEN = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@FNV1_32_INIT = common dso_local global i32 0, align 4
@ksem_dict_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ksem_unlink(%struct.thread* %0, %struct.ksem_unlink_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.ksem_unlink_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.ksem_unlink_args* %1, %struct.ksem_unlink_args** %5, align 8
  %11 = load i64, i64* @MAXPATHLEN, align 8
  %12 = load i32, i32* @M_TEMP, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = call i8* @malloc(i64 %11, i32 %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %31

26:                                               ; preds = %2
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* @MAXPATHLEN, align 8
  %30 = call i64 @strlcpy(i8* %27, i8* %28, i64 %29)
  br label %31

31:                                               ; preds = %26, %25
  %32 = phi i64 [ 0, %25 ], [ %30, %26 ]
  store i64 %32, i64* %8, align 8
  %33 = load %struct.ksem_unlink_args*, %struct.ksem_unlink_args** %5, align 8
  %34 = getelementptr inbounds %struct.ksem_unlink_args, %struct.ksem_unlink_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i64, i64* @MAXPATHLEN, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %39, %40
  %42 = call i32 @copyinstr(i32 %35, i8* %38, i64 %41, i32* null)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %31
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @M_TEMP, align 4
  %48 = call i32 @free(i8* %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %68

50:                                               ; preds = %31
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @AUDIT_ARG_UPATH1_CANON(i8* %51)
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @FNV1_32_INIT, align 4
  %55 = call i32 @fnv_32_str(i8* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = call i32 @sx_xlock(i32* @ksem_dict_lock)
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.thread*, %struct.thread** %4, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @ksem_remove(i8* %57, i32 %58, %struct.TYPE_4__* %61)
  store i32 %62, i32* %10, align 4
  %63 = call i32 @sx_xunlock(i32* @ksem_dict_lock)
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @M_TEMP, align 4
  %66 = call i32 @free(i8* %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %50, %45
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @copyinstr(i32, i8*, i64, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @AUDIT_ARG_UPATH1_CANON(i8*) #1

declare dso_local i32 @fnv_32_str(i8*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @ksem_remove(i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
