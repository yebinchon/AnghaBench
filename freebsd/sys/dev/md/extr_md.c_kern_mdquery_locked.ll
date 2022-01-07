; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_kern_mdquery_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_kern_mdquery_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_req = type { i64, i32*, i32*, i32, i32, i32, i32 }
%struct.md_s = type { i64, i32, i32, i32, i32, i32 }

@md_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MD_VNODE = common dso_local global i64 0, align 8
@MD_PRELOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_req*)* @kern_mdquery_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_mdquery_locked(%struct.md_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.md_req*, align 8
  %4 = alloca %struct.md_s*, align 8
  %5 = alloca i32, align 4
  store %struct.md_req* %0, %struct.md_req** %3, align 8
  %6 = load i32, i32* @SA_XLOCKED, align 4
  %7 = call i32 @sx_assert(i32* @md_sx, i32 %6)
  %8 = load %struct.md_req*, %struct.md_req** %3, align 8
  %9 = getelementptr inbounds %struct.md_req, %struct.md_req* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.md_s* @mdfind(i32 %10)
  store %struct.md_s* %11, %struct.md_s** %4, align 8
  %12 = load %struct.md_s*, %struct.md_s** %4, align 8
  %13 = icmp eq %struct.md_s* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOENT, align 4
  store i32 %15, i32* %2, align 4
  br label %91

16:                                               ; preds = %1
  %17 = load %struct.md_s*, %struct.md_s** %4, align 8
  %18 = getelementptr inbounds %struct.md_s, %struct.md_s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.md_req*, %struct.md_req** %3, align 8
  %21 = getelementptr inbounds %struct.md_req, %struct.md_req* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.md_s*, %struct.md_s** %4, align 8
  %23 = getelementptr inbounds %struct.md_s, %struct.md_s* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.md_req*, %struct.md_req** %3, align 8
  %26 = getelementptr inbounds %struct.md_req, %struct.md_req* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.md_s*, %struct.md_s** %4, align 8
  %28 = getelementptr inbounds %struct.md_s, %struct.md_s* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.md_req*, %struct.md_req** %3, align 8
  %31 = getelementptr inbounds %struct.md_req, %struct.md_req* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.md_s*, %struct.md_s** %4, align 8
  %33 = getelementptr inbounds %struct.md_s, %struct.md_s* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.md_req*, %struct.md_req** %3, align 8
  %36 = getelementptr inbounds %struct.md_req, %struct.md_req* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %5, align 4
  %37 = load %struct.md_req*, %struct.md_req** %3, align 8
  %38 = getelementptr inbounds %struct.md_req, %struct.md_req* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %16
  %42 = load %struct.md_s*, %struct.md_s** %4, align 8
  %43 = getelementptr inbounds %struct.md_s, %struct.md_s* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.md_req*, %struct.md_req** %3, align 8
  %46 = getelementptr inbounds %struct.md_req, %struct.md_req* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.md_s*, %struct.md_s** %4, align 8
  %49 = getelementptr inbounds %struct.md_s, %struct.md_s* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strlen(i32 %50)
  %52 = add nsw i64 %51, 1
  %53 = call i32 @copyout(i32 %44, i32* %47, i64 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %91

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %16
  %60 = load %struct.md_s*, %struct.md_s** %4, align 8
  %61 = getelementptr inbounds %struct.md_s, %struct.md_s* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MD_VNODE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load %struct.md_s*, %struct.md_s** %4, align 8
  %67 = getelementptr inbounds %struct.md_s, %struct.md_s* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MD_PRELOAD, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %65
  %72 = load %struct.md_req*, %struct.md_req** %3, align 8
  %73 = getelementptr inbounds %struct.md_req, %struct.md_req* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %89

76:                                               ; preds = %71, %59
  %77 = load %struct.md_s*, %struct.md_s** %4, align 8
  %78 = getelementptr inbounds %struct.md_s, %struct.md_s* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.md_req*, %struct.md_req** %3, align 8
  %81 = getelementptr inbounds %struct.md_req, %struct.md_req* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.md_s*, %struct.md_s** %4, align 8
  %84 = getelementptr inbounds %struct.md_s, %struct.md_s* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @strlen(i32 %85)
  %87 = add nsw i64 %86, 1
  %88 = call i32 @copyout(i32 %79, i32* %82, i64 %87)
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %76, %71, %65
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %56, %14
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local %struct.md_s* @mdfind(i32) #1

declare dso_local i32 @copyout(i32, i32*, i64) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
