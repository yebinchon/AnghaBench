; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufkva_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufkva_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i64, i64 }

@buffer_arena = common dso_local global i32 0, align 4
@bufkvaspace = common dso_local global i32 0, align 4
@buffreekvacnt = common dso_local global i32 0, align 4
@unmapped_buf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @bufkva_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufkva_free(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %3 = load %struct.buf*, %struct.buf** %2, align 8
  %4 = getelementptr inbounds %struct.buf, %struct.buf* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  %9 = load i32, i32* @buffer_arena, align 4
  %10 = load %struct.buf*, %struct.buf** %2, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.buf*, %struct.buf** %2, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @vmem_free(i32 %9, i32 %13, i32 %16)
  %18 = load i32, i32* @bufkvaspace, align 4
  %19 = load %struct.buf*, %struct.buf** %2, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 0, %21
  %23 = call i32 @counter_u64_add(i32 %18, i32 %22)
  %24 = load i32, i32* @buffreekvacnt, align 4
  %25 = call i32 @counter_u64_add(i32 %24, i32 1)
  %26 = load i64, i64* @unmapped_buf, align 8
  %27 = load %struct.buf*, %struct.buf** %2, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.buf*, %struct.buf** %2, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 2
  store i64 %26, i64* %30, align 8
  %31 = load %struct.buf*, %struct.buf** %2, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @vmem_free(i32, i32, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
