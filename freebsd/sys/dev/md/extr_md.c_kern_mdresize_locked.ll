; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_kern_mdresize_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_kern_mdresize_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_req = type { i32, i64, i32 }
%struct.md_s = type { i64, i64, i32 }

@md_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@MD_FORCE = common dso_local global i32 0, align 4
@MD_RESERVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_req*)* @kern_mdresize_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_mdresize_locked(%struct.md_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.md_req*, align 8
  %4 = alloca %struct.md_s*, align 8
  store %struct.md_req* %0, %struct.md_req** %3, align 8
  %5 = load i32, i32* @SA_XLOCKED, align 4
  %6 = call i32 @sx_assert(i32* @md_sx, i32 %5)
  %7 = load %struct.md_req*, %struct.md_req** %3, align 8
  %8 = getelementptr inbounds %struct.md_req, %struct.md_req* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MD_FORCE, align 4
  %11 = load i32, i32* @MD_RESERVE, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load %struct.md_req*, %struct.md_req** %3, align 8
  %20 = getelementptr inbounds %struct.md_req, %struct.md_req* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.md_s* @mdfind(i32 %21)
  store %struct.md_s* %22, %struct.md_s** %4, align 8
  %23 = load %struct.md_s*, %struct.md_s** %4, align 8
  %24 = icmp eq %struct.md_s* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOENT, align 4
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %18
  %28 = load %struct.md_req*, %struct.md_req** %3, align 8
  %29 = getelementptr inbounds %struct.md_req, %struct.md_req* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.md_s*, %struct.md_s** %4, align 8
  %32 = getelementptr inbounds %struct.md_s, %struct.md_s* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %2, align 4
  br label %65

37:                                               ; preds = %27
  %38 = load %struct.md_req*, %struct.md_req** %3, align 8
  %39 = getelementptr inbounds %struct.md_req, %struct.md_req* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.md_s*, %struct.md_s** %4, align 8
  %42 = getelementptr inbounds %struct.md_s, %struct.md_s* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = load %struct.md_s*, %struct.md_s** %4, align 8
  %47 = getelementptr inbounds %struct.md_s, %struct.md_s* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MD_FORCE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %45
  %53 = load %struct.md_req*, %struct.md_req** %3, align 8
  %54 = getelementptr inbounds %struct.md_req, %struct.md_req* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MD_FORCE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @EBUSY, align 4
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %52, %45, %37
  %62 = load %struct.md_s*, %struct.md_s** %4, align 8
  %63 = load %struct.md_req*, %struct.md_req** %3, align 8
  %64 = call i32 @mdresize(%struct.md_s* %62, %struct.md_req* %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %59, %35, %25, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local %struct.md_s* @mdfind(i32) #1

declare dso_local i32 @mdresize(%struct.md_s*, %struct.md_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
