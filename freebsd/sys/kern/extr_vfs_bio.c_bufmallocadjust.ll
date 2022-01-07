; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufmallocadjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufmallocadjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }

@B_MALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"bufmallocadjust: non-malloc buf %p\00", align 1
@bufmallocspace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i32)* @bufmallocadjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufmallocadjust(%struct.buf* %0, i32 %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.buf*, %struct.buf** %3, align 8
  %7 = getelementptr inbounds %struct.buf, %struct.buf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @B_MALLOC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.buf*, %struct.buf** %3, align 8
  %14 = bitcast %struct.buf* %13 to i8*
  %15 = call i32 @KASSERT(i32 %12, i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.buf*, %struct.buf** %3, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @atomic_subtract_long(i32* @bufmallocspace, i32 %25)
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @atomic_add_long(i32* @bufmallocspace, i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.buf*, %struct.buf** %3, align 8
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_subtract_long(i32*, i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
