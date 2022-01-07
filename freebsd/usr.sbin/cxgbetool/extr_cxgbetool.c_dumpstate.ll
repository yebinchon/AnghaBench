; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_dumpstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_dumpstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cudbg_dump = type { i32, i32*, i32, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"dumpstate: incorrect number of arguments.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHELSIO_T4_CUDBG_DUMP = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @dumpstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dumpstate(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.t4_cudbg_dump, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = bitcast %struct.t4_cudbg_dump* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.t4_cudbg_dump, %struct.t4_cudbg_dump* %8, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.t4_cudbg_dump, %struct.t4_cudbg_dump* %8, i32 0, i32 2
  %22 = call i32 @memset(i32* %21, i32 255, i32 4)
  %23 = getelementptr inbounds %struct.t4_cudbg_dump, %struct.t4_cudbg_dump* %8, i32 0, i32 0
  store i32 8388608, i32* %23, align 8
  %24 = getelementptr inbounds %struct.t4_cudbg_dump, %struct.t4_cudbg_dump* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @malloc(i32 %25)
  %27 = getelementptr inbounds %struct.t4_cudbg_dump, %struct.t4_cudbg_dump* %8, i32 0, i32 1
  store i32* %26, i32** %27, align 8
  %28 = getelementptr inbounds %struct.t4_cudbg_dump, %struct.t4_cudbg_dump* %8, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %19
  %34 = load i32, i32* @CHELSIO_T4_CUDBG_DUMP, align 4
  %35 = call i32 @doit(i32 %34, %struct.t4_cudbg_dump* %8)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %69

39:                                               ; preds = %33
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @O_CREAT, align 4
  %42 = load i32, i32* @O_TRUNC, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @O_EXCL, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @O_WRONLY, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @S_IRUSR, align 4
  %49 = load i32, i32* @S_IRGRP, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @S_IROTH, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @open(i8* %40, i32 %47, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %39
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %6, align 4
  br label %69

60:                                               ; preds = %39
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds %struct.t4_cudbg_dump, %struct.t4_cudbg_dump* %8, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds %struct.t4_cudbg_dump, %struct.t4_cudbg_dump* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @write(i32 %61, i32* %63, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @close(i32 %67)
  br label %69

69:                                               ; preds = %60, %56, %38
  %70 = getelementptr inbounds %struct.t4_cudbg_dump, %struct.t4_cudbg_dump* %8, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @free(i32* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %31, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @doit(i32, %struct.t4_cudbg_dump*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @write(i32, i32*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
