; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_kern_mddetach_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_kern_mddetach_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.md_req = type { i64, i32, i32 }
%struct.md_s = type { i64, i32 }

@md_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@MD_FORCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.md_req*)* @kern_mddetach_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_mddetach_locked(%struct.thread* %0, %struct.md_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.md_req*, align 8
  %6 = alloca %struct.md_s*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.md_req* %1, %struct.md_req** %5, align 8
  %7 = load i32, i32* @SA_XLOCKED, align 4
  %8 = call i32 @sx_assert(i32* @md_sx, i32 %7)
  %9 = load %struct.md_req*, %struct.md_req** %5, align 8
  %10 = getelementptr inbounds %struct.md_req, %struct.md_req* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.md_req*, %struct.md_req** %5, align 8
  %15 = getelementptr inbounds %struct.md_req, %struct.md_req* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MD_FORCE, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13, %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %13
  %24 = load %struct.md_req*, %struct.md_req** %5, align 8
  %25 = getelementptr inbounds %struct.md_req, %struct.md_req* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.md_s* @mdfind(i32 %26)
  store %struct.md_s* %27, %struct.md_s** %6, align 8
  %28 = load %struct.md_s*, %struct.md_s** %6, align 8
  %29 = icmp eq %struct.md_s* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %23
  %33 = load %struct.md_s*, %struct.md_s** %6, align 8
  %34 = getelementptr inbounds %struct.md_s, %struct.md_s* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.md_s*, %struct.md_s** %6, align 8
  %39 = getelementptr inbounds %struct.md_s, %struct.md_s* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MD_FORCE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %37
  %45 = load %struct.md_req*, %struct.md_req** %5, align 8
  %46 = getelementptr inbounds %struct.md_req, %struct.md_req* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MD_FORCE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @EBUSY, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %44, %37, %32
  %54 = load %struct.md_s*, %struct.md_s** %6, align 8
  %55 = load %struct.thread*, %struct.thread** %4, align 8
  %56 = call i32 @mddestroy(%struct.md_s* %54, %struct.thread* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %51, %30, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local %struct.md_s* @mdfind(i32) #1

declare dso_local i32 @mddestroy(%struct.md_s*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
