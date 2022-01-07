; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdnew.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i32, i32, i32, i32, i32, i32, i32 }

@md_uh = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_MD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"md bio queue\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"md stat\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"md%d\00", align 1
@md_softc_list = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@md_kthread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.md_s* (i32, i32*, i32)* @mdnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.md_s* @mdnew(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.md_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.md_s*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @md_uh, align 4
  %15 = call i32 @alloc_unr(i32 %14)
  store i32 %15, i32* %5, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @md_uh, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @alloc_unr_specific(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EBUSY, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  store %struct.md_s* null, %struct.md_s** %4, align 8
  br label %90

26:                                               ; preds = %20
  %27 = load i32, i32* @M_MD, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @malloc(i32 28, i32 %27, i32 %30)
  %32 = inttoptr i64 %31 to %struct.md_s*
  store %struct.md_s* %32, %struct.md_s** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.md_s*, %struct.md_s** %8, align 8
  %35 = getelementptr inbounds %struct.md_s, %struct.md_s* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.md_s*, %struct.md_s** %8, align 8
  %37 = getelementptr inbounds %struct.md_s, %struct.md_s* %36, i32 0, i32 6
  %38 = call i32 @bioq_init(i32* %37)
  %39 = load %struct.md_s*, %struct.md_s** %8, align 8
  %40 = getelementptr inbounds %struct.md_s, %struct.md_s* %39, i32 0, i32 2
  %41 = load i32, i32* @MTX_DEF, align 4
  %42 = call i32 @mtx_init(i32* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 %41)
  %43 = load %struct.md_s*, %struct.md_s** %8, align 8
  %44 = getelementptr inbounds %struct.md_s, %struct.md_s* %43, i32 0, i32 3
  %45 = load i32, i32* @MTX_DEF, align 4
  %46 = call i32 @mtx_init(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.md_s*, %struct.md_s** %8, align 8
  %49 = getelementptr inbounds %struct.md_s, %struct.md_s* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.md_s*, %struct.md_s** %8, align 8
  %51 = getelementptr inbounds %struct.md_s, %struct.md_s* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @sprintf(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.md_s*, %struct.md_s** %8, align 8
  %56 = load i32, i32* @list, align 4
  %57 = call i32 @LIST_INSERT_HEAD(i32* @md_softc_list, %struct.md_s* %55, i32 %56)
  %58 = load i32, i32* @md_kthread, align 4
  %59 = load %struct.md_s*, %struct.md_s** %8, align 8
  %60 = load %struct.md_s*, %struct.md_s** %8, align 8
  %61 = getelementptr inbounds %struct.md_s, %struct.md_s* %60, i32 0, i32 5
  %62 = load %struct.md_s*, %struct.md_s** %8, align 8
  %63 = getelementptr inbounds %struct.md_s, %struct.md_s* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @kproc_create(i32 %58, %struct.md_s* %59, i32* %61, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %26
  %69 = load %struct.md_s*, %struct.md_s** %8, align 8
  store %struct.md_s* %69, %struct.md_s** %4, align 8
  br label %90

70:                                               ; preds = %26
  %71 = load %struct.md_s*, %struct.md_s** %8, align 8
  %72 = load i32, i32* @list, align 4
  %73 = call i32 @LIST_REMOVE(%struct.md_s* %71, i32 %72)
  %74 = load %struct.md_s*, %struct.md_s** %8, align 8
  %75 = getelementptr inbounds %struct.md_s, %struct.md_s* %74, i32 0, i32 3
  %76 = call i32 @mtx_destroy(i32* %75)
  %77 = load %struct.md_s*, %struct.md_s** %8, align 8
  %78 = getelementptr inbounds %struct.md_s, %struct.md_s* %77, i32 0, i32 2
  %79 = call i32 @mtx_destroy(i32* %78)
  %80 = load i32, i32* @md_uh, align 4
  %81 = load %struct.md_s*, %struct.md_s** %8, align 8
  %82 = getelementptr inbounds %struct.md_s, %struct.md_s* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @free_unr(i32 %80, i32 %83)
  %85 = load %struct.md_s*, %struct.md_s** %8, align 8
  %86 = load i32, i32* @M_MD, align 4
  %87 = call i32 @free(%struct.md_s* %85, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = load i32*, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  store %struct.md_s* null, %struct.md_s** %4, align 8
  br label %90

90:                                               ; preds = %70, %68, %23
  %91 = load %struct.md_s*, %struct.md_s** %4, align 8
  ret %struct.md_s* %91
}

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @alloc_unr_specific(i32, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bioq_init(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.md_s*, i32) #1

declare dso_local i32 @kproc_create(i32, %struct.md_s*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.md_s*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @free(%struct.md_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
