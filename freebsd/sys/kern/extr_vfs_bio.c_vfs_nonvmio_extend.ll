; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_nonvmio_extend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_nonvmio_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32*, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@bufmallocspace = common dso_local global i64 0, align 8
@maxbufmallocspace = common dso_local global i64 0, align 8
@M_BIOBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@B_MALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i32)* @vfs_nonvmio_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_nonvmio_extend(%struct.buf* %0, i32 %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.buf*, %struct.buf** %3, align 8
  %8 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sdiv i32 %13, 2
  %15 = icmp sle i32 %12, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load i64, i64* @bufmallocspace, align 8
  %18 = load i64, i64* @maxbufmallocspace, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @M_BIOBUF, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call i32* @malloc(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.buf*, %struct.buf** %3, align 8
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load i32, i32* @B_MALLOC, align 4
  %28 = load %struct.buf*, %struct.buf** %3, align 8
  %29 = getelementptr inbounds %struct.buf, %struct.buf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.buf*, %struct.buf** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @bufmallocadjust(%struct.buf* %32, i32 %33)
  br label %99

35:                                               ; preds = %16, %11, %2
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %36 = load %struct.buf*, %struct.buf** %3, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @B_MALLOC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %35
  %43 = load %struct.buf*, %struct.buf** %3, align 8
  %44 = getelementptr inbounds %struct.buf, %struct.buf* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %5, align 8
  %46 = load %struct.buf*, %struct.buf** %3, align 8
  %47 = getelementptr inbounds %struct.buf, %struct.buf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  %49 = load %struct.buf*, %struct.buf** %3, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.buf*, %struct.buf** %3, align 8
  %53 = getelementptr inbounds %struct.buf, %struct.buf* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.buf*, %struct.buf** %3, align 8
  %55 = call i32 @bufmallocadjust(%struct.buf* %54, i32 0)
  %56 = load i32, i32* @B_MALLOC, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.buf*, %struct.buf** %3, align 8
  %59 = getelementptr inbounds %struct.buf, %struct.buf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @round_page(i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %42, %35
  %65 = load %struct.buf*, %struct.buf** %3, align 8
  %66 = load %struct.buf*, %struct.buf** %3, align 8
  %67 = getelementptr inbounds %struct.buf, %struct.buf* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = ptrtoint i32* %68 to i64
  %70 = load %struct.buf*, %struct.buf** %3, align 8
  %71 = getelementptr inbounds %struct.buf, %struct.buf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %69, %73
  %75 = load %struct.buf*, %struct.buf** %3, align 8
  %76 = getelementptr inbounds %struct.buf, %struct.buf* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = ptrtoint i32* %77 to i64
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = call i32 @vm_hold_load_pages(%struct.buf* %65, i64 %74, i64 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %64
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.buf*, %struct.buf** %3, align 8
  %88 = getelementptr inbounds %struct.buf, %struct.buf* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @bcopy(i32* %86, i32* %89, i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* @M_BIOBUF, align 4
  %94 = call i32 @free(i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %85, %64
  %96 = load %struct.buf*, %struct.buf** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @bufspace_adjust(%struct.buf* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %20
  ret void
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @bufmallocadjust(%struct.buf*, i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @vm_hold_load_pages(%struct.buf*, i64, i64) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @bufspace_adjust(%struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
