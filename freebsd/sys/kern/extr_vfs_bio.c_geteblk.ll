; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_geteblk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_geteblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.buf = type { i32 }

@BKVAMASK = common dso_local global i32 0, align 4
@GB_NOWAIT_BD = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@TDP_BUFNEED = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buf* @geteblk(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BKVAMASK, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @BKVAMASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %32, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.buf* @getnewbuf(i32* null, i32 0, i32 0, i32 %15, i32 %16)
  store %struct.buf* %17, %struct.buf** %6, align 8
  %18 = icmp eq %struct.buf* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GB_NOWAIT_BD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TDP_BUFNEED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store %struct.buf* null, %struct.buf** %3, align 8
  br label %47

32:                                               ; preds = %24, %19
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.buf*, %struct.buf** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @allocbuf(%struct.buf* %34, i32 %35)
  %37 = load %struct.buf*, %struct.buf** %6, align 8
  %38 = call i32 @bufdomain(%struct.buf* %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @bufspace_release(i32 %38, i32 %39)
  %41 = load i32, i32* @B_INVAL, align 4
  %42 = load %struct.buf*, %struct.buf** %6, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.buf*, %struct.buf** %6, align 8
  store %struct.buf* %46, %struct.buf** %3, align 8
  br label %47

47:                                               ; preds = %33, %31
  %48 = load %struct.buf*, %struct.buf** %3, align 8
  ret %struct.buf* %48
}

declare dso_local %struct.buf* @getnewbuf(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @allocbuf(%struct.buf*, i32) #1

declare dso_local i32 @bufspace_release(i32, i32) #1

declare dso_local i32 @bufdomain(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
