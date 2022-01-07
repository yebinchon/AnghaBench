; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_bio_clcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_bio_clcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.buf = type { i32, i32, i64, i64 }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@B_DELWRI = common dso_local global i32 0, align 4
@B_CLUSTEROK = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, i64, i64)* @vfs_bio_clcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_bio_clcheck(%struct.vnode* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buf*, align 8
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.vnode*, %struct.vnode** %6, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call %struct.buf* @gbincore(i32* %13, i64 %14)
  store %struct.buf* %15, %struct.buf** %10, align 8
  %16 = icmp eq %struct.buf* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %68

18:                                               ; preds = %4
  %19 = load %struct.buf*, %struct.buf** %10, align 8
  %20 = load i32, i32* @LK_EXCLUSIVE, align 4
  %21 = load i32, i32* @LK_NOWAIT, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @BUF_LOCK(%struct.buf* %19, i32 %22, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %68

26:                                               ; preds = %18
  %27 = load %struct.buf*, %struct.buf** %10, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @B_DELWRI, align 4
  %31 = load i32, i32* @B_CLUSTEROK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @B_INVAL, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  %36 = load i32, i32* @B_DELWRI, align 4
  %37 = load i32, i32* @B_CLUSTEROK, align 4
  %38 = or i32 %36, %37
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %64

41:                                               ; preds = %26
  %42 = load %struct.buf*, %struct.buf** %10, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %64

48:                                               ; preds = %41
  %49 = load %struct.buf*, %struct.buf** %10, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.buf*, %struct.buf** %10, align 8
  %53 = getelementptr inbounds %struct.buf, %struct.buf* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.buf*, %struct.buf** %10, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %62, %56, %48
  br label %64

64:                                               ; preds = %63, %47, %40
  %65 = load %struct.buf*, %struct.buf** %10, align 8
  %66 = call i32 @BUF_UNLOCK(%struct.buf* %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %25, %17
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.buf* @gbincore(i32*, i64) #1

declare dso_local i64 @BUF_LOCK(%struct.buf*, i32, i32*) #1

declare dso_local i32 @BUF_UNLOCK(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
