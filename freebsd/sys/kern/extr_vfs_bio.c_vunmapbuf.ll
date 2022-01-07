; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vunmapbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vunmapbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i64, i32 }

@unmapped_buf = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vunmapbuf(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %2, align 8
  %4 = load %struct.buf*, %struct.buf** %2, align 8
  %5 = getelementptr inbounds %struct.buf, %struct.buf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.buf*, %struct.buf** %2, align 8
  %8 = call i64 @buf_mapped(%struct.buf* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.buf*, %struct.buf** %2, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @trunc_page(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @pmap_qremove(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.buf*, %struct.buf** %2, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @vm_page_unhold_pages(i32 %21, i32 %22)
  %24 = load i64, i64* @unmapped_buf, align 8
  %25 = load %struct.buf*, %struct.buf** %2, align 8
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  ret void
}

declare dso_local i64 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @pmap_qremove(i32, i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @vm_page_unhold_pages(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
